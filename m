Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ADFAC152A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 22:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9619C10E0C7;
	Thu, 22 May 2025 20:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=qsc.com header.i=@qsc.com header.b="Rxo3FOKA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-160.mimecast.com
 (us-smtp-delivery-160.mimecast.com [170.10.133.160])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C401810E0C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 20:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qsc.com;
 s=mimecast20190503; t=1747944030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=i8AShuuNoo4ThK/G9zvp7cE3z6roX60An6wFxP/Xgpg=;
 b=Rxo3FOKAKs4js0A/ypHSx/5UHL2aXcmAspBDLjM/0CLYMmTfx+KcRpIH7GOVpBLtAWLf+R
 J4vmKUZOt+NjUWsHc6WR/LGVpDVSCIXwShGNwhpiO2bVRMI8l+rIGUziW68Brsdf6VXhas
 QUi5ZfLV0kAHHwJJ36MmQvwOizA+KcM=
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2041.outbound.protection.outlook.com [104.47.74.41]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-76-62YEK3C8N9aBy745oa8kLQ-1; Thu,
 22 May 2025 16:00:29 -0400
X-MC-Unique: 62YEK3C8N9aBy745oa8kLQ-1
X-Mimecast-MFC-AGG-ID: 62YEK3C8N9aBy745oa8kLQ_1747944028
Received: from SJ2PR16MB5525.namprd16.prod.outlook.com (2603:10b6:a03:539::5)
 by LV8PR16MB5588.namprd16.prod.outlook.com (2603:10b6:408:1c3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.20; Thu, 22 May
 2025 20:00:26 +0000
Received: from SJ2PR16MB5525.namprd16.prod.outlook.com
 ([fe80::82ea:a206:81c1:314d]) by SJ2PR16MB5525.namprd16.prod.outlook.com
 ([fe80::82ea:a206:81c1:314d%6]) with mapi id 15.20.8769.019; Thu, 22 May 2025
 20:00:26 +0000
From: Sean Summers <Sean.Summers@qsc.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: drm/i915: How to set the intel HDMI output format?
Thread-Topic: drm/i915: How to set the intel HDMI output format?
Thread-Index: AQHby1Ql5GZ02Yp/wUWi48RXar9lgA==
Date: Thu, 22 May 2025 20:00:26 +0000
Message-ID: <SJ2PR16MB55258CF988D78C02FFEB302D8199A@SJ2PR16MB5525.namprd16.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR16MB5525:EE_|LV8PR16MB5588:EE_
x-ms-office365-filtering-correlation-id: 28bd70c3-a2d6-45be-3453-08dd996b4b77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|13003099007|8096899003|38070700018
x-microsoft-antispam-message-info: =?iso-8859-1?Q?OcWK3iVTx9kN0hhEqLFErVDZmXo3nDAUhWAQ1MoZe8DR7SBzaWfbabG3F3?=
 =?iso-8859-1?Q?lkcY47VKKhi/8566WEKlxiAWH30gh7sqpMpEGY0nuet4MY6OWoyxa819SC?=
 =?iso-8859-1?Q?U32oMlvudC4BHTjHAMF+p9gZwxIXiqF1sfgIEn/wPZmN4tI+wChUyrN1a4?=
 =?iso-8859-1?Q?mYXlvCt+OAM2ezkxcH8G2OrvKwLePbaNNcDU8xDehnSF23by46iJW1hRc7?=
 =?iso-8859-1?Q?Vl8ydJs1DHibPFrXmTvsJd3tg6ua7WuJmFsGdWNABHERQX2Y1snGB/2JEo?=
 =?iso-8859-1?Q?zn3u/NtSAA6Kb/z+agYTlQq3B/a15ajvghGEYAl64iM/7Zy7m2zJFl1vfm?=
 =?iso-8859-1?Q?7ORpOVTKBmq9ceX9pGCliFU7uhvqElnG5LK42Uc9hL07SKQIMAi0rmYFVn?=
 =?iso-8859-1?Q?8VkXzDsC5qoqeK3Yzj+RZIe8zeWLTTtOBo2zoIBTVgpTpHYTny7/k45sAl?=
 =?iso-8859-1?Q?aEtx2sTGkF+WhbPW3lVpwIOEwRV/AMHZSbM3poCrOabzdKBv+lCSofWG+6?=
 =?iso-8859-1?Q?7NVXJqOZYk8dP7GPJhpotDyH8039j61qHSQvKQtHE57X8xuxxdAZr8GS57?=
 =?iso-8859-1?Q?1qHeF43w8vZEJpevizNmmLXoYH9w8uRk6KxOCRkTQ17EzZwZrleZUulTlP?=
 =?iso-8859-1?Q?R1osZYQNejjv2r2Zc/6WeddMeyVrNqGc+V6c0EBLYExdupSEjvwG7HBhCr?=
 =?iso-8859-1?Q?qGJ6qfKB4BZJFvqh8kVRuTNRfWbdyAq7oDkRi1V1/YTG5/VwwoIN5Fx8tK?=
 =?iso-8859-1?Q?7LqlMPsQbYD6q8OEPEoWBVKTlfcuNImryr+f63r0RSifSDgS6IoTFj0pO3?=
 =?iso-8859-1?Q?A0XFB+rYwhzn6RavJPGzPuoG0iZKdV6CowBL0R5asWYVqQcRIJ78g3rtCU?=
 =?iso-8859-1?Q?Id6YQ6/zee7+stzi+w6tEltVd+HVK6roT/6nFZ1fXS9IdhajtdYdRW1bBD?=
 =?iso-8859-1?Q?E29qlwQqJhX4tk/gzQBNYMNnFwANih8HFk8UIXDEEkg5DnuxylhX6Dalr3?=
 =?iso-8859-1?Q?0VZJi39BnGHouXJFSIaB+HANdDohhhFqyU7Dv+Y0xsDAgceP9zCuKjAw5W?=
 =?iso-8859-1?Q?BWf+hxi16qsfXGRCpr1dg71w6isUJ5tt6nJ+2OnncO+SP2mr9evQSuRYSW?=
 =?iso-8859-1?Q?8B2x6BLqHU8+Xf9p9xDp12LVG/EMmHRe6+3OVeRUbiabb8IWb7sYqt5dr3?=
 =?iso-8859-1?Q?LgWZGvdRgXNKUIJPpoxtz7hE3LTfrXBgNmvWioUpuaAAq84oR9hu+Sbwbi?=
 =?iso-8859-1?Q?CKJvMrfRclNbf1P9cZMlWd5ugKn4I/hbXq0lda47sijEO4picpOuFXuCGU?=
 =?iso-8859-1?Q?GvZLHNZ+1MdId4Uoa8ehwYzK8hx9e4Tf8OoMVQ4omHQeTzWz2l9f5EjU6g?=
 =?iso-8859-1?Q?Wq33yqt8NOUOtdzTxE7L7qsXMg959HI5ZrMTfIKqjgT/uElXj5JATP8mwM?=
 =?iso-8859-1?Q?UwoegSRx+TBxJrxF9Yav6JqRrN9Mc+fN+vZljVk4S4BuGAMgUDaORYSolT?=
 =?iso-8859-1?Q?4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR16MB5525.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(8096899003)(38070700018);
 DIR:OUT; SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NVcu3PbxARQ5qKo+Ro8205KQhDG2rql8FHQs/4Z87rTc6lYqrB25Y0acc7?=
 =?iso-8859-1?Q?1H7c1N3Dm111B3APjcGvSziaty9zksfx0S7JwNoh1mYO19VQ2ugEEfSUA0?=
 =?iso-8859-1?Q?vdcsd1zmEiGTWN/9nldpBL9X4jIeWhO2DYdG0aLYd/xGd5LsxWmtX9UjDc?=
 =?iso-8859-1?Q?ytck5LIRHAKEya/7h27LwP2kGuNDYXXhBlRzbjJWGqPsMpAJclkdKe/nOa?=
 =?iso-8859-1?Q?25aeH6OfauHiIfdcioX85wexAQiuY1GrcFzX+GpjtJsLo9FQhhofc8Qw66?=
 =?iso-8859-1?Q?i08EEZPcGnDcEQnzVyzYov82/6b8h55iq8zxssMJITMF4HruHqAARALlhi?=
 =?iso-8859-1?Q?AYu0YGCQs6FxYI54a//3A62qBzNqgMy7WEhfxvhZEH3BQwr97bTdzbqBqD?=
 =?iso-8859-1?Q?gc37DG6sUJrvsIeSIL39SFnYp6lKJATcNddONh0goBwjcJCaWANbmpiERw?=
 =?iso-8859-1?Q?pMq2D29+iq2nc43mj59MpUX/QWIZfDe0SbQa/f/+nwNMmToa3E47ZI0q96?=
 =?iso-8859-1?Q?5Ypn4HdGC2+46PocIY58FveMJF4gqS+dYlFO1AXQjVQjwWjMs5lWB4JCXo?=
 =?iso-8859-1?Q?DDscELKDjsSv3qJK3OFVmQUaup6KM0Pr6Xa+c1f3tCoMXan2arfG+g8Opk?=
 =?iso-8859-1?Q?Qxk4k+0/bJeRhMf5uPZYtfPje/+nheMNHOxjsbSqDx8U390yCK0zvQF7wi?=
 =?iso-8859-1?Q?2kGQ1xTXWuKC0LhtN86BfD3XzppFlx8M+UNNGGVf5/MnKVsAzhQIpiWCE3?=
 =?iso-8859-1?Q?4GLk35/a0PfBWpstxyZi4kGgntJTw75tIVQ8zlI5AF1MLcNAiw/JRERSLG?=
 =?iso-8859-1?Q?0FWgR3ziAU7HuHxKTXf7Dtn5x0bgTum+8Uxz7a+7dmhfYaGB4T6QdIoyB1?=
 =?iso-8859-1?Q?WSyWjPRVCv5vTde1ISsu3BUVOHHuOXuLYMcIwp3CkqTp9gQqs0kZmgmB8R?=
 =?iso-8859-1?Q?EV+gh9nH9nAwyabvCi2Hu46Mjg2L41yLTEVpEx8TvA2z3KOLAgrKCEJNmK?=
 =?iso-8859-1?Q?gnRIk9iMWHINs/VJLUC7OmsR6VaHU6fsL4/Jerb3OzKIVvDgaR5JhsrZ+o?=
 =?iso-8859-1?Q?0yu30B84ERMpz7QK1WgyizRVHiNk+Ljf19Ho9lJcbioXHYUwg5J1Bsa5b5?=
 =?iso-8859-1?Q?zOT9E2vuUaDe55a9ek+5ieYRHpY0xCEBi4uzFHeP/tZXelWiFRWUIDB1Du?=
 =?iso-8859-1?Q?spCY8741Hhg60p+8ZEjbbTRyEYqCrQUeMdGtIMi+W5owbmOt2q+BwXQRfS?=
 =?iso-8859-1?Q?6vurf9++RtlrKLtle/07E24JTYIoA5YKL/XWqGsD1yjx+aqG93bS6sWkYd?=
 =?iso-8859-1?Q?XPgrJTHwekPi6xmMF09XUHdfgJL3meJ23nEMZWU35wul4bWrn5j5G1JFu5?=
 =?iso-8859-1?Q?+owq9NmDz8Xk2AlkfLf2Xf2fixQOZSZYFpwd6rTOomZxI13K1QdJIANSI8?=
 =?iso-8859-1?Q?c8VXeazcJQOAJRZyzCrCi7kDGMjAo/LQVgDeQwdMn1loBw9qEVzOxMsumN?=
 =?iso-8859-1?Q?J1/rOBJBEqOkGRF+AEoxx8k1ITML+rVgyepvoQrGGbuMlsdaeodMKx1Fy4?=
 =?iso-8859-1?Q?WY/U+VSnvN3uMnftsUvpWLqaZZiJ5wzRbpjxfGL7Laq5slCMClxDFIsh0q?=
 =?iso-8859-1?Q?2NnAQYkIv4o1GO0geTH/VbZlEjo6EABd61?=
MIME-Version: 1.0
X-OriginatorOrg: qsc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR16MB5525.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28bd70c3-a2d6-45be-3453-08dd996b4b77
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 20:00:26.2565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 23298f55-90ba-49c3-9286-576ec76d1e38
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DUIjC1wQxmGNUJJ3Mr5ODT6T6XWrFp9wfdSY7AexMqllQtb37QD1APeerKbBwARmTix5uW0CCGCL56K1l0mZtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR16MB5588
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: j4eDJMkDflx8lABj8Ywz8MSouUrnqomgKSh7Zn5dhHw_1747944028
X-Mimecast-Originator: qsc.com
Content-Language: en-US
Content-Type: multipart/alternative;
 boundary="_000_SJ2PR16MB55258CF988D78C02FFEB302D8199ASJ2PR16MB5525namp_"
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

--_000_SJ2PR16MB55258CF988D78C02FFEB302D8199ASJ2PR16MB5525namp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Hello,

I'm working on a project using the i915 driver (kernel version 6.6), and ne=
ed to change the output format from RGB to YCC 420, 444, and 422. I've been=
 using DRM's modetest to configure the HDMI output (a variety of resolution=
s, and refresh rates, with a NV12 pixel format), but it seems like the i915=
 driver only has an RGB configuration.

