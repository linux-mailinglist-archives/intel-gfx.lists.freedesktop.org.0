Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 599B0222C2B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 21:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF6346E096;
	Thu, 16 Jul 2020 19:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7976E096
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 19:51:51 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id r22so6698860qke.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 12:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Bfgh/2ZY5Ozabo/Jh+Jw95iBy2T/iW5ls/ljYLaoggs=;
 b=un7D5bodPtwa2ShQJDOMDBKoj2L23K0ppFDMlp1FLZcR/Cu/rEO6/Pf4RzJSATG/iq
 m7XBxkznVBpm1ErnVmStVYC8aRD1kTdiwuxmL4z+BIB+9m08/Mx7NWcxmievDtNeTyNZ
 UbIr2uVnxVd/PpWgQQgcTalIYLk/JwsxpFMm7ThuXGaD2szW3Xo00LXqX5nboVCvGYVo
 pxF3bvGkPsc3z5P5YC1AL5KLb2T8+omc3IB/eXkD/tdg7rf3Hpb/drEPCwUzIxgDHRGz
 WxqLssLm9cNpCmLcHaq89mP7YB5NKYXVwXWylxSGH8Tlf/nzQsIXO4n0gjsM25iorBwq
 iaGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Bfgh/2ZY5Ozabo/Jh+Jw95iBy2T/iW5ls/ljYLaoggs=;
 b=I0oVqRZrVlXWJnBHXseLw5TpWLT594FvbcXvfLzBEy1Mw8O0Yyh8/e21a4km63aCbm
 FZiGsdS0crW/d2+eOvVmkgIDVk4OE8VsdtFFAZVLAcMWZsMhD3PpgA+i2RVYk543UUt5
 13y9c6WsSIiB8aEjsH1of++/77WmuRhOe2VXraUFKO43XG3TDb+ny3mFlO7bAVUdV3ET
 PH3fb0PfTr/oIjLUEIowEE0HDLP4jY0QCcrCcUcn4HWcinvdecTFUGIf378MFp+fOsvS
 pzRDoIgwjVF763zUOm1HflmeyoLQ0Vxn4GMddSxUS9HTmSwdUwjcS1ZkocjR7oCzOpta
 vcXA==
X-Gm-Message-State: AOAM5301S5LcdpyKHPLzeb2K/RbreIayTIX/Yend3JTS+VpUMvpwG97i
 STyqopJtLdMoGQ+WF9dgtS7k8RiS
X-Google-Smtp-Source: ABdhPJxyLiXaEIoU8JJ8DkW2FNR7cG8gU35VUnL4bYazJP/oLe46ttel4jqlmpz+nXwh+EKDz79goA==
X-Received: by 2002:ae9:dcc6:: with SMTP id q189mr5954449qkf.332.1594929110320; 
 Thu, 16 Jul 2020 12:51:50 -0700 (PDT)
Received: from ?IPv6:2600:1004:b067:cafb:ac0e:43e3:7f1a:5e52?
 ([2600:1004:b067:cafb:ac0e:43e3:7f1a:5e52])
 by smtp.gmail.com with ESMTPSA id n28sm9638183qtf.8.2020.07.16.12.51.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jul 2020 12:51:49 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
X-Mailer: iPhone Mail (16G201)
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
Date: Thu, 16 Jul 2020 15:51:47 -0400
Message-Id: <233C4EBC-3BFA-4F0C-BF30-5673A64ECA95@gmail.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/14] drm/i915: PCI ID cleanup
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0887301679=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0887301679==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-3A919176-AC5D-4EAE-82EC-44F9A533198A
Content-Transfer-Encoding: 7bit


--Apple-Mail-3A919176-AC5D-4EAE-82EC-44F9A533198A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> I started by splitting Alexei's SKL PCI ID fix into
> logical chunks, and then ocd kicked in a bit...

Thank you for picking it up. Please do not forget https://lists.freedesktop.=
org/archives/intel-gfx/2020-April/237944.html

Alexei

