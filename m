Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E812DA43B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 00:40:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1356E054;
	Mon, 14 Dec 2020 23:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CF56E054
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 23:40:26 +0000 (UTC)
IronPort-SDR: G5e0IA/u9krQVzsHxJ5Y7BU4n/WaT1dSq6xKlZklb2C/tLugfTP5pDxQzI1HiwlHaJwjCuLjEW
 y0MrZN2+9sqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="174942490"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
 d="scan'208,217";a="174942490"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 15:40:25 -0800
IronPort-SDR: K6vcsvdZtglGebfpFYGa9I5/OkEqaPRONtEgDEqxqXKprcVxhJrrxXVG1syUqjFYUBVxB+oC2T
 8jtS+l7Nn9iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
 d="scan'208,217";a="351638098"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 14 Dec 2020 15:40:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 15:40:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 15:40:24 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 14 Dec 2020 15:40:24 -0800
From: "Chang, Yu bruce" <yu.bruce.chang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
Thread-Index: AQHW0Gtb2Usp9qHUFUmsvUL74KoMQan27y7/gACrGAD//4hAlIAAj98A//+Qpl0=
Date: Mon, 14 Dec 2020 23:40:24 +0000
Message-ID: <10feb0b0fd924e48a149b0fa2a8d5d29@intel.com>
References: <20201212094354.3023502-1-chris@chris-wilson.co.uk>
 <7021dc5149a24438878f6540a0c4aed8@intel.com>,
 <160797892093.13039.18269573801947438332@build.alporthouse.com>
 <b9269e1c98b34fb6a06fb14a277be599@intel.com>,
 <160798410071.13039.10818205990449584130@build.alporthouse.com>
In-Reply-To: <160798410071.13039.10818205990449584130@build.alporthouse.com>
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
Content-Type: multipart/mixed; boundary="===============0038654789=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0038654789==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_10feb0b0fd924e48a149b0fa2a8d5d29intelcom_"

