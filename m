Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BaQQNCJMOWqsqAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 16:52:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB826B07B7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 16:52:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=cRL7N3F4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D8C10E72C;
	Mon, 22 Jun 2026 14:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o16.zoho.com (sender4-op-o16.zoho.com
 [136.143.188.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848D510E72C
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2026 14:52:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782139933; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=cGtEA7GBY9F2wlPq+KhKKp8Pil1s6SCKN5dPvsn8LVDVnbqBQLgTYuKaQYy+b9zV74ovWyd6irKH9PoxZ1EVe4/aOcDcLqzXUByabi4u8eVprWVlS/BG+1/ZyY0InNpAC2GKZrds+BA3bDn5jHBv1436aOJPBfYIVlXn7Ptgzok=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782139933;
 h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=63C3hkJcUAjLx1Wo5SqhN4nguOHicwdTIcrGRX6qKsE=; 
 b=jQBpQM4xYNES21cnqQSZLdkT7ITXJF2RhjaiZQkAQ6w9tvd/aSiTWdSZMiVjIHl3BmPI5oUVDvCJT3LruLyxnxU/DlH32EK/xuNgbsHneSrVC5TA2Ubreade8hi9N6gGy44jBw8RJQO52BkbtWfdipuH3nnYfv9j9AUiJSQsf4E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782139933; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To:Cc;
 bh=63C3hkJcUAjLx1Wo5SqhN4nguOHicwdTIcrGRX6qKsE=;
 b=cRL7N3F4DTtF5AWek8KGrwvXtjKivdBNM4d2SQgPQkAuYtNwZsKfZmivOMWQ+H4I
 CQPFVAJ9OFGmACC0nTEYTfBupq6lRbjcvVFenN5KyEzilkdhyqfqTYcUTTI78WEgFkG
 NVfTk6RjItohqbKGXBqgS0ogbLCgVCWM5a3R7exM=
Received: by mx.zohomail.com with SMTPS id 1782139931107957.8905132663732;
 Mon, 22 Jun 2026 07:52:11 -0700 (PDT)
Message-ID: <cb2cc9c9b1263b48b8347424f3f9c534dda9eb14.camel@collabora.com>
Subject: Reminder: Call for Proposals open for XDC 2026
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2026 10:52:09 -0400
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44app2) 
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[freedesktop.org:url,collabora.com:dkim,collabora.com:mid,collabora.com:from_mime,x.org:url];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mark.filion@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EB826B07B7

Hello!

Reminder - The CfP is now open for talks, workshops and demos at XDC
2026. The deadline for submissions is Friday, 3 July 2026.

    https://xdc2026.x.org

While any serious proposal will be gratefully considered, topics of
interest to X.Org and freedesktop.org developers are encouraged. The
program focus is on new development, ongoing challenges and anything
else that will spark discussions among attendees in the hallway track.

We are open to talks across all layers of the graphics stack, from the
kernel to desktop environments / graphical applications and about how
to make things better for the developers who build them. Head to the
CfP page to learn more!
  =20
As usual, the conference is free of charge and open to the general
public. If you plan on attending, please make sure to register as early
as possible!

Best,

Mark
