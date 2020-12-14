Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BC32DA2D4
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 22:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5140989D43;
	Mon, 14 Dec 2020 21:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546D089D43
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 21:52:12 +0000 (UTC)
IronPort-SDR: 3KKMotmQTKNO0elBqz73fSrmyPYSSZPFX22ROAupDc6rb3kclTNmqIDdY1WFHqou67yzUw7lC6
 felL137IAi9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="154017742"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
 d="scan'208,217";a="154017742"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 13:52:11 -0800
IronPort-SDR: 7jGx8VLymrfuMfPkKwac+NQkNQthgXy31Su4Yi8sxSPAsUpQxZtAC6P83Ap1GgzRJAU1eLwsfL
 OMtFa1fTVkkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
 d="scan'208,217";a="556263808"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 14 Dec 2020 13:52:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 13:52:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 13:52:10 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 14 Dec 2020 13:52:10 -0800
From: "Chang, Yu bruce" <yu.bruce.chang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
Thread-Index: AQHW0Gtb2Usp9qHUFUmsvUL74KoMQan27y7/gACrGAD//4hAlA==
Date: Mon, 14 Dec 2020 21:52:10 +0000
Message-ID: <b9269e1c98b34fb6a06fb14a277be599@intel.com>
References: <20201212094354.3023502-1-chris@chris-wilson.co.uk>
 <7021dc5149a24438878f6540a0c4aed8@intel.com>,
 <160797892093.13039.18269573801947438332@build.alporthouse.com>
In-Reply-To: <160797892093.13039.18269573801947438332@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
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
Content-Type: multipart/mixed; boundary="===============0346881528=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0346881528==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b9269e1c98b34fb6a06fb14a277be599intelcom_"

--_000_b9269e1c98b34fb6a06fb14a277be599intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


