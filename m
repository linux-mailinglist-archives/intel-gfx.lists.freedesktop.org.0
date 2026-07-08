Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J87gDPDRTWpF+gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 06:28:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3B672197A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 06:28:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=bombadil.20210309 header.b=b7v6lEM4;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=infradead.org (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C5A10E4BA;
	Wed,  8 Jul 2026 04:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626A410E4BA;
 Wed,  8 Jul 2026 04:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=J5KYkoVlChk5FZYYk9M3NMB8dnleaZ2GYxmr408Jaic=; b=b7v6lEM4nKC6cjUM3J/T5KHT4E
 /wUBtjYn5k0byZ5dtB4jw0mGx1uuJ1v6JBvT1Pf4QPfOJawiygW26T06u1H/K966a7r0AU+/5lBhR
 +kFqMNUy8ilvAb8w0OqtFc6mYjjWIY+dyyM33ZG8Xh5t7hwSSvkciSxRovOnzAlxmAXzZpTBz58mZ
 wsKjXOLq5tNgi+IpbfzGi8exXFpKiVUFQG3fm/2tQRA4j77ZBX3ZzeEqXarpldWfmCcKUZ/Y3mo7a
 Uy33MLFnUouLFI5ffSnCViW+Lloa4u7SENAAaJe4VgtH18WfiG/NXgfZXB3Bw/aFTN29ZZ1A1iXTM
 Fsp+NxDg==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
 id 1whJta-0000000GJuu-0pTr; Wed, 08 Jul 2026 04:28:26 +0000
Message-ID: <c248c4e8-0dc6-4c9e-a7e8-1c00ba0f1453@infradead.org>
Date: Tue, 7 Jul 2026 21:28:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Documentation: xe_drm: fix chars used for subsection
To: Rafael Passos <rafael@rcpassos.me>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 skhan@linuxfoundation.org, Intel-xe <intel-xe-bounces@lists.freedesktop.org>
References: <20260621030114.963405-1-rafael@rcpassos.me>
 <1a20e4bf-fd7f-453e-b7a8-c7feb0b077c6@infradead.org>
 <DJL413GMZH5Q.2S11VUVHGLLVF@rcpassos.me>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <DJL413GMZH5Q.2S11VUVHGLLVF@rcpassos.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:from_mime,infradead.org:email,infradead.org:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA3B672197A



On 6/28/26 5:34 PM, Rafael Passos wrote:
> Hi,
> 
> I just checked, and this issue is still present.
> Since the merge window just closed, I think it's a good time
> to send a ping :)
> 
> On Sun Jun 21, 2026 at 1:07 AM -03, Randy Dunlap wrote:
>> On 6/20/26 8:01 PM, Rafael Passos wrote:
>>> and the page title is defined the.
>>
>>                         defined there.
> 
> Should I send a v3 of this patch fixing this minor typo ?
> 
> I see the original email did not show up in Lore (just Randy's response).
> Should resend in cases like this ? In this case, while at it, just do a v3?
> 
>> LGTM. Thanks.
>>
>> Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
>> Tested-by: Randy Dunlap <rdunlap@infradead.org>
> 
> Also, if I were to send a new version (changing only the commit message),
> and the previous had Review/Tested tags, should I carry them in the new version?
> Or just send it as is?

Leave the tags there.

-- 
~Randy

