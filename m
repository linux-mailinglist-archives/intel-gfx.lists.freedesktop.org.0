Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F784E532F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 14:35:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE4310E163;
	Wed, 23 Mar 2022 13:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6634310E05C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 13:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648042531; x=1679578531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=UrGCPov6hW1gzMMYhgDAlgZhqPp/5w+nfYqjjF37oTE=;
 b=Lc1oFeVNEuBFU15CF1Xs/0foFMAGeD+fI3OeyLwL7HmUmku/+ItJkWi0
 2CgE/RdiBhB2A9TIJGV8lvRNXl4oRta+QwslBbV24d6p9lsB2fMup/Jw+
 hANB/trE3DaoXX/4DLaRNkJ5NIYhhbMPr/SkXFwjKj0HYSTd5xg+GiyGu
 slM6JrpV+iYjQp8LzsyoSsxR61SQop1NOMoAqE0p87IdM3gPOJgmt1GwQ
 bqWHQLQhBQtGBSN6LiFuNqgtQtIm46YCtfq8cKX/yA/JG357m33YJ1dZC
 pnN7fgAiy9hO9VObfSCPBEPYKJseGoan5e3mVSgslYYZEiDe7lOXHWrag A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="321308042"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="321308042"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 06:35:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="519360497"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 23 Mar 2022 06:35:30 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 06:35:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 23 Mar 2022 06:35:29 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 06:35:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BAtCc2V8hD/joV0brHAvW9FoZ0/MxIBJY5fiVh9a3vSgIO5zJ0bMR4Py87jn1fbUT2v7yD5fUcDkoE+CsrlBNkj07RTn+DCHiHYVyDeVMjrLkJpA2oye6/MjH1WT2YhXVd8IEW1x4B/2JEJRL+Pyn6+rf/3djUG0LpsJUnD9ffR9aGzJ1t1dqzO2uDijvml/YGck65x7+4bB1Ht7bg65dAx7a3XLDlRO68ITzi17qlCIi7vmcZR2dejAsDZZeKjjS/KIn6HlrenDpP1TgEfBnpiBMjMho/60EC1LJTPqzTtPZ2H0WiTOhUe/E1iziCYys8KmGd1a27JAbAQvbF6+AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lUZV0Cnc4u+IxsURu1zaxROXgFI+owIKyaaXHuHroo4=;
 b=H5n004H5+1deZMNb9T89hTZqwGlv9T479IIU6hX9rWZueEuZ23z3IS3p956v0/Dk6tYlrK9bQjn5bZ0d5KkPtK3Z3mi/a9e7TLNm0PFz4qdgvf381ZA6i6Y7gJ/BJb0ldTBVI2/C8Gbn0vCcZImdfZcQgaj4klKjs2UrUmgCHQvq4QHopFTDBMw/iM3y11DFsevjjJcc67dPcq36FD94TWgW553K5jjBN5MGB1eYKGJ5e0o6czr4S9HD3dLy3BS0xnJcGYE+Ne1qOFu1oBl7e2JWdLm2cgho/nTW5k+SICP3TbIa3R5kh+JXwRQySCnxD8Zgr8ZqGW23UE4HrS6mjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by SN6PR11MB2672.namprd11.prod.outlook.com (2603:10b6:805:58::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.15; Wed, 23 Mar
 2022 13:35:26 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::48da:a7d6:83c1:7e22]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::48da:a7d6:83c1:7e22%7]) with mapi id 15.20.5081.022; Wed, 23 Mar 2022
 13:35:26 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/edid: filter DisplayID v2.0 CTA block in audio
 detection
Thread-Index: AQHYPN7gnUc+qLr2WUmuYCZB8bB98qzMwNmAgAADNZCAAAcAgIAAK9Ow
Date: Wed, 23 Mar 2022 13:35:26 +0000
Message-ID: <BYAPR11MB2710208DB5592D4CA15AC5F5A3189@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20220321044330.27723-1-cooper.chiou@intel.com>
 <875yo5j88o.fsf@intel.com>
 <BYAPR11MB271097CC39080E466B5C38E5A3189@BYAPR11MB2710.namprd11.prod.outlook.com>
 <87wnglhrzc.fsf@intel.com>