>=20
> Cc: Alexei Podtelezhnikov <apodtele@gmail.com>
>=20
> Alexei Podtelezhnikov (4):
>  drm/i915: Update Haswell PCI IDs
>  drm/i915: Reclassify SKL 0x192a as GT3
>  drm/i915: Reclassify SKL 0x1923 and 0x1927 as ULT
>  drm/i915: Add SKL GT1.5 PCI IDs
>=20
> Ville Syrj=C3=A4l=C3=A4 (10):
>  drm/i915: Try to fix the SKL GT3/4 vs. GT3e/4e comments
>  drm/i915: Ocd the HSW PCI ID hex numbers
>  drm/i915: Sort HSW PCI IDs
>  drm/i915: Sort SKL PCI IDs
>  drm/i915: Sort KBL PCI IDs
>  drm/i915: Sort CML PCI IDs
>  drm/i915: Sort CFL PCI IDs
>  drm/i915: Sort CNL PCI IDs
>  drm/i915: Sort ICL PCI IDs
>  drm/i915: Sort EHL/JSL PCI IDs
>=20
> include/drm/i915_pciids.h | 141 +++++++++++++++++++-------------------
> 1 file changed, 72 insertions(+), 69 deletions(-)
>=20
> --=20
> 2.26.2
>=20

--Apple-Mail-3A919176-AC5D-4EAE-82EC-44F9A533198A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><br><br><blockquote type=3D"cite"><div dir=3D=
"ltr"><span></span><span>I started by splitting Alexei's SKL PCI ID fix into=
</span><br><span>logical chunks, and then ocd kicked in a bit...</span><br><=
/div></blockquote><div><br></div><div>Thank you for picking it up. Please do=
 not forget&nbsp;<a href=3D"https://lists.freedesktop.org/archives/intel-gfx=
/2020-April/237944.html">https://lists.freedesktop.org/archives/intel-gfx/20=
20-April/237944.html</a></div><div><br></div><div>Alexei</div><br><blockquot=
e type=3D"cite"><div dir=3D"ltr"><span></span><br><span>Cc: Alexei Podtelezh=
nikov &lt;<a href=3D"mailto:apodtele@gmail.com">apodtele@gmail.com</a>&gt;</=
span><br><span></span><br><span>Alexei Podtelezhnikov (4):</span><br><span> &=
nbsp;drm/i915: Update Haswell PCI IDs</span><br><span> &nbsp;drm/i915: Recla=
ssify SKL 0x192a as GT3</span><br><span> &nbsp;drm/i915: Reclassify SKL 0x19=
23 and 0x1927 as ULT</span><br><span> &nbsp;drm/i915: Add SKL GT1.5 PCI IDs<=
/span><br><span></span><br><span>Ville Syrj=C3=A4l=C3=A4 (10):</span><br><sp=
an> &nbsp;drm/i915: Try to fix the SKL GT3/4 vs. GT3e/4e comments</span><br>=
<span> &nbsp;drm/i915: Ocd the HSW PCI ID hex numbers</span><br><span> &nbsp=
;drm/i915: Sort HSW PCI IDs</span><br><span> &nbsp;drm/i915: Sort SKL PCI ID=
s</span><br><span> &nbsp;drm/i915: Sort KBL PCI IDs</span><br><span> &nbsp;d=
rm/i915: Sort CML PCI IDs</span><br><span> &nbsp;drm/i915: Sort CFL PCI IDs<=
/span><br><span> &nbsp;drm/i915: Sort CNL PCI IDs</span><br><span> &nbsp;drm=
/i915: Sort ICL PCI IDs</span><br><span> &nbsp;drm/i915: Sort EHL/JSL PCI ID=
s</span><br><span></span><br><span> include/drm/i915_pciids.h | 141 ++++++++=
+++++++++++-------------------</span><br><span> 1 file changed, 72 insertion=
s(+), 69 deletions(-)</span><br><span></span><br><span>-- </span><br><span>2=
.26.2</span><br><span></span><br></div></blockquote></body></html>=

--Apple-Mail-3A919176-AC5D-4EAE-82EC-44F9A533198A--

--===============0887301679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0887301679==--
