Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xgAGCCsPRWqz6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:59:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB9F6EDB9E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:59:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=rcpassos.me header.s=purelymail2 header.b=qB9mfzRC;
	dkim=fail ("headers rsa verify failed") header.d=purelymail.com header.s=purelymail2 header.b=D2WEHFE7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=rcpassos.me (policy=reject)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D20DF10E891;
	Wed,  1 Jul 2026 12:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com
 [34.202.193.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4512510E170
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2026 00:34:59 +0000 (UTC)
DKIM-Signature: a=rsa-sha256;
 b=qB9mfzRCZYvoF9IRkZOjzjyQq8O/0jFLZFA0ucmORMzvxBxRp4K7/N7TLCoJt/cYyGfgDwXkJ/ZN6OU36pNb/Wqm/7kLI1+0lsE0q5csj72EEZSqi4zwPRD6Z+kzZWSeCDWIN6wa2wIgR6gnwCRf8PLT3Zu0uWK5mD1X3xq065sKFPS1OfULohLW291ewJoBDIE1jW+2aObKX3J6njkmUQ4Jge0LI8OphBFanZoSaDhZoK3URIOMkfpxB7mCgCNEf2WeG/T6tWohPPdTRrOBP77TEUmlicuKTNHIJyTnw5wa9Z5+QXge9SsiXUreaNTFJC0vW/DnE1EAMYDLdnudpQ==;
 s=purelymail2; d=rcpassos.me; v=1;
 bh=ZsfCjmQEzgl9BUa5k4KAiMGgZgn3+ETC4EaT4Dw+yFY=;
 h=Received:Date:From:To:Subject; 
DKIM-Signature: a=rsa-sha256;
 b=D2WEHFE7KDUDAgT5dQJ2KVOBUCpPX/X8nLh3fGFXRxTK4KhZN9GKCzbm1/feLbn73x64KYgD2kR/EvbqzEMDdEHXALWVyptRG7M9czRgnr0eLf1UVRhQpSogE8v+EdRzuTuMIoA3sYQ2VbX8C29bkbLT7HUAndC/qGVZwpTSAT7I54M0JikPAoRfG6EfiwHoLhhGiv9qBq/qChOgFxw9T+ulxxODPN4TlBSLSEH/aPCbFGRk3ftGHeSaWr7hAYp/fnMJirWjYj31EmU4ZauF9XZPq9l7zU/iyriSQMCF93Z9pDmWxXCpgLZ2JnlHWy9KYaE8WDXMo79SZVl+Zu0PuQ==;
 s=purelymail2; d=purelymail.com; v=1;
 bh=ZsfCjmQEzgl9BUa5k4KAiMGgZgn3+ETC4EaT4Dw+yFY=;
 h=Feedback-ID:Received:Date:From:To:Subject; 
Feedback-ID: 45355:7809:null:purelymail
X-Pm-Original-To: intel-gfx@lists.freedesktop.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 53992085;
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Mon, 29 Jun 2026 00:34:29 +0000 (UTC)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 28 Jun 2026 21:34:49 -0300
Message-Id: <DJL413GMZH5Q.2S11VUVHGLLVF@rcpassos.me>
From: "Rafael Passos" <rafael@rcpassos.me>
To: "Randy Dunlap" <rdunlap@infradead.org>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] Documentation: xe_drm: fix chars used for subsection
Cc: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <skhan@linuxfoundation.org>, "Intel-xe"
 <intel-xe-bounces@lists.freedesktop.org>, "Rafael Passos"
 <rafael@rcpassos.me>
X-Mailer: aerc 0.21.0
References: <20260621030114.963405-1-rafael@rcpassos.me>
 <1a20e4bf-fd7f-453e-b7a8-c7feb0b077c6@infradead.org>
In-Reply-To: <1a20e4bf-fd7f-453e-b7a8-c7feb0b077c6@infradead.org>
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [3.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[rcpassos.me : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[rcpassos.me:s=purelymail2,purelymail.com:s=purelymail2];
	DATE_IN_PAST(1.00)[60];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[rafael@rcpassos.me,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:rdunlap@infradead.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:intel-xe@lists.freedesktop.org,m:skhan@linuxfoundation.org,m:intel-xe-bounces@lists.freedesktop.org,m:rafael@rcpassos.me,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[rcpassos.me:-,purelymail.com:-];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rafael@rcpassos.me,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CB9F6EDB9E

Hi,

I just checked, and this issue is still present.
Since the merge window just closed, I think it's a good time
to send a ping :)

On Sun Jun 21, 2026 at 1:07 AM -03, Randy Dunlap wrote:
> On 6/20/26 8:01 PM, Rafael Passos wrote:
>> and the page title is defined the.
>
>                         defined there.

Should I send a v3 of this patch fixing this minor typo ?

I see the original email did not show up in Lore (just Randy's response).
Should resend in cases like this ? In this case, while at it, just do a v3?

> LGTM. Thanks.
>
> Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
> Tested-by: Randy Dunlap <rdunlap@infradead.org>

Also, if I were to send a new version (changing only the commit message),
and the previous had Review/Tested tags, should I carry them in the new ver=
sion?
Or just send it as is?


Thanks,

Rafael Passos