In-Reply-To: <87wnglhrzc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a6b07fa-3a3e-4afc-efc1-08da0cd1fd84
x-ms-traffictypediagnostic: SN6PR11MB2672:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SN6PR11MB2672DBC49021CA8768F358A3A3189@SN6PR11MB2672.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QYA6Gyeq2NWoQpqKdFfvET0Fpp8MpQzWzgJHThdU+heF3PuPbJjqPOja+VDOy2KzQAkCWf/D96EKOTb3+mpK7qzabjR9AICJfj0hUAc/LuRpj/5vsBVpj1oI11U2qixn59qBaJGTRgOUSZ60XHV+R8BuyZf9ivSliIbwozCtNM2vLqUJKe5UC1tJA/R33PAx03lW7vWmb1FUjHXDHU7pm00CtGAUk26+NBi0GZNoG5f3Oow6THSzUw0bDO0cpvlq6a2C2453/04EsSDCGPML3/k0867jRiLxj3tegoFFxdZwlewnepIPMSKwkZc09b/QyDcZl4nZTCaWTCUCYE30o2EFdeUtJ8LE65SBx910YqBDfxKWFjSH8Hj+Dz6VEYwYOfpzbLk7e8XP7y8u7CQwa3DibDwFyRmVjZ2x4bqEqP0AqzGmeRQMd1McdZ8AW8xo3K8C7N2wv8/aCnyAWXqGBRSs3b57bxeBazLgCMofFfP1+fF0clLXmyQ4rSu+nJxGLk+FH9PH/sXIOzhqtSCHhVd17eyzXfrK7oHHqLFWg24kueYIS5jok/yS3bQFrdABFp4zzGyDMwrQnRcOma1+JF438/K09JwRL9Decp9+P8lYR50wPKQjYO7dd+r3WLxCyiOSvbO93dCvx2iETRBJDrbEmJHfyoda+3HONo86y+iwM+rbLYKpk1bHn44gFPFB53WPrv+CglRkcXO1RaGXaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(52536014)(7696005)(71200400001)(122000001)(6506007)(5660300002)(86362001)(38100700002)(508600001)(38070700005)(8796002)(9686003)(55016003)(110136005)(54906003)(4326008)(76116006)(66946007)(64756008)(66476007)(66446008)(55236004)(316002)(8676002)(66556008)(26005)(186003)(83380400001)(8936002)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RCUVCSVB0+mA/k7CWliZPtoaJcwq5GdTLs2LrY0AijpRazyR2WjVt3nyxtc+?=
 =?us-ascii?Q?Po0h5qDHDzIFaDj8mJCJ7+7v9lapZ3sBzkZngGsAr4DxznUZgEODtySj+9OH?=
 =?us-ascii?Q?Yy1l3sXm8KPAgEx59wDRB0bVMA3Xgqc3t8/3pNAvGoNqFOuvhX9uf08+punA?=
 =?us-ascii?Q?TBAm15kF1AImjmZb0NUXmZ+JAIbmOqtxQNbnsOEdKwwBF9Iqi8edI+OKVELt?=
 =?us-ascii?Q?b1zUVFB5BrMDnldlxbBF8TUkz9GBNik7m4djdgT0uMjJCXkTYZTB9Hdzrlul?=
 =?us-ascii?Q?h6y1lYhpz2fsCLpSvXGTH045DtM5uNphMgepeqqU8XKpNSpGng/RQG4qxikc?=
 =?us-ascii?Q?XYZJ8HjPB97kAx9St0DY3H4GCVmzeNItVXW8h8OFI/dAO8DyLT3CdTzLhMF8?=
 =?us-ascii?Q?FN+37TEPB54eaKXrfwTNOOVRqe2vmWs10ZkyIP1mfozqk/MpdCYvO3YfpXCX?=
 =?us-ascii?Q?JQh1LIffjya7EB0OktpMRPqFeegIHpiBnyvCebQn1l85emCcCYA2LeR/T1r+?=
 =?us-ascii?Q?XXpdN9VYnNKTnLJ/KT012/TOHwAVDlJV0Fe5vYlPcJDpDmUzRWfzyjK4fbvX?=
 =?us-ascii?Q?ktWoj69fecvAjUXl4aYfbuHkFOLWCVsjp0FIaDju2m+AzKrK2PxOddgOQ1FC?=
 =?us-ascii?Q?UebeuBUEBOWbULPGbhBSYnRw1xy7vR+d/2B77UN5Nm7tQfw+IakHRrY1FXul?=
 =?us-ascii?Q?xEgQSSG47O1eE86fTKIOnCCW2qyLMsRuB7fXCNPjGinNJgEx9uolcrdE3l/8?=
 =?us-ascii?Q?WwNuOsvlkaOOPuQjTWdhltcOBVuuw5ka/+N1aq0WImuVeo2se+UKi1NNk/7R?=
 =?us-ascii?Q?Pipb0nkCSU0+LJn7CHsPyXdP4p+1la/tU8jCYcWOkKU+Mjh7yn+aA4pmQMi3?=
 =?us-ascii?Q?olNDwq7fhl4sh9vKS6cmdijz07heqfGxt3xRqYLny+vvVp59/vEdvuC0b76Q?=
 =?us-ascii?Q?e9wElU9uq9PmOvSCj0iEeu1skB6rGWrzNEXg/nn+xfMscP1QKs6VAzPU3xCx?=
 =?us-ascii?Q?jqDUUCXpUPVQ8Cy2+gSQsb5Eo+FKohvoOPXamTITiDK4C8bJQqZnpdlVtRu1?=
 =?us-ascii?Q?ZLyKRIZmkmQCndjSxKlC0n4BacUCVxP/xl/8uxBOL47iSnWuCpYj6aiVK8GS?=
 =?us-ascii?Q?Q53iLh3mxj/3TvEURtbfE1BmmhmOAth4ujICMgkitjOUCncRQkYJvqd5spEp?=
 =?us-ascii?Q?Qo0ii8DIK6PHnqM3wtsVthwCtpa+j3toHjy+f+dzFR8DYGoStSaSkBkdf7IW?=
 =?us-ascii?Q?S/XFjK4C8c5WnPSRBW+9QYTgvs65BATkE3dTBrmUvSujNtPUXn/g6L9pCd2f?=
 =?us-ascii?Q?PGR2peWX9nyaJ1dpm2TaDU3JdgUbwyyuYSU7GJIfvBopi4LFK6131cETFJSg?=
 =?us-ascii?Q?oWHtSF2edmJIgZbUx4sFjSnuJhouwcSVMJX/Pv6uJhY4zhXYFLgYBfAwc2Yw?=
 =?us-ascii?Q?iElnf890iL4PMqHHUEKTLhT1bxYGdfSt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a6b07fa-3a3e-4afc-efc1-08da0cd1fd84
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 13:35:26.6298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6brPxmw59N7mwqYlXdU2zy6+eOOHsftLQETA/beKSUsqQjAI8yHfzbOyMvP7lKbwSbobKaHHlOCeTApt1q1Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/edid: filter DisplayID v2.0 CTA block
 in audio detection
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
Reply-To: "20220321044330.27723-1-cooper.chiou@intel.com"
 <20220321044330.27723-1-cooper.chiou@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, March 23, 2022 6:40 PM, Jani <jani.nikula@intel.com> wrote :