--_000_10feb0b0fd924e48a149b0fa2a8d5d29intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>From: Chris Wilson <chris@chris-wilson.co.uk>
>
>Sent: Monday, December 14, 2020 2:15 PM
>To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org
>Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to gem_mmappabl=
e_aperture_size()
>
>Quoting Chang, Yu bruce (2020-12-14 21:52:10)
>>
>> >
>> >From: Chris Wilson <chris@chris-wilson.co.uk>
>> >Sent: Monday, December 14, 2020 12:48 PM
>> >To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org
>> >Cc: igt-dev@
>> >Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
>> gem_mmappable_aperture_size()
>> >
>> >Quoting Chang, Yu bruce (2020-12-14 18:45:04)
>> >> +/**
>> >> + * gem_mappable_aperture_size:
>> >> + *
>> >> + * Feature test macro to query the kernel for the mappable gpu apert=
ure
>> size.
>> >> + * This is the area available for GTT memory mappings.
>> >> + *
>> > + * Returns: The mappable gtt address space size.
>> > + */
>> > +uint64_t gem_mappable_aperture_size(int fd)
>> > +{
>> > +       struct pci_device *pci_dev =3D igt_device_get_pci_device(fd);
>> >
>> > Does it make sense to eliminate the function intel_get_pci_device() if=
 not
>> > being used anymore? But it can be a separate patch.
>> >
>> >It's still used by tools. The complication there is that we mostly
>> >need to lookup the pci device without loading i915.ko.
>> >-Chris
>> >
>>
>> That makes sense.
>>
>> Then we need to make sure not start from a fix slot to look for GPU devi=
ce in
>> the intel_get_pci_device() below as
>> it may not work for a discrete GPU as that slot can be a non-vga device =
but
>> with vendor_id 0x8086.
>>
>>         pci_dev =3D pci_device_find_by_slot(0, 0, 2, 0);
>>         if (pci_dev =3D=3D NULL || pci_dev->vendor_id !=3D 0x8086) {
>>
>> So, either add extra check to make sure it is VGA class or always use
>> pci_device_next to search.
>
>It's held true for ~20 years :)
>
>I hear you; for the remaining users, they should probably use the lsgpu
>interface to pick the right device to work on (and remove
>intel_get_pci_device).
>
>tools/intel_audio_dump.c
>tools/intel_backlight.c
>tools/intel_display_poller.c
>tools/intel_forcewaked.c
>tools/intel_gpu_time.c
>tools/intel_gtt.c
>tools/intel_infoframes.c
>tools/intel_lid.c
>tools/intel_panel_fitter.c
>tools/intel_reg.c
>tools/intel_reg_checker.c
>tools/intel_watermark.c
>
>A few of those could even be retired.
>-Chris
>
>

Sounds reasonably to me. the rest of your changes look good to me, and also=
 fix my issue.

Thanks,
Bruce

Reviewed-by: Bruce Chang <yu.bruce.chang@intel.com>


--_000_10feb0b0fd924e48a149b0fa2a8d5d29intelcom_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI=
 Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p></p>
<div>&gt;From: Chris Wilson &lt;chris@chris-wilson.co.uk&gt;</div>
<div>&gt;</div>
<div>&gt;Sent: Monday, December 14, 2020 2:15 PM</div>
<div>&gt;To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org</div>
<div>&gt;Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to gem_=
mmappable_aperture_size()</div>
<div>&gt;&nbsp;</div>
<div>&gt;Quoting Chang, Yu bruce (2020-12-14 21:52:10)</div>
<div>&gt;&gt;&nbsp;</div>
<div>&gt;&gt; &gt;</div>
<div>&gt;&gt; &gt;From: Chris Wilson &lt;chris@chris-wilson.co.uk&gt;</div>
<div>&gt;&gt; &gt;Sent: Monday, December 14, 2020 12:48 PM</div>
<div>&gt;&gt; &gt;To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org</div=
>
<div>&gt;&gt; &gt;Cc: igt-dev@</div>
<div>&gt;&gt; &gt;Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device f=
d to</div>
<div>&gt;&gt; gem_mmappable_aperture_size()</div>
<div>&gt;&gt; &gt;&nbsp;</div>
<div>&gt;&gt; &gt;Quoting Chang, Yu bruce (2020-12-14 18:45:04)</div>
<div>&gt;&gt; &gt;&gt; &#43;/**</div>
<div>&gt;&gt; &gt;&gt; &#43; * gem_mappable_aperture_size:</div>
<div>&gt;&gt; &gt;&gt; &#43; *</div>
<div>&gt;&gt; &gt;&gt; &#43; * Feature test macro to query the kernel for t=
he mappable gpu aperture</div>
<div>&gt;&gt; size.</div>
<div>&gt;&gt; &gt;&gt; &#43; * This is the area available for GTT memory ma=
ppings.</div>
<div>&gt;&gt; &gt;&gt; &#43; *</div>
<div>&gt;&gt; &gt; &#43; * Returns: The mappable gtt address space size.</d=
iv>
<div>&gt;&gt; &gt; &#43; */</div>
<div>&gt;&gt; &gt; &#43;uint64_t gem_mappable_aperture_size(int fd)</div>
<div>&gt;&gt; &gt; &#43;{</div>
<div>&gt;&gt; &gt; &#43;&nbsp; &nbsp; &nbsp; &nbsp;struct pci_device *pci_d=
ev =3D igt_device_get_pci_device(fd);</div>
<div>&gt;&gt; &gt;&nbsp;</div>
<div>&gt;&gt; &gt; Does it make sense to eliminate the function intel_get_p=
ci_device() if not</div>
<div>&gt;&gt; &gt; being used anymore? But it can be a separate patch.</div=
>
<div>&gt;&gt; &gt;</div>
<div>&gt;&gt; &gt;It's still used by tools. The complication there is that =
we mostly</div>
<div>&gt;&gt; &gt;need to lookup the pci device without loading i915.ko.&nb=
sp;</div>
<div>&gt;&gt; &gt;-Chris</div>
<div>&gt;&gt; &gt;</div>
<div>&gt;&gt;&nbsp;</div>
<div>&gt;&gt; That makes sense.</div>
<div>&gt;&gt;&nbsp;</div>
<div>&gt;&gt; Then we need to make sure not start from a fix slot to look f=
or GPU device in</div>
<div>&gt;&gt; the intel_get_pci_device() below as</div>
<div>&gt;&gt; it may not work for a discrete GPU as that slot can be a non-=
vga device but</div>
<div>&gt;&gt; with vendor_id 0x8086.</div>
<div>&gt;&gt;&nbsp;</div>
<div>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pci_dev =3D pci_device_find_=
by_slot(0, 0, 2, 0);</div>
<div>&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (pci_dev =3D=3D NULL || p=
ci_dev-&gt;vendor_id !=3D 0x8086) {</div>
<div>&gt;&gt;&nbsp;</div>
<div>&gt;&gt; So, either add extra check to make sure it is VGA class or al=
ways use&nbsp;</div>
<div>&gt;&gt; pci_device_next to search.</div>
<div>&gt;</div>
<div>&gt;It's held true for ~20 years :)</div>
<div>&gt;</div>
<div>&gt;I hear you; for the remaining users, they should probably use the =
lsgpu</div>
<div>&gt;interface to pick the right device to work on (and remove</div>
<div>&gt;intel_get_pci_device).</div>
<div>&gt;</div>
<div>&gt;tools/intel_audio_dump.c</div>
<div>&gt;tools/intel_backlight.c</div>
<div>&gt;tools/intel_display_poller.c</div>
<div>&gt;tools/intel_forcewaked.c</div>
<div>&gt;tools/intel_gpu_time.c</div>
<div>&gt;tools/intel_gtt.c</div>
<div>&gt;tools/intel_infoframes.c</div>
<div>&gt;tools/intel_lid.c</div>
<div>&gt;tools/intel_panel_fitter.c</div>
<div>&gt;tools/intel_reg.c</div>
<div>&gt;tools/intel_reg_checker.c</div>
<div>&gt;tools/intel_watermark.c</div>
<div>&gt;</div>
<div>&gt;A few of those could even be retired.</div>
<div>&gt;-Chris</div>
<div>&gt;</div>
<div>&gt;</div>
<div><br>
</div>
<div>Sounds reasonably&nbsp;to me. the rest of your changes look good to me=
, and also fix my issue.</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Bruce</div>
<div><br>
</div>
<div><font face=3D"Calibri,Helvetica,sans-serif,EmojiFont,Apple Color Emoji=
,Segoe UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" =
size=3D"1" style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"><sp=
an style=3D"font-size: 13.32px;">Reviewed-by:&nbsp;</span></font><font face=
=3D"Calibri,Helvetica,sans-serif,EmojiFont,Apple Color Emoji,Segoe UI Emoji=
,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=3D"1" styl=
e=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"><span style=3D"fon=
t-size: 13.32px;">Bruce
 Chang &lt;yu.bruce.chang@intel.com&gt;</span></font><br>
</div>
<br>
<p></p>
<div style=3D"color:rgb(0,0,0)"></div>
</div>
</body>
</html>

--_000_10feb0b0fd924e48a149b0fa2a8d5d29intelcom_--

--===============0038654789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0038654789==--
