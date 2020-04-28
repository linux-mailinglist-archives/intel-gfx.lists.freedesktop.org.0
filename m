Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E835B1BC772
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34CF06E8C0;
	Tue, 28 Apr 2020 18:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 363 seconds by postgrey-1.36 at gabe;
 Tue, 28 Apr 2020 10:26:20 UTC
Received: from st43p00im-zteg10073501.me.com (st43p00im-zteg10073501.me.com
 [17.58.63.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59EF6E339
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 10:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1588069216;
 bh=U77+LsgnO7U5Y78/cUvzIUb1lW8uQJDtUC4Dnj8vNcA=;
 h=Date:From:To:Message-ID:Subject:Content-Type;
 b=TAbFu95R341G4YSyCo43S8aRSRTbTsrYHCqkcj0svR/adDXhHBzRBcbTmsN83v63E
 xmyhy2mvT3cABgW0fvELbcCrce30grSwuPayytH2X+mOg880KW6JJYz4cJSt59OBrw
 BiOXR6nCUVpdjk1sYTXOAWMkg/YTqCTJQ2UQjJzPNagYyZonudJsLFTExXA69/1Vbl
 hWSB22HKbGKPB0fqk/GXYTmry5Q/HUmP1NPsgQDhIdvd381m8yC9iTyHRbYXdd5K79
 bnvsRLw0vatdhCkf++EE6KAoCoP7laI6eglnlp1zQ00E724x9Ad0VyCItD6GffAMdS
 nwjpjpyD33JRA==
Received: from padd (unknown [5.225.96.152])
 by st43p00im-zteg10073501.me.com (Postfix) with ESMTPSA id D33DCAE0A35
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 10:20:15 +0000 (UTC)
Date: Tue, 28 Apr 2020 12:20:14 +0200
From: =?utf-8?Q?wax=5B0=5D?= <wax0@icloud.com>
To: "=?utf-8?Q?intel-gfx=40lists.freedesktop.org?="
 <intel-gfx@lists.freedesktop.org>
Message-ID: <7569FFF2-65E1-4873-9A1D-324553798203@getmailspring.com>
X-Mailer: Mailspring
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-28_06:2020-04-28,
 2020-04-28 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=590 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2002250000 definitions=main-2004280087
X-Mailman-Approved-At: Tue, 28 Apr 2020 18:04:52 +0000
Subject: [Intel-gfx] =?utf-8?q?Re=253A__=5BRFC=5D_GPU-bound_energy_effici?=
 =?utf-8?q?ency_improvements_for_the_intel=5Fpstate_driver_=28v2=29=2E=26I?=
 =?utf-8?q?n-Reply-To=3D=3C20200310214203=2E26459-1-currojerez=2540riseup?=
 =?utf-8?b?Lm5ldD4=?=
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
Content-Type: multipart/mixed; boundary="===============0072373323=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0072373323==
Content-Type: multipart/alternative; boundary="5ea8035e_a5a92c5_3fc5"

--5ea8035e_a5a92c5_3fc5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi Francisco,

I am very interested in installing the patch to improve intel_pstate, I am runing ubuntu 20.04 on a Surface Pro 7 with Ice Lake processor and I get some issues with the computer freezing for few seconds randomly, it is specially annoying because the cursor will also freeze, I believe this issue is related with the processor energy efficency since this computer does not have a fan and also because I never have issues when it is running Windows 10, I have tried different mesa drivers for the video card but nothing seems to fix it, could you please provide me with instructions about how to install this patch, I will be more than happy to give feedback.
My native language is Spanish, soplease feel free to reply in spanish in case you are Spanish speaker as well....
Thanks !!


--5ea8035e_a5a92c5_3fc5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi =46rancisco,</div><br><div>I am very interested in installing the=
 patch to improve intel=5Fpstate, I am runing ubuntu 20.04 on a Surface P=
ro 7 with Ice Lake processor and I get some issues with the computer free=
zing for few seconds randomly, it is specially annoying because the curso=
r will also freeze, I believe this issue is related with the processor en=
ergy efficency since this computer does not have a fan and also because I=
 never have issues when it is running Windows 10, I have tried different =
mesa drivers for the video card but nothing seems to fix it, could you pl=
ease provide me with instructions about how to install this patch, I will=
 be more than happy to give feedback.</div><br><div>My native language is=
 Spanish, soplease&nbsp; feel free to reply in spanish in case you are Sp=
anish speaker&nbsp; as well....</div><br><div>Thanks =21=21</div><br><br>=
<div>&nbsp;</div><br><div>&nbsp;</div>
--5ea8035e_a5a92c5_3fc5--


--===============0072373323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0072373323==--

