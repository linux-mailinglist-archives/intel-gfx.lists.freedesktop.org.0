Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E70F754F51B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 12:15:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E3310FF3B;
	Fri, 17 Jun 2022 10:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C347B11A663
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 10:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655460938; x=1686996938;
 h=from:to:subject:date:message-id:mime-version;
 bh=vlDlyypqqSrZpmWFVOwp/NBq9RGsDYXSTWcxEobFb2M=;
 b=Biw+/Zg6OSqmUsNclfolDO4QH+/tqiCD0kOPMxAQbEDBAKMXFv1caDyw
 +EpR/BJChbF7UZh+B9Nu2lMwvZh9K2QIq+mQqK3rtx4HkcNirh92trgvh
 6V6xXZLtttO2UUmTZGh0IhAGaODwKL/WFma1IWKqlgOUXEmPQTbiQl65U
 An3UQ70VXn/I+NmxhhjXxKyEBEpWNNTVPBzPuThPq8h/am5tA+nbL+qtk
 bfzqsduAVL7SDdL0Xc+Jxr9ekAQq5BVx5BMpSHp6GQXULKPp19DVpnAcW
 HXImxsat7l+Btjoy9Fq2PbnKw8pEX6icpiRWuvlLaeZeIv9DxA4hYGFqS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="262491852"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
 d="scan'208,217";a="262491852"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 03:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
 d="scan'208,217";a="728298263"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2022 03:13:31 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 03:13:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 17 Jun 2022 03:13:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 17 Jun 2022 03:13:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hqTNbVX9g48MS0A/tA2QfJjZWu8kae0+5LuoglHsrhtsvEOiaVEUEQi+pr52MOmiQBrfLQh3bcC4NdPhVRYLpDCAhu1LEW8dUR1LLHsCAgzoHOvi54eAkyxsYsw8SnIrOF0EMS+skSQ2zl3uKv6wehP/m8uyndKjLAX5/eX++dXhBNSmEQ6f6MDDo/31IUG2tv7sM9tavH65d+cN2KFZk9aVwZhJeDTjIOrFX0YbJChDMuyU0pcKZrdOeL4fERtDOAyp419fnxsDczLiOLx+GqFIn0RntIqzXafwkD8AmW2TGWROJ2FgBNQRLvrUhKdE4P7Y0fpUaurPYNrE/R+KYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=etkMFerxxxiBkluIfVvSRBoE2xgkzvWoVV2ogb0iH/A=;
 b=DZP9r8Edst4mLNQRRcrXF2PmM7zICuqCO7z7VM6pxmFxUfZVRjrzRlJEzsp07wwalnuWIBCcI+5/N4t7Y+Bg6mu6NrfDLPGaQeS4XNfRh+wyLUQSOpI1LyouXzb1IQ41J5NF7s2+J+qP3jigygZR1BH8Z+PgycpPqXGBKeNlQsgCGY0PGD4fg8PHgVeBzMlScF+V8f71poqvgCWNcHx/+WHTHUcyPkTJ/oMJ5vNeZkm37mdxkTt2QrQaKx7cb2dBrr/nT5LQ7tpLyR0xWt4A7AP9sDPwhQW+T6raTLCPfN1dj4dOtmcjaWQSGBMAeq7RyVfG80yA9l+K8RLdralH/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (10.175.52.20) by
 PH0PR11MB5093.namprd11.prod.outlook.com (20.182.127.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.14; Fri, 17 Jun 2022 10:13:29 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::d9a1:5893:c10e:a2f8]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::d9a1:5893:c10e:a2f8%12]) with mapi id 15.20.5353.015; Fri, 17 Jun
 2022 10:13:28 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: Access to Intel-gfx
