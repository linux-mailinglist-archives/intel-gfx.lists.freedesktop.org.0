Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A86444F00
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 07:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5F96E111;
	Thu,  4 Nov 2021 06:42:12 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B806E03C;
 Thu,  4 Nov 2021 06:42:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="317858310"
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="317858310"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 23:42:10 -0700
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="501408502"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.185])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 23:42:09 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1miWQf-00031m-W2; Thu, 04 Nov 2021 08:40:53 +0200
Date: Thu, 4 Nov 2021 08:40:53 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <YYOAdYfoH6mu3oMU@platvala-desk.ger.corp.intel.com>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-5-John.C.Harrison@Intel.com>
 <20211102233442.GA16356@jons-linux-dev-box>
 <4adc8d9a-8393-2774-2c67-a93083240795@intel.com>
 <YYJYHYT1YrwVikLo@platvala-desk.ger.corp.intel.com>
 <f859ebab-8b3a-ef1e-3387-33808282e420@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f859ebab-8b3a-ef1e-3387-33808282e420@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/8] tests/i915/gem_exec_capture: Use
 contexts and engines properly
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 03, 2021 at 11:49:47AM -0700, John Harrison wrote:
> On 11/3/2021 02:36, Petri Latvala wrote:
> > On Tue, Nov 02, 2021 at 06:45:38PM -0700, John Harrison wrote:
> > > On 11/2/2021 16:34, Matthew Brost wrote:
> > > > On Thu, Oct 21, 2021 at 04:40:40PM -0700, John.C.Harrison@Intel.com wrote:
> > > > > From: John Harrison <John.C.Harrison@Intel.com>
> > > > > 
> > > > > Some of the capture tests were using explicit contexts, some not. Some
> > > > > were poking the per engine pre-emption timeout, some not. This would
> > > > > lead to sporadic failures due to random timeouts, contexts being
> > > > > banned depending upon how many subtests were run and/or how many
> > > > > engines a given platform has, and other such failures.
> > > > > 
> > > > > So, update all tests to be conistent.
> > > > > 
> > > > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > > > ---
> > > > >    tests/i915/gem_exec_capture.c | 80 +++++++++++++++++++++++++----------
> > > > >    1 file changed, 58 insertions(+), 22 deletions(-)
> > > > > 
> > > > > diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> > > > > index c85c198f7..e373d24ed 100644
> > > > > --- a/tests/i915/gem_exec_capture.c
> > > > > +++ b/tests/i915/gem_exec_capture.c
> > > > > @@ -204,8 +204,19 @@ static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
> > > > >    	return blobs;
> > > > >    }
> > > > > +static void configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
> > > > > +{
> > > > > +	/* Ensure fast hang detection */
> > > > > +	gem_engine_property_printf(fd, e->name, "preempt_timeout_ms", "%d", 250);
> > > > > +	gem_engine_property_printf(fd, e->name, "heartbeat_interval_ms", "%d", 500);
> > > > #define for 250, 500?
> > > Is there any point? There is no special reason for the values other than
> > > small enough to be fast and long enough to not be too small to be usable. So
> > > there isn't really any particular name to give them beyond
> > > 'SHORT_PREEMPT_TIMEOUT' or some such. And the whole point of the helper
> > > function is that the values are programmed in one place only and not used
> > > anywhere else. So there is no worry about repetition of magic numbers.
> > In about one year everyone has forgotten this explanation and will
> > wonder if it's related to some in-kernel behaviour or if there's some
> > other reason these values have been chosen.
> > 
> > So at least a comment why the values are these, please.
> There is a comment already. Not sure what more can be added that is
> meaningful other than changing it to "Ensure fast hang detection by picking
> some random numbers out of the air that seem to be vaguely plausible".

Fair enough.


-- 
Petri Latvala