>
>From: Chris Wilson <chris@chris-wilson.co.uk>
>Sent: Monday, December 14, 2020 12:48 PM
>To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org
>Cc: igt-dev@
>Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to gem_mmappabl=
e_aperture_size()
>
>Quoting Chang, Yu bruce (2020-12-14 18:45:04)
>> +/**
>> + * gem_mappable_aperture_size:
>> + *
>> + * Feature test macro to query the kernel for the mappable gpu aperture=
 size.
>> + * This is the area available for GTT memory mappings.
>> + *
> + * Returns: The mappable gtt address space size.
> + */
> +uint64_t gem_mappable_aperture_size(int fd)
> +{
> +       struct pci_device *pci_dev =3D igt_device_get_pci_device(fd);
>
> Does it make sense to eliminate the function intel_get_pci_device() if no=
t
> being used anymore? But it can be a separate patch.
>
>It's still used by tools. The complication there is that we mostly
>need to lookup the pci device without loading i915.ko.
>-Chris
>

That makes sense.

Then we need to make sure not start from a fix slot to look for GPU device =
in the intel_get_pci_device() below as
it may not work for a discrete GPU as that slot can be a non-vga device but=
 with vendor_id 0x8086.

        pci_dev =3D pci_device_find_by_slot(0, 0, 2, 0);
        if (pci_dev =3D=3D NULL || pci_dev->vendor_id !=3D 0x8086) {

So, either add extra check to make sure it is VGA class or always use pci_d=
evice_next to search.

Thanks,
-Bruce


________________________________
From: Chris Wilson <chris@chris-wilson.co.uk>
Sent: Monday, December 14, 2020 12:48:40 PM
To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org
Cc: igt-dev@
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to gem_mmappable=
_aperture_size()

Quoting Chang, Yu bruce (2020-12-14 18:45:04)
> +/**
> + * gem_mappable_aperture_size:
> + *
> + * Feature test macro to query the kernel for the mappable gpu aperture =
size.
> + * This is the area available for GTT memory mappings.
> + *
> + * Returns: The mappable gtt address space size.
> + */
> +uint64_t gem_mappable_aperture_size(int fd)
> +{
> +       struct pci_device *pci_dev =3D igt_device_get_pci_device(fd);
>
> Does it make sense to eliminate the function intel_get_pci_device() if no=
t
> being used anymore? But it can be a separate patch.

It's still used by tools. The complication there is that we mostly
need to lookup the pci device without loading i915.ko.
-Chris

--_000_b9269e1c98b34fb6a06fb14a277be599intelcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><br>
</p>
<meta content=3D"text/html; charset=3DUTF-8">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; co=
lor: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p></p>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;From: Chris Wilson &lt;chris@chris-wilson.co.uk&gt;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;Sent: Monday, December 14, 2020 12:48 PM</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;Cc: igt-dev@</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to gem_mmapp=
able_aperture_size()</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&nbsp;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;Quoting Chang, Yu bruce (2020-12-14 18:45:04)</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&gt; &#43;/**</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&gt; &#43; * gem_mappable_aperture_size:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&gt; &#43; *</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&gt; &#43; * Feature test macro to query the kernel for the mappable gp=
u aperture size.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&gt; &#43; * This is the area available for GTT memory mappings.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&gt; &#43; *</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt; &#43; * Returns: The mappable gtt address space size.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt; &#43; */</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt; &#43;uint64_t gem_mappable_aperture_size(int fd)</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt; &#43;{</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt; &#43;&nbsp; &nbsp; &nbsp; &nbsp;struct pci_device *pci_dev =3D igt_dev=
ice_get_pci_device(fd);</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;&nbsp;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt; Does it make sense to eliminate the function intel_get_pci_device() if=
 not</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt; being used anymore? But it can be a separate patch.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;It's still used by tools. The complication there is that we mostly</div=
>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;need to lookup the pci device without loading i915.ko.&nbsp;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;-Chris</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
&gt;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"x_PlainText"><span style=3D"font-size:12pt; font-family:Calib=
ri,Helvetica,sans-serif">That makes sense.</span></div>
<div class=3D"x_PlainText"><br>
</div>
<div class=3D"x_PlainText"><span style=3D"font-size:16px"><span style=3D"fo=
nt-size:12pt; font-family:Calibri,Helvetica,sans-serif">Then we need&nbsp;t=
o make sure not start from a fix slot to look for GPU device&nbsp;</span><s=
pan style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">in
 the&nbsp;</span><span style=3D"font-size:12pt; font-family:Calibri,Helveti=
ca,sans-serif">intel_get_pci_device() below&nbsp;as</span></span></div>
<div class=3D"x_PlainText"><span style=3D"font-size:16px"><span style=3D"fo=
nt-size:12pt; font-family:Calibri,Helvetica,sans-serif">it&nbsp;</span><spa=
n style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">may no=
t work for&nbsp;a discrete GPU as that slot can be
 a non-vga device but with&nbsp;<i style=3D"font-family:Calibri,Helvetica,s=
ans-serif; font-size:16px">vendor_id 0x8086</i>.</span></span><span style=
=3D"font-size:10pt"></span></div>
<div class=3D"x_PlainText"><span style=3D"font-size:16px"><span style=3D"fo=
nt-size:12pt; font-family:Calibri,Helvetica,sans-serif"><br>
</span></span></div>
<div class=3D"x_PlainText"><span style=3D"font-size:16px"><span style=3D"fo=
nt-size:12pt; font-family:Calibri,Helvetica,sans-serif">
<div><i>&nbsp; &nbsp; &nbsp; &nbsp; pci_dev =3D pci_device_find_by_slot(0, =
0, 2, 0);</i></div>
<div><i><span style=3D"white-space:pre"></span>&nbsp; &nbsp; &nbsp; &nbsp; =
if (pci_dev =3D=3D NULL || pci_dev-&gt;vendor_id !=3D 0x8086) {</i></div>
<br>
</span></span></div>
<div class=3D"x_PlainText"><span style=3D"font-size:16px"><span style=3D"fo=
nt-size:12pt; font-family:Calibri,Helvetica,sans-serif">So, either add extr=
a&nbsp;check to make sure it&nbsp;is VGA class or always&nbsp;use&nbsp;<spa=
n>pci_device_next to search.</span></span></span></div>
<div class=3D"x_PlainText"><span style=3D"font-size:16px"><span style=3D"fo=
nt-size:10pt"><br>
</span></span></div>
<div class=3D"x_PlainText"><span style=3D"font-family:Calibri,Helvetica,san=
s-serif; font-size:12pt">Thanks,</span><br>
</div>
<div class=3D"x_PlainText"><span style=3D"font-size:16px"><span style=3D"fo=
nt-size:12pt; font-family:Calibri,Helvetica,sans-serif">-Bruce</span></span=
></div>
</span></font></div>
<br>
<p></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Chris Wilson &lt;ch=
ris@chris-wilson.co.uk&gt;<br>
<b>Sent:</b> Monday, December 14, 2020 12:48:40 PM<br>
<b>To:</b> Chang, Yu bruce; intel-gfx@lists.freedesktop.org<br>
<b>Cc:</b> igt-dev@<br>
<b>Subject:</b> Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to gem_mm=
appable_aperture_size()</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"PlainText">Quoting Chang, Yu bruce (2020-12-14 18:45:04)<br>
&gt; &#43;/**<br>
&gt; &#43; * gem_mappable_aperture_size:<br>
&gt; &#43; *<br>
&gt; &#43; * Feature test macro to query the kernel for the mappable gpu ap=
erture size.<br>
&gt; &#43; * This is the area available for GTT memory mappings.<br>
&gt; &#43; *<br>
&gt; &#43; * Returns: The mappable gtt address space size.<br>
&gt; &#43; */<br>
&gt; &#43;uint64_t gem_mappable_aperture_size(int fd)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct pci_device *pci_dev =
=3D igt_device_get_pci_device(fd);<br>
&gt; <br>
&gt; Does it make sense to eliminate the function intel_get_pci_device() if=
 not<br>
&gt; being used anymore? But it can be a separate patch.<br>
<br>
It's still used by tools. The complication there is that we mostly<br>
need to lookup the pci device without loading i915.ko. <br>
-Chris<br>
</div>
</span></font></div>
</body>
</html>

--_000_b9269e1c98b34fb6a06fb14a277be599intelcom_--

--===============0346881528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0346881528==--
