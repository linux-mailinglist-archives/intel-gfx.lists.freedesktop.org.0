Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3AE443993
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 00:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344B36E8D9;
	Tue,  2 Nov 2021 23:23:06 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E732B6E839;
 Tue,  2 Nov 2021 23:23:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231238641"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231238641"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:23:04 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="467914082"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:23:04 -0700
Date: Tue, 2 Nov 2021 16:18:31 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20211102231831.GA16278@jons-linux-dev-box>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-3-John.C.Harrison@Intel.com>
 <20211029173905.GA35332@jons-linux-dev-box>
 <98fe41ea-75fc-463c-23fd-25156a975b53@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <98fe41ea-75fc-463c-23fd-25156a975b53@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/8]
 tests/i915/gem_exec_capture: Cope with larger page sizes
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 29, 2021 at 05:32:40PM -0700, John Harrison wrote:
> On 10/29/2021 10:39, Matthew Brost wrote:
> > On Thu, Oct 21, 2021 at 04:40:38PM -0700, John.C.Harrison@Intel.com wrote:
> > > From: John Harrison <John.C.Harrison@Intel.com>
> > > 
> > > At some point, larger than 4KB page sizes were added to the i915
> > > driver. This included adding an informational line to the buffer
> > > entries in error capture logs. However, the error capture test was not
> > > updated to skip this string, thus it would silently abort processing.
> > > 
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > ---
> > >   tests/i915/gem_exec_capture.c | 6 ++++++
> > >   1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> > > index 53649cdb2..47ca64dd6 100644
> > > --- a/tests/i915/gem_exec_capture.c
> > > +++ b/tests/i915/gem_exec_capture.c
> > > @@ -484,6 +484,12 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
> > >   		addr |= strtoul(str + 1, &str, 16);
> > >   		igt_assert(*str++ == '\n');
> > > +		/* gtt_page_sizes = 0x00010000 */
> > > +		if (strncmp(str, "gtt_page_sizes = 0x", 19) == 0) {
> > > +			str += 19 + 8;
> > > +			igt_assert(*str++ == '\n');
> > > +		}
> > Can you explain this logic to me, for the life of me I can't figure out
> > what this doing. That probably warrent's a more detailed comment too.
> It's no different to the rest of the processing that this code was already
> doing.
> 
> if( start_of_current_line == "gtt_page_sizes = 0x") {
>     current_line += strlen(above_string) + strlen(8-digit hex string);
>     assert( next_character_of_current_line == end_of_line);
> }
> 
> I.e. skip over any line that just contains the page size message.
> 

Ok, got it. Not sure I missed that. The magic numbers 19 and 8 where
confusing me but I understand this now.

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> John.
> 
> > 
> > Matt
> > 
> > > +
> > >   		if (!(*str == ':' || *str == '~'))
> > >   			continue;
> > > -- 
> > > 2.25.1
> > > 
> 
