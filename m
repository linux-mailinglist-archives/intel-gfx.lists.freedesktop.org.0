Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kAasN9jjIWoVQQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 22:45:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B68643738
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 22:45:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=C5V8CB1X;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F79A11308C;
	Thu,  4 Jun 2026 20:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 902 seconds by postgrey-1.36 at gabe;
 Thu, 04 Jun 2026 20:45:09 UTC
Received: from sender4-op-o16.zoho.com (sender4-op-o16.zoho.com
 [136.143.188.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23699112C5F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2026 20:45:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1780605005; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=JZdGWmlFBZnXQSDwfWuzhQvVRwYB8jg3DdoZzURuA5KLAgw+aeB1Nmc/Mzf7VQVUKy5txEECegc/qbTk//sH5zLApEH//xmjIFWZQZAzxxQ8+Ewy3UMlv/aK2rVYYKF2yAjKXFYD3s792B00Jq8t6M9VDRwulolF4/FCIP/n954=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1780605005;
 h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=muC6rawBX3CykhRdzS4yBFWa650rEAb1z3ELNMgRXrs=; 
 b=gWLeIQxZhian8QW1tUI6rme/5N9CpCORl8xiRZSOVIQVmj8OSrXXTXn1LhSRCDpCT3by9z/2rufJsp1B+Ia3pWTCvwRZASMXyujbiztJ0WYJIJao9o5EwZCgTzzW4dsYQmw5q1pPQrM9zL0+XWhiG7uW38PvUpq2OKS1vpLy9GM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1780605005; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To:Cc;
 bh=muC6rawBX3CykhRdzS4yBFWa650rEAb1z3ELNMgRXrs=;
 b=C5V8CB1XbdIVEyWhkeBz3cMnoeRRRfXuOphjt3ObEL/AAylvYQnSqJFZrX2/sgZn
 ZsVOGndGFA0N9okXHh4WkHd+JfQtHyGR8r+1yiGYohSJHUDgd+zj4YHRqQknk2KdMRx
 B3dhHsgLKvWkpwvxfaQUWCGOfcRTms5P0oiQdm7Q=
Received: by mx.zohomail.com with SMTPS id 1780605002990493.52054818932106;
 Thu, 4 Jun 2026 13:30:02 -0700 (PDT)
Message-ID: <aefe10ad84cd5c5171f623fe61bc30de2dc4d372.camel@collabora.com>
Subject: XDC 2026: Registration & Call for Proposals now open!
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 04 Jun 2026 16:30:02 -0400
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44app2) 
MIME-Version: 1.0
X-ZohoMailClient: External
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[freedesktop.org:url,collabora.com:mid,collabora.com:from_mime,collabora.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,floss.social:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mark.filion@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 94B68643738

Hello!

Registration and Call for Proposals are now open for XDC 2026,
taking place at the Daniels Spectrum in Toronto, Canada,
September 28=E2=80=9330, organized by Arm.

    https://xdc2026.x.org
=20
As usual, the conference is free of charge and open to the general
public. If you plan on attending, please make sure to register as early
as possible:

    https://indico.freedesktop.org/event/12/registrations/

In addition to registration, the CfP is now open for talks, demos, and
workshops at XDC 2026. While any serious proposal will be carefully
considered, topics of interest to X.Org and freedesktop.org developers
are encouraged. The program focus is on new development, ongoing
challenges and anything else that will spark discussions among
attendees in the hallway track.

We are open to talks across all layers of the graphics stack, from the
kernel to desktop environments / graphical applications and about how
to make things better for the developers who build them. Head to the
CfP page to learn more:

    https://indico.freedesktop.org/event/12/abstracts/

The deadline for submissions Friday, July 3, 2026.

We are looking forward to seeing you in Toronto! If you have any
questions, please email the organizer (charlie.dixon at arm.com), and
CC=20
the X.Org board (board at foundation.x.org).

Don't forget, you can follow us on Mastodon for all the latest
updates and to stay connected:

    https://floss.social/@XOrgDevConf

Best,

Mark