Is there a mechanism to force the HDMI output colorspace to anything beside=
s RGB, assuming the EDID supports it? Is there a set of patches that enable=
s this functionality? I applied a "force color format" property patch (http=
s://lists.freedesktop.org/archives/dri-devel/2024-January/437755.html), but=
 the i915 config checker still rejects YCC 420.

Thanks,
Sean



--_000_SJ2PR16MB55258CF988D78C02FFEB302D8199ASJ2PR16MB5525namp_
Content-Type: text/html; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
I'm working on a project using the i915 driver (kernel version 6.6), and ne=
ed to change the output format from RGB to YCC 420, 444, and 422. I've been=
 using DRM's modetest to configure the HDMI output (a variety of resolution=
s, and refresh rates, with a NV12
 pixel format), but it seems like the i915 driver only has an RGB configura=
tion.&nbsp;<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
Is there a mechanism to force the HDMI output colorspace to anything beside=
s RGB, assuming the EDID supports it? Is there a set of patches that enable=
s this functionality? I applied a &quot;force color format&quot; property p=
atch (<a href=3D"https://lists.freedesktop.org/archives/dri-devel/2024-Janu=
ary/437755.html" id=3D"OWAf295c421-9128-0e20-f138-48314a088227" class=3D"OW=
AAutoLink" title=3D"https://lists.freedesktop.org/archives/dri-devel/2024-J=
anuary/437755.html" data-linkindex=3D"0" data-auth=3D"NotApplicable" style=
=3D"margin: 0px;">https://lists.freedesktop.org/archives/dri-devel/2024-Jan=
uary/437755.html</a>),
 but the i915 config checker still rejects YCC 420.</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
Sean</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_SJ2PR16MB55258CF988D78C02FFEB302D8199ASJ2PR16MB5525namp_--