Thread-Index: AdiCMnMSCqBrNffdQoy7j5x+I7nvvw==
Date: Fri, 17 Jun 2022 10:13:28 +0000
Message-ID: <MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9@MWHPR11MB1935.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0aa5fca6-517d-40ec-b61a-08da504a05d9
x-ms-traffictypediagnostic: PH0PR11MB5093:EE_
x-microsoft-antispam-prvs: <PH0PR11MB5093B27D7F11CAE5C314B12CB2AF9@PH0PR11MB5093.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ejvtxk6L1E8dtsTVfSz40/gXla/HvBWEOSKZJN96mm0jbGhgyZMvqef5AOSyMhdWAiZAMhyybTAz0Zil3jw3euSdl3fTdYq33raETXPJuiUaNH+MwHUO6bGwZb4RbAK10rYvd5+7AdZNzaDI4dCI+dCLFjFvhCwb/wBw+ruGY/VHVQhc2lDG4gUHOJmWsWa6uJRm7BwVS+FJZLDjEN6rB0c9fxQaKCgn5Nu4hH80r7d5sg3Psc6nHbuJudpJ8R9H+eqlqzoMmH4RnKVoe5+KJn/+RGDZsk+0bBhtb8tLjf2yUSO01EIjxLniqENmhJf3GWbTSUQhQOs+ABWEDRe8ZxsZ02csx5hB7S7JtoGp2m4O+P7pJjwFsNOAEqeasb50D//SsbwyW4mg3ACA9uWN9/gzF+1iO07dJtyHkz9kAFLzxwYMCQFe/8JND0a+xqzJi3+SdHT1HJkzXge03FP9y784XniS/63QKo+hWgnVonT0gUjvPJ49wjG94JHKzMpJAaWeF0NaJoxheunjH1JTwYBWqV8DzN6k3bDJkCDZK/ZwY1eTQ2xfgJUMVAaVPbg7tsSZevZ4Uohzi3fe9vcscQaBXAYciIJ2THQRljTjHaEcWcfyBRHkzY71GYxAw7VkDwdfz/yj3wHMoTxJcPFmUhwxGGJaHjEVbAUy21MAr8f5Wa8j5ttVfiqOZkkDKsHJAcg9X90Ua5jOqv2WtNZCVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(66556008)(38100700002)(66476007)(66446008)(64756008)(76116006)(66946007)(122000001)(6506007)(8676002)(498600001)(2906002)(8936002)(7696005)(52536014)(9326002)(82960400001)(33656002)(5660300002)(71200400001)(6916009)(3480700007)(316002)(83380400001)(38070700005)(558084003)(9686003)(86362001)(186003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3GakrMviSva5Z+xOuAToNkF3hrEHmyeEMgWMf+iq9m5GHb2Mm5aSBI2aDsJl?=
 =?us-ascii?Q?KKRG2ZbHsMnewsNEL6beYB7neHnG7zy3S05mOf6qPHN8T/vjBSbXb+nc8sqV?=
 =?us-ascii?Q?IPiqjfAMrokz9MwJLaepTiQcqDeY4eTwkloNMcE9Ew4lf8pWUy9vKi+pizO/?=
 =?us-ascii?Q?MxelLXgd9CMDOvmduVTQD9Ta+U1DSuRDmzudobbis8uFlXVn1y9CTFNXx8vZ?=
 =?us-ascii?Q?s9hOwcp8HWn+/DvYeX2wYNGNs6AnlJGWG4LUQwE3b6KNkug2JAaQyW5P7b/g?=
 =?us-ascii?Q?070gKGjvcW/Z4f/5MZwxg9GGfxMjJWFopGoFLepWgQiP5NJlBJodfaZMKt+h?=
 =?us-ascii?Q?oqMiAJOacCN6pL0YJa0peEKi99ymRm9aaBGHCqpwfwbedLfdtBr7PkVCFdhT?=
 =?us-ascii?Q?rBaVL6X0RZW1BjEQibNy1My0n32/lMxNSIpLriX46IQ2CaRdDP+s1F72a5aT?=
 =?us-ascii?Q?PX2NpuHQkRM3GpBwV9n8VDCGSY4rIo1b2pzCsyqrq1XSuAEDO12bvCLQCtOI?=
 =?us-ascii?Q?icdh+cReMX4QfKJIT9wg8neGuuvTUK7S6kYRlfguFJcWB3h8DuvjEC5naBV+?=
 =?us-ascii?Q?jfpjLGOPGC/1K3JxncwqlWpBQLybnmvK8lGmgrjTp4QXXh9A97MaH0NXeOOu?=
 =?us-ascii?Q?P78PsxLXPgQ2+x4sEQHL+/04oMeyh8CrAZsTqkIrB90BD3mVgWfayHNqccig?=
 =?us-ascii?Q?huftsF5boNIR+s5Fwj2RjB4m8lgNEtNptg5cASTfSIGPgmHamwaCgklDHrzI?=
 =?us-ascii?Q?lDKChKPU0xk9+w/YPOELABWTrEWu0ynW7CkPBqD80mYy2NWphOb2W5e/d4sJ?=
 =?us-ascii?Q?IxjjdBHPzSHx7pBq/ZouUU6ECu+A6J2APwUM//2Yip60nLX5iVSIOYXvxirl?=
 =?us-ascii?Q?RrT14faVqwJFZ33DZIHrV3bhcMZxwtuhbAxVg+FZBLh2Dy48LPrAo86tk6vY?=
 =?us-ascii?Q?34WyVGWE9Px2KLNwNVeRua4iZPcs8j/M6oS846w3Wq2p1d72nFpA8WpouNpG?=
 =?us-ascii?Q?+l9J7PDTFB07rEZxbUF5Vi5KZGazohSXTpYNZmN+VNVyRrdc/OZjS2zGI8Xi?=
 =?us-ascii?Q?01vmQbnvik74BvYHpBvijCATXOEmM15pGT9PLP6rmCJRbEA699hM4n0sO7Ul?=
 =?us-ascii?Q?aE0rRszvRU4f0bIbLmRUQw8AyOeG1vT7lQ0LPWLP61NmNuQEGpUP5f1vGhYE?=
 =?us-ascii?Q?ud+IP5Zp2wDwEMXBCbum8IjbmOG+4r71hbSEI0QbTvFnss8NwRws1UFj/aIr?=
 =?us-ascii?Q?DOud6hQ8OV+ULNClJDttWqlP+Jm8ZkWtUvihyobTPQXx+Se/NaQvMuF+gAxt?=
 =?us-ascii?Q?3R/yKY44fteDIu/CxG+DXDpgsHShJ2GKZ9+zmylfNiVEosHj+uAMQveyNPn8?=
 =?us-ascii?Q?r7vua4VmzSW5MBagJzcHpSbPDNo5OJrQBDJul26Sx+HcKqkg/eLkRdMl0nqA?=
 =?us-ascii?Q?fqtk2X1vn5CYmXbF2l3tVqWP3bzdssbf5gtKSMGt/7yS3SKcf00WnHZDodpX?=
 =?us-ascii?Q?NDfkR98YL1eAQKPZNzZLsP3MhCzfEe/NXQfosoDPoJ9rMgO6DFss4zVLVvDv?=
 =?us-ascii?Q?+m06RzxLs4xjSpGd9FVbdswTuYYarWyXhpnPhDKNJYqnnHqsPYTfhOhLGpYA?=
 =?us-ascii?Q?1bGKS0doFsSOptp9QwxJIAuQWA8r403zSynJZGpA8HtycoJMwF2JblZTdZdU?=
 =?us-ascii?Q?1IMZcGlGS3DU7CVYz6x2twrEtyZSjSgzmNvywFDc+sl5UDPdcKDZ1xCx5bGD?=
 =?us-ascii?Q?lQFSPo24N484DdB3dAWXFILuLZEvhsWehWs062hx5MqOldW7P3WovJLLCg7s?=
