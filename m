Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LXOPNd8mRGqxpgoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 22:28:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779416E7D05
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 22:28:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=Ilb8hWQh;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143E010E252;
	Tue, 30 Jun 2026 20:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o16.zoho.com (sender4-op-o16.zoho.com
 [136.143.188.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E2710E257
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2026 20:28:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782851292; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=cWblMJ3LN8L/jqPY3koYo2Ac9S/8GDdqjvl7EwONsJo0SMEg2Y0ZmaDHL7lRCD6bq0aBrvTiOCQ2Vys8ZtQceMfY3j36Ama6XpUqF5/bmwZFjw6HM470wMO/XmOAIVi1MOh+Y+wjZW1X+iMUDm9mMaOeZhZvq7nGDvZ8/Rbtgg0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782851292;
 h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=/xxStwIF61bn3ZqA6+M8xNVE8MJdolxYpTE31ogRu80=; 
 b=YSXqLsWRUAp0gG5ONv4SOCp3B40nY3GH15P2KX8EpVt2HeV3o4dt5XDZyGHcSjGrb+REYoXl8BjH5K5mr0gtmqNkcw2okl3jH/V4ZA1qDVIFtT97FmuoyeevVzfugu2G0AwK7oFmAKHaV/apn7dUB5GJzKpWeve2z6UwYNCpKHA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782851292; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To:Cc;
 bh=/xxStwIF61bn3ZqA6+M8xNVE8MJdolxYpTE31ogRu80=;
 b=Ilb8hWQh+ug98IbGVlc0NWn2BDvm7pWgsJ8F+lpwtMIIVPSk1r2XSvNDOsGM4fRE
 uH6dpxfo9r9Pucj6HtJPt7BjnQi1NbNWTl/MVjWhk6PXHZuRb061Kb6ObUU5gkQa6bt
 2oJuFTaTiWHk2LxsE4IGa1Ag1ECSGDs2Ru/7zMWA=
Received: by mx.zohomail.com with SMTPS id 1782851290679259.4655937109816;
 Tue, 30 Jun 2026 13:28:10 -0700 (PDT)
Message-ID: <1fc9529f0130a9a37d712f894b097fdd4ebd4c6d.camel@collabora.com>
Subject: Reminder: Call for Proposals closing soon for XDC 2026!
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2026 16:28:09 -0400
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,x.org:url,lists.freedesktop.org:from_smtp];
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
X-Rspamd-Queue-Id: 779416E7D05

Hello!

Reminder - The deadline for submissions for XDC 2026 is this coming
Friday, 3 July 2026.

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
