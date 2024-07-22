Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7F693914B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 17:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FD510E10E;
	Mon, 22 Jul 2024 15:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="h/8DlGNo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com
 [46.235.227.194])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF80510E10E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 15:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1721660653;
 bh=94V2FOBhQb+tZMxWV3mDiMf6SrdiLsoT8QBihrvghmc=;
 h=Subject:From:To:Date:From;
 b=h/8DlGNoJAvNKTRWeM0RicyfzNnz08wHIsvlCbjG+ZToUhL0upIHYI01g/E44WiFp
 n5nJp86KlKxc4bmhe11B+UCbaVjXDcupNY4aYNTxoOiGI1v5qJ5KgYUMbrNZDb/v4z
 4HuQ32TUo2MjH1qY85DWGJ6Ff/KZs70/RcLqC6BaGg+W5ZQ2GaOUVma/KNu4dmLVlI
 gROSIS0pH1XNiWnn9zIjhlvBmtG42dP9SMJ5rD/JmfMqWZl6m3WfUoSp9u/hhpW2VW
 VBeg+3Z64D4WTfyCeH/5FkkGbw9QAqnBqpjAX/AOPsEmo5pfj22XbxpPVCWVb9dAd2
 6pxGNAHCNG2Lg==
Received: from [100.127.186.53] (cola.collaboradmins.com [195.201.22.229])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: mfilion)
 by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3F02B378001E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 15:04:13 +0000 (UTC)
Message-ID: <6bc3252786ce59df933ed85be42bf78bf3556165.camel@collabora.com>
Subject: Reminder - The Call for Proposals is open for XDC 2024!
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2024 11:04:11 -0400
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3 (3.52.3-1.fc40) 
MIME-Version: 1.0
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

Hello!

Reminder -=C2=A0The CfP is now open for talks, workshops=C2=A0and demos at =
XDC
2024. The deadline for submissions is Monday, 12 August 2024.

https://indico.freedesktop.org/event/6/abstracts/

While any serious proposal will be gratefully=C2=A0considered, topics of
interest to X.Org and freedesktop.org developers are encouraged. The
program focus is on new development, ongoing challenges and anything
else that will spark discussions among attendees in the hallway track.

We are open to talks across all layers of the graphics stack, from the
kernel to desktop environments / graphical applications and about how
to make things better for the developers who build them. Head to the
CfP page to learn more!
=C2=A0=C2=A0=C2=A0
As usual, the conference is free of charge and open to the general
public. If you plan on attending, please make sure to register as early
as possible!

And don't forget, you can follow us on Mastodon for all the latest
updates and to stay connected:

=C2=A0=C2=A0=C2=A0=C2=A0https://floss.social/@XOrgDevConf

Best,

Mark