>On Wed, 23 Mar 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Wednesday, March 23, 2022 6:04 PM, Nikula, Jani <jani.nikula@intel.co=
m> wrote :
>>>On Mon, 21 Mar 2022, Cooper Chiou <cooper.chiou@intel.com> wrote:
>>>> In DisplayID v2.0 CTS data block 0x81 case, there is no any audio=20
>>>> information definition, but drm_detect_monitor_audio didn't filter=20
>>>> it so that it caused eDP dummy audio card be detected improperly.
>>>>
>>>> We observed this issue on some AUO/BOE eDP panel with DID v2.0 CTA=20
>>>> block, and fix issue by adding filter for edid_ext[0]=3DDATA_BLOCK_CTA=
=20
>>>> case.
>>>
>>>Out of curiosity, what does the CTA DisplayID Data Block have for Data B=
lock revision?
>>>
>>>I haven't found any mention anywhere that it should have any corresponde=
nce to the CEA *extension* revision number, which is supposed to be 1..3, a=
nd really only 3 for about a decade now.
>>>
>>>Both the DisplayID v1.3 and v2.0 specs only mention revision 0.
>>>
>>>BR,
>>>Jani.
>>>
>>
>> We don't get many issues in EDID with DisplayID structure. In this case,=
 the revision number is "0" as well.
>> As you mentioned, DisplayID v1.3 and v2.0 spec define the block revision=
 value is always 0. Do you think it would cause any problem?
>
>A lot of places in the EDID parser expect CEA revision >=3D 3. This isn't =
true for DisplayID data blocks, so we end up skipping a bunch of stuff if t=
here's no CEA extension and only a DisplayID block.
>
>I'm fixing this in my series.
>

Thanks for the information! Just like you said, block revision ID is always=
 zero in DisplayID block.
Do you think we have to make sure revision ID is "0" instead of the other v=
alue?

Best regards,
Shawn

>
>BR,
>Jani.
>
>>
>> Best regards,
>> Shawn
>>
>>>>
>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>> Cc: Shawn C Lee <shawn.c.lee@intel.com>
>>>>
>>>> Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/drm_edid.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c=20
>>>> index f5f5de362ff2..6c9ae4b130bd 100644
>>>> --- a/drivers/gpu/drm/drm_edid.c
>>>> +++ b/drivers/gpu/drm/drm_edid.c
>>>> @@ -4845,7 +4845,7 @@ bool drm_detect_monitor_audio(struct edid *edid)
>>>>      int start_offset, end_offset;
>>>>
>>>>      edid_ext =3D drm_find_cea_extension(edid);
>>>> -    if (!edid_ext)
>>>> +    if (!edid_ext || (edid_ext[0] =3D=3D DATA_BLOCK_CTA))
>>>>              goto end;
>>>>
>>>>      has_audio =3D ((edid_ext[3] & EDID_BASIC_AUDIO) !=3D 0);
>>>
>>>--
>>>Jani Nikula, Intel Open Source Graphics Center
>>>
>
>--
>Jani Nikula, Intel Open Source Graphics Center
