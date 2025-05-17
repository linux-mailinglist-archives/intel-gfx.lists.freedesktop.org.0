Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA34ABA934
	for <lists+intel-gfx@lfdr.de>; Sat, 17 May 2025 11:45:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346D010E182;
	Sat, 17 May 2025 09:45:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=mark.filion@collabora.com header.b="k+8NPRTQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o16.zoho.com (sender4-op-o16.zoho.com
 [136.143.188.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39D310E182
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 May 2025 09:45:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1747475105; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=cLGq15gv57dBvFYvKHaFlni0ksLC4DkugQ3oGWZl6CT1wyfGdGH6iPVCZrV2PacXbbvpXcq3vndIHuvAwuc2gMpaLSMAVxAtCI95U4Vf+NnlwoeY0qgPRr0YWQY+YvTwP4GLxMPn1NpL9zuGpiuN2w1CLmsntXY0i97Ns8qazRk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1747475105;
 h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=EfNdhjNwv68URzi05pPVoURNzDGz+Zv4zZrIBMlUCl8=; 
 b=KyJblIc9KBYVkgRAZKXeYaUi8v0nM+g7PgU4VLJxrtMFn9I3j1B68JrHI4XB4nZ1/6Ladr59Rma1DzC8qOlXgpHWygRxRVWAnNtjXe9yCLt5YksBfUFMUpQcQzXdNxf3I2c4iNgucfXXxtYwPycqn3FQ2KJHLefx6Q2AybttT2o=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1747475105; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:MIME-Version:Message-Id:Reply-To:Cc;
 bh=EfNdhjNwv68URzi05pPVoURNzDGz+Zv4zZrIBMlUCl8=;
 b=k+8NPRTQUgrk9myFOXpeZr8ZT1BetBJf8doqun1DhMa0pJN2+oRTftSBkXLpTybm
 MDPDUOyq9+LLqsv25vwsP79fi9lMpORTpiiyUwMfrRk0/sJzEK16VCccV5p8Lb7L6CW
 +BKSkG8JFRUta+5mzRNyo8YoJBP9aGsh4JC+7w/E=
Received: by mx.zohomail.com with SMTPS id 1747475104742143.36734009810357;
 Sat, 17 May 2025 02:45:04 -0700 (PDT)
Message-ID: <afe9e65b1143e7153495b708c10d77152b6abc6c.camel@collabora.com>
Subject: 2025 X.Org Foundation Election results
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 May 2025 11:45:02 +0200
Content-Type: multipart/alternative; boundary="=-VJxzdHFHw/1lMtf0MY7u"
User-Agent: Evolution 3.56.1 (3.56.1-1.fc42app2) 
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

--=-VJxzdHFHw/1lMtf0MY7u
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

The Board of Directors election concluded at 23:59 UTC on 14 May 2025.
For this election, we had 77 members who could cast a vote. 72 did, so
the turnout was 92.5%. This is the 3rd highest turnout in the last 10
elections, with only 2021 (93.8%) and 2016 (98.8%) being higher. It is
also a 147% increase from last year's turnout (62.9%). Thank you to
everyone who took the time to vote!

In the election of the Directors to the Board of the X.Org Foundation,
the results were that Lyude Paul, Andres Gomez, Arkadiusz Hiler and
Harry Wentland were elected for two year terms.

The old full board is: Erik Faye-Lund, Mark Filion, Neal Gompa,
Arkadiusz Hiler, Christopher Michael, Lyude Paul, and Simon Ser.

The new full board is: Erik Faye-Lund, Mark Filion, Andres Gomez, Neal
Gompa, Arkadiusz Hiler, Lyude Paul, Simon Ser, and Harry Wentland.

Mark Filion, on behalf of the X.Org elections committee

--=-VJxzdHFHw/1lMtf0MY7u
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0,=
 0, 0); font-family: &quot;Adwaita Sans&quot;; font-style: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: st=
art; text-indent: 0px; text-transform: none; white-space: normal; word-spac=
ing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-str=
oke-width: 0px; text-decoration: none;">Hello all,</div><div style=3D"caret=
-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Adwaita Sans&=
quot;; font-style: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-color: r=
gba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none;">=
<br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); fon=
t-family: &quot;Adwaita Sans&quot;; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -=
webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: =
0px; text-decoration: none;">The Board of Directors election concluded at 2=
3:59 UTC on 14 May 2025. For this election, we had 77 members who could cas=
t a vote. 72 did, so the turnout was 92.5%. This is the 3rd highest turnout=
 in the last 10 elections, with only 2021 (93.8%) and 2016 (98.8%) being hi=
gher. It is also a 147% increase from last year's turnout (62.9%). Thank yo=
u to everyone who took the time to vote!</div><div style=3D"caret-color: rg=
b(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Adwaita Sans&quot;; fon=
t-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, =
0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none;"><br></div>=
<div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: =
&quot;Adwaita Sans&quot;; font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap=
-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-=
decoration: none;">In the election of the Directors to the Board of the X.O=
rg Foundation, the results were that Lyude Paul, Andres Gomez, Arkadiusz Hi=
ler and Harry Wentland were elected for two year terms.</div><div style=3D"=
caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Adwaita =
Sans&quot;; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-col=
or: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: no=
ne;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0)=
; font-family: &quot;Adwaita Sans&quot;; font-style: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0=
px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-wi=
dth: 0px; text-decoration: none;">The old full board is: Erik Faye-Lund, Ma=
rk Filion, Neal Gompa, Arkadiusz Hiler, Christopher Michael, Lyude Paul, an=
d Simon Ser.</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0,=
 0); font-family: &quot;Adwaita Sans&quot;; font-style: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start=
; text-indent: 0px; text-transform: none; white-space: normal; word-spacing=
: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke=
-width: 0px; text-decoration: none;"><br></div><div style=3D"caret-color: r=
gb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Adwaita Sans&quot;; fo=
nt-style: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0,=
 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none;">The new f=
ull board is: Erik Faye-Lund, Mark Filion, Andres Gomez, Neal Gompa, Arkadi=
usz Hiler, Lyude Paul, Simon Ser, and Harry Wentland.</div><div style=3D"ca=
ret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Adwaita Sa=
ns&quot;; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-color=
: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none=
;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); =
font-family: &quot;Adwaita Sans&quot;; font-style: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px=
; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-widt=
h: 0px; text-decoration: none;">Mark Filion, on behalf of the X.Org electio=
ns committee</div><div><span></span></div></body></html>

--=-VJxzdHFHw/1lMtf0MY7u--
