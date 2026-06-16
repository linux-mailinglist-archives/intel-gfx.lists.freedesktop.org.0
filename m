Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iQVdIfMTMWojbQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:14:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE7068D6CA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:14:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9894410E95C;
	Tue, 16 Jun 2026 09:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 555 seconds by postgrey-1.36 at gabe;
 Tue, 16 Jun 2026 09:14:24 UTC
Received: from psionic.psi5.com (psionic.psi5.com [185.187.169.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34A910E95C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2026 09:14:24 +0000 (UTC)
Received: from [IPV6:2400:2410:b120:f200:a1f3:73da:3a04:160d] (unknown
 [IPv6:2400:2410:b120:f200:a1f3:73da:3a04:160d])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by psionic.psi5.com (Postfix) with ESMTPSA id 7D7033F202
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2026 11:05:07 +0200 (CEST)
Message-ID: <3a304a3e-42d0-4123-8013-fd1ca2c7f88d@hogyros.de>
Date: Tue, 16 Jun 2026 18:05:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-gfx@lists.freedesktop.org
Content-Language: en-US
From: Simon Richter <Simon.Richter@hogyros.de>
Subject: Three monitors on HD4000
Content-Type: text/plain; charset=UTF-8; format=flowed
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Simon.Richter@hogyros.de,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DMARC_NA(0.00)[hogyros.de];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FE7068D6CA

Hi,

I just dusted off an old i7-3610QM laptop, which seem to have lost its 
ability to drive two external monitors in addition to the internal 
display at some point in the last years.

Initially, the X server starts fine, and I get a 5740x1080 configuration 
with three outputs, but the last one does not work. Attempting to change 
the order of monitors gives a crtc configuration error.

The hardware has two pixel clock generators and three crtcs, so this 
should be possible as long as both external monitors are using the same 
mode over the same interface, and it used to work in the past.

How would I start debugging this?

    Simon
