Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830B5199A2D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 17:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF5A899EA;
	Tue, 31 Mar 2020 15:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57770899EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 15:48:02 +0000 (UTC)
IronPort-SDR: r0txrbq9+4Y0rNhh0CXK5bwCxtQwnx8E8besW7+jTR6aU8IsmuBbmd6vRPmIcihIEZWKoJoFUt
 TZK2eNvJ9XLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 08:48:01 -0700
IronPort-SDR: piR/uiVfxKIbuYmT7FN/3AmzHr4QPMhvCpAURkaBL/nL9fCOCsCyZTDO+EkIduFJ/AuETZdOeH
 ij8julJJYqFg==
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="395538904"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 08:47:59 -0700
Date: Tue, 31 Mar 2020 18:47:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200331154755.GB721@ideak-desk.fi.intel.com>
References: <20200324201429.29153-1-jose.souza@intel.com>
 <20200328095739.GA12322@ideak-desk.fi.intel.com>
 <93eedc4c4de3b1e990fd93f2444e9f8eeaba8caf.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93eedc4c4de3b1e990fd93f2444e9f8eeaba8caf.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/i915/tc/tgl: Implement TCCOLD
 sequences
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
Reply-To: imre.deak@intel.com
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 30, 2020 at 11:23:24PM +0300, Souza, Jose wrote:
> On Sat, 2020-03-28 at 11:57 +0200, Imre Deak wrote:
> [...]
> > > +		if (ret == 0) {
> > > +			if (block &&
> > > +			    low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED)
> > > +				ret = -EIO;
> > > +			else
> > > +				break;
> > > +		}
> > > +
> > > +		if (ret != -EAGAIN)
> > > +			tries++;
> > > +	} while (tries < 3);
> > > +
> > > +	return ret;
> > 
> > The return value isn't used and I think we can't do much about it, so
> > just make the function a void type and warn about a timeout?
> 
> The return is usefull to have just one warm message between ICL and
> TGL.

Ah, in tc_cold_request(), but then we won't use the return value from
that.

> > [...]
> > ICL, I think we need a tc_cold_off power well/domain. The tc_cold_off
> > power ref would be get/put around the FIA access sequence here
> > (intel_tc_port_reset_mode()) and would be held whenever we hold an
> > AUX power ref.
> 
> For TGL the tc_cold_off power well would work and would be pretty easy
> to implement but for ICL I'm not sure.
> 
> For ICL, because of preemptions we need to get the aux power of the TC
> port before request PCODE to exit TC cold.
> 
> So a single tc_cold_off would need to depend into all aux's?
> Even if we have one tc_cold_off per TC DDI, if we make it depend into aux
> we would get aux power enable timeouts. So we would need to enable aux
> power inside of the tc_cold_off enable function and the aux enable call
> would need to not check the HW status.
> 
> Thoughts?

On ICL we wouldn't have a power domain/well for tc-cold, since the PCODE
request for it has anyway the strange timeout semantics, without the
proper block/unblock interface like TGL has.

So for ICL you'd need to get an AUX power domain ref here, and the AUX
power well enable hook would do the

	enable AUX
	block tc-cold
	wait for AUX ACK

sequence in the AUX power well's enable hook (for legacy ports).

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
