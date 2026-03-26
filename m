Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIFGEF7yxGnv5AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 09:46:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95A9331951
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 09:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6417B10EA0E;
	Thu, 26 Mar 2026 08:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="ibcv62xT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E369510EA0E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 08:46:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 197F840C26;
 Thu, 26 Mar 2026 08:46:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FA30C116C6;
 Thu, 26 Mar 2026 08:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1774514776;
 bh=jRpEdutX9ti8N1xwFcSl90MFJfF5ESk51VrhbGqUPg4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ibcv62xTT/CeNZXsGR/PzlWHPoPaUGi/bq9RjZou40N8+vGLA5Ux7pXNRrNiVmSMy
 Ui3oUn/h81d4MNDXqzbbTGl682mHpSAEEW73MjVMhL1duNCBr1O/dIxxK87BUa3JsS
 otrQmqsslIf5ElTcpQUKutCG4efni7XLxAfXYw/k=
Date: Thu, 26 Mar 2026 09:45:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Yassine Mounir <sosohero200@gmail.com>,
 intel-gfx@lists.freedesktop.org, security@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: AI slop security report against i915 (Was: Re: [PATCH v2]
 drm/i915/gem: Fix UAF race in eb_relocate_vma)
Message-ID: <2026032643-disband-reorder-c0fd@gregkh>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
 <177444763778.66558.14341959485998155867@jlahtine-mobl>
 <acQDZJFtsEtm183A@intel.com>
 <CANq=4mDtmtz5ZFjCCoeAXEWN82J9m8+DLochsNc6BzfwJ6Pdpg@mail.gmail.com>
 <CANq=4mC3+B4akvpp=nr_w1bbnhDwUXx=EzyQtHQpR9DN=ewCMA@mail.gmail.com>
 <acReP5LYxOKCG80B@intel.com>
 <CANq=4mCzoOGCAGZK6KAnCK4iaH+Woy49L=6Y5rCpuNmg_vEneQ@mail.gmail.com>
 <177450809396.10669.10897074578574249353@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177450809396.10669.10897074578574249353@jlahtine-mobl>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [3.19 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:sosohero200@gmail.com,m:security@kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,lists.freedesktop.org,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linuxfoundation.org:dkim]
X-Rspamd-Queue-Id: C95A9331951
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 08:54:53AM +0200, Joonas Lahtinen wrote:
> (+ Adding back security mailing list (where this started) and LKML for them
> to be aware of any further bogus security reports from the author)

Ugh, I was kind of thinking this might be the case based on the original
interactions here, but was willing to give the benifit of the doubt.

Time to go reset the "Days since we recieved AI slop reports" counter
back to 0...

thanks for following through on this.

greg k-h
