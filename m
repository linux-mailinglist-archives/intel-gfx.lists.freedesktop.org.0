Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D66E4899C8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:24:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC78414B434;
	Mon, 10 Jan 2022 13:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 901 seconds by postgrey-1.36 at gabe;
 Sat, 08 Jan 2022 10:41:22 UTC
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
 [136.143.188.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C0E10EAA7
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 10:41:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1641637565; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=WgwiF0IYgyDlk4sAQxBjW6mUA1+fgjV7K8Cs0jGpFlgK3qSb2txrn6yulsyS1HxdYLVv6cXgoeEwu7eL/BdxJGHE1UEamNfFyYo6+ixo5hnNyUz8xvPiIMnzhtBArfnBt2t62qSImcF8zZ5pa1l2j+QpkCnv6PYzKo7dHaEwB8I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1641637565;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=3oVlywFdC3C3cF00ZwzlVKVn1orvNCqgXAwzOeRwhtk=; 
 b=bIUnhLXdT+toGHXrpaeRpa62UfChA7ZyGTAXuRKE5/OLQnGp9UToBHdO/TBGVGPxN3mE2BfKvsRIlP3oD6wVUstLkWABXvvObSxiZyixqEFPwXyiYmCDt8z+/0c+2wFnZ37cpfq7D4e9M7EILAPrkx8pPxCt96FHBej56bzAEsg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=kodeit.net;
 spf=pass  smtp.mailfrom=admin@kodeit.net;
 dmarc=pass header.from=<admin@kodeit.net>
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=main; d=kodeit.net; 
 h=content-type:mime-version:subject:from:in-reply-to:date:cc:message-id:references:to;
 b=CWYkWfLtdxdoCXumCRIqGv1DkoGnO5qu+roaHH4onYXU1AKzDPUDTIxWSrRSoq4CMFDPtVD5AwZz
 7IKlF5txXinTXysaqfzeimGf7uIcLZ3UeseVyXFC/lyDyIoKQgIK/YdmTk1yt01N3236ccq74ICC
 nRZCPLcOEBCaKfoY+U8=  
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1641637565; 
 s=zoho; d=kodeit.net; i=admin@kodeit.net;
 h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:References:To;
 bh=3oVlywFdC3C3cF00ZwzlVKVn1orvNCqgXAwzOeRwhtk=;
 b=a8F3i5HIfGrVxah1A+HHDqpK6x36WYVJoA5Ca106Vua5o/re9YC0ruEcAMHD2Drk
 Enc57WfDVW9Mt2nKECQ4wOjZ6XIXyPwbKcCxoPYUSqjnUnw3YY0oVuME7BT64x5bxkW
 ju80kGi45gzF8NGshRO98SppkVmRxXyE7x73sdu8=
Received: from smtpclient.apple (70.120.98.38 [70.120.98.38]) by
 mx.zohomail.com with SMTPS id 1641637563409375.69097930732096;
 Sat, 8 Jan 2022 02:26:03 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Aun-Ali Zaidi <admin@kodeit.net>
In-Reply-To: <AC748346-8777-4107-9E7D-526D5854F11B@outlook.com>
Date: Sat, 8 Jan 2022 04:26:00 -0600
Content-Transfer-Encoding: quoted-printable
Message-Id: <D5A25DCE-75BB-404A-9CBC-979B762DD151@kodeit.net>
References: <20220108050812.6303-1-redecorating@protonmail.com>
 <AC748346-8777-4107-9E7D-526D5854F11B@outlook.com>
To: Ashish Arora <ashisharora.linux@outlook.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-ZohoMailClient: External
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Discard large BIOS framebuffers
 causing display corruption.
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
Cc: Orlando Chamberlain <redecorating@protonmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Aditya Garg <gargaditya08@live.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM

=E2=80=94
Aun-Ali Zaidi

> On Jan 8, 2022, at 3:59 AM, Ashish Arora =
<ashisharora.linux@outlook.com> wrote:
>=20
>=20
> I believe I forgot to add Aditya to the conversation. So, I am sending =
the patch as an attachment for those who want to test :)<0001-drm.patch>