x-ms-exchange-antispam-messagedata-1: 4CgN94bAfhe9qLEmQ+rgarOn1Xd/pr2Ev2CfHAUWjYfe98xHkrKfv+5w
Content-Type: multipart/alternative;
 boundary="_000_MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9MWHPR11MB1935namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa5fca6-517d-40ec-b61a-08da504a05d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 10:13:28.1677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nUFUwcZ+RZfSZ2cFRyoQ0AloV4b8xZUzBZbnExJ+fi2F/LzjkbLu8pyIzMMtIEpsiRRLOgo8WQcfKoLl9KKkKLSinTHVLg5ZkcW+t6PVl8rCxAlbyfovNM9s6w8/EEI9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5093
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Access to Intel-gfx
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

--_000_MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9MWHPR11MB1935namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Team,

This is Mitul Golani from OSGC bangalore team. Please add me to intel-gfx m=
ailing list to see/post message to all the list members.

Regards,
Mitul Golani

--_000_MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9MWHPR11MB1935namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Team,<br>
<br>
This is Mitul Golani from OSGC bangalore team. Please add me to intel-gfx m=
ailing list to see/post message to all the list members.<br>
<br>
Regards,<br>
Mitul Golani<o:p></o:p></p>
</div>
</body>
</html>

--_000_MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9MWHPR11MB1935namp_--
