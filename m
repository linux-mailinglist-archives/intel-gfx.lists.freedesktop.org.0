Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2367C8925
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 17:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4EB10E00A;
	Fri, 13 Oct 2023 15:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C0F10E00A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 15:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1697212349; x=1697471549;
 bh=TJ2R+MX1q4ctJraNDIWy6sRT+JPuIcg1TTmXm3+EmB0=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=UNgMPwun/j9kkxkWhyi8R4Hs2ZK8T3ezTxw8OguTxhGRQX68UTn/NzwYdX21rlTMs
 DGRJL1aHhR5YGl/wDLNyetdYJMaodsHjE03/iJi1EjBFbamK8Sf4UhhT0zrNaaUpWH
 PBuyAzJTiIWE3uSivonlh4OMc1xcPTEe7w5V7B1qbSlFNJdzzx1pLzClIvtnrngxA/
 6LEAZNCwg113nUASeWT0zOAz1BUeUmHy/TX5/Ycd5g7wNB6v05pPGKCFwhvkAFgf7V
 UA3bATYD3l0ineSC2dUnwjPXSRJMji6tYdfeG807bNhIDxCG6b+9V8PQfW2fRGzIer
 W6md5joA5QBeA==
Date: Fri, 13 Oct 2023 15:52:22 +0000
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Matheus <tateusg@protonmail.com>
Message-ID: <rwW8jogFQ_-nY8-MbhFFMieZM5-n-zr6TOx8ur9zLcC_37KullaFTJwKYmudGNI20Ku6hoxEdSYzWFjPbmJBJ9AKk2lwi7nSPS9D3asHS-o=@protonmail.com>
Feedback-ID: 42233732:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] Buggy graphics on 82G33/G31.
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

https://media.discordapp.com/attachments/697112906457677914/116175375399362=
1505/image.png
Has somebody ever experienced such issue on a 82G33/G31 GPU? This issue hap=
pens on Windows too. It's more aggressive (in the sense it's more prone to =
happen) on Linux, though. Strangely, I've never found reports on this issue=
 in the internet.

Games I've experienced this issue are GTA 3, GTA Vice City, GTA San Andreas=
 and Freelancer. Not all games have this issue.

Switching to modesetting X driver solves the issue, but introduces a new on=
e, lag.

I contacted Intel support, but they said the product reached the end of int=
eractive support.
