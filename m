Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 563AF4E505A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 11:32:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA99610E0B6;
	Wed, 23 Mar 2022 10:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1A610E0B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 10:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648031539; x=1679567539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AC4MG8HXn2m51zM4Jvxc9gF3bkXvIZvMZ1aLSSwpQdc=;
 b=c06/FhGVS7xrKy0SL1i9WdmnsDJEXUsi2WujeUo38ofzdK6y9tsOTrG6
 XCz0OEiLxaQfJH/aHJqYu0X1jMaCbb1CtlLJQava0BvbZI4u9l9Uf1fnW
 caz51CXBydP08iKwqHHsPdCiS+s6fhv9DA9ux7AtBvk83ZnpF5VChHkMQ
 /Fa7fJ86/WMx+VXmuXymSy+Xki+tT7RS/9YxEY7CjuKbXkZmv6lZ4SdpQ
 mg1v6DdrqOm3ucyGh+hmXSkIITYmB6FObggqO0e0ZScK8YP8YMj5aes9b
 0ieWxMkHL0zZJu1vms57esZzxBP264VBWlU3W+HYI+msWafDVSZtsf+3i w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="238019565"
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="238019565"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 03:31:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="785746052"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 23 Mar 2022 03:31:58 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 03:31:57 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 03:31:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 23 Mar 2022 03:31:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 03:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mk0oYK67RM7SudnapdUAe98slmcGKmpuW29ywxwhfZcPIVWaJ8eg0Pou/1JIMV/lbL7dBbSrSGtsodg0X/MM6OseBtBxHfNAuKDCkAA441uASaAPHg7jYCVpc4DAMyD05+ql754+T35+m/Qg1O+IxKGGh42YJR8bVKjkQhFzCO72VJMfWO7RDYIdVMPjsrnt9f9EXEPY6ABqitQQZesbLLNWhNpkI/datnQ6ZIY66mDxkGJjrpghf+2Tbi+rEHDC+V0300FZfXbLcw5NevaLvKyxcmVQVkLEqjStEfwUQ8evDi4SRFRR8PVEfTXfGk1GpaiaG0RTR4/8d89GLtz9bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oDwjFSKjSnZLu2oeJO2U/iD4vCLabrUxy9q8VO9U5f0=;
 b=ANQdXr/CWgHEW3jdbYI+oXTxo08Gyq49bftGhdjwubOIC6nXSqs6DRf7oz2oQPac9JmfDbhDRUkT6zxcigwmaQ7Ix0/c6nspQd5cDd3U9IcNK3hkKCa4BGMit4U/889B0sJBjOAPNx+Kt4POA4iU92J11i75QuLiimkwSC0ifaXlB1c9SYjaukfI7xlbaeAAuiP/UQnF/1jGlIsjCUy9Af9zt7XSAZTBOOsb+ruVajWHWJ293wIX6dpX5cqaECm9nx0fZIDxlNxfBGhEQTxnKLv+OZi3QvRbn75Req0Bs/2c8QbA2LjsQWusejhACbc7VXdYtu9tfbR6rD7K1tlLyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by DM6PR11MB3388.namprd11.prod.outlook.com (2603:10b6:5:5f::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Wed, 23 Mar
 2022 10:31:53 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::48da:a7d6:83c1:7e22]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::48da:a7d6:83c1:7e22%7]) with mapi id 15.20.5081.022; Wed, 23 Mar 2022
 10:31:53 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/edid: filter DisplayID v2.0 CTA block in audio
 detection
Thread-Index: AQHYPN7gnUc+qLr2WUmuYCZB8bB98qzMwNmAgAADNZA=
Date: Wed, 23 Mar 2022 10:31:53 +0000
Message-ID: <BYAPR11MB271097CC39080E466B5C38E5A3189@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20220321044330.27723-1-cooper.chiou@intel.com>
 <875yo5j88o.fsf@intel.com>
In-Reply-To: <875yo5j88o.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 26938126-01ee-4501-93c8-08da0cb85932
x-ms-traffictypediagnostic: DM6PR11MB3388:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB338833FEA06ED680C80A1B0CA3189@DM6PR11MB3388.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lq+rV8bUV2Y8A5yCXD93t8rItDXNSWMqNqnQFWmlszOnqPsh8Y7P34WPja7ZoJarjX/Pb3HY1GHMTzd6DQBENby7kxnADcYumadO3oxRQZn91TfXcJoDIQVlrQVsfhUF54EZzSMk40HDKVfbV9nfBzS426auaH11ei62+UxobItjdwFgWhjqFYFi/Y+QmfRFmfrNuKfXX3vBDs2ZmiORAZOAdWuAGuQMcR34DoGX+Hw3Tw1H587C7iDolabvSDSq/8i8a5u4/5vv3uuxmeIXPgPZ7MnJyGqr7i9teWfKmzXQKM9Z9f++wBphNboallQ/p0VXlqt7z5CKEKsGjn0bnNOzKoYBrkMiBB4JBwdrbzvU4Jr91f2zyfyhdX6hqz8zjNjooV4DM8MF6RTWSSveq9rFmtvmpG1HOy1zivXz6daI4wB02Nde++tQKhrTimzb15+t3Uj09w3AkPgoWHlRt5d97uHLO9xEW1BTTX93vT1/ggrXEfhfEBQsMtLkdPA0iDqN3qi2tXh/KX++famaWeYfkwAbfqvDtMACA5sxsE2w/twBlMBhOlN48HUgh5lNmztfFVtoarET+mOOPgt+gXoSrKMn1q/1xQKQM4QWVYOVUOYyNswH/oyYaFMWx/yCvGebOTZOTrbuYg+e5s+gFCuenjh0UMeQCY55ABfPCEurNJEdZ4rQHD/PSz6DV2cC3rsh5T7IGCuSzeiNnsdthw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(66446008)(66476007)(76116006)(66556008)(66946007)(82960400001)(64756008)(2906002)(6506007)(7696005)(55236004)(55016003)(38100700002)(33656002)(186003)(26005)(8936002)(508600001)(9686003)(52536014)(86362001)(5660300002)(38070700005)(110136005)(8676002)(71200400001)(83380400001)(316002)(122000001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sQ5ecKSNX+VKtw/f9Lp0fyeGpNcB5AjLV+1fDbH3bSe+E4IdFI3oC0KqWkHH?=
 =?us-ascii?Q?jozayhdQ04K70NHaHOMxIkf5fGwgh8ocy86L1lXUcPNgaTFVV+eqXhdWFBs1?=
 =?us-ascii?Q?vXUCFoGwAsSdFJFYc6Wiw4GHTY4L/DT+69s8iudb5hFVvviDwvObcZvJxyJP?=
 =?us-ascii?Q?hlMt7DLNvp6NAHrrvExH5X95uKqBdqVFfPOROsgnLr3GDAM6xKAVLAP7V+Ku?=
 =?us-ascii?Q?ApPQ/Xq99NIEfMrWd7aK8MOSFAyEYTIF8E05V6+goJvnW36h/w79wfXkATCS?=
 =?us-ascii?Q?Sq44ZsjOkIXwebYaBOhoSjmy91rSdcKEPNpZbhsgIETg2EaFgoIthk2ipIg5?=
 =?us-ascii?Q?hnb0QVXvKaRmMccBsB9CTmKZZA4HSXDg1sfHrt9gXrF10msGGRYT2Wx6ELi+?=
 =?us-ascii?Q?vs3GYaOEEx08cmoPMi/2n6yzIJIosMqmj6XAL8O7r89AWLjCpcC/zOiL83K9?=
 =?us-ascii?Q?5RrBDLE/CLo25qjPNI1JRuUQ3rduV66iwi1Z6Q+niJ04NcZAd6hgCDHvHhfU?=
 =?us-ascii?Q?v3+n1PP61c0+3FAGaP65emlYAy4aK7q1am3U2fR48t1tvPsG6BhBNCtGGk1E?=
 =?us-ascii?Q?EMIURaUTc21rvSc0YOHvZ/NoyApcJgavnAsOOYpJDpkdgq+kyuJgHTgM9Tjr?=
 =?us-ascii?Q?rHPlP0JtM+ZpCqNpqD14hCedeO6uaOXF3mZ7DA8BRhqAwTJbuDk0epUOBVMI?=
 =?us-ascii?Q?9Xify+evWWeKkN1LZZXVva/cgqGmo0zd2/GpHb176l/kIp1mbzTTyjjKWQwD?=
 =?us-ascii?Q?f96j3I+sKQvwx+Ky7QXwWVd8PPl9t9DIG3xi8QQfypKra9eKLWoflw7ToC98?=
 =?us-ascii?Q?rv1pQkzgWkWEVSzsRWzz9egHAGXeeRON48aVh+CqbMvlhdOwuJDYLhwYtTyq?=
 =?us-ascii?Q?EV+6GZpYZ4KbvWG1bZqQ7alLKNt5Kl9FblEvjfUT2Rth1VKlnhhQzoTwuZ9A?=
 =?us-ascii?Q?gs7IuBzzwla9bcoEb5QOrX/hrKbXv7YUDaOG6IB8M+8c9/hQwoYLGR3gYYUM?=
 =?us-ascii?Q?3rF9qfPID5Hs6vu1jasAeg5s8UAekXDqwtvsSiBgiXl4YwBKTWQZau2niCjs?=
 =?us-ascii?Q?ZTABO2gZOAZwwmCc8l4X82EjwJA39aOjPKl2sVh4E+3aeRxX6/Tyeo/T0HJg?=
 =?us-ascii?Q?LSrYMZF7mv8u7mbtHmNRa9NT0FYScPb55PJRMOOvf5hYmNZXFn4zsrFhK495?=
 =?us-ascii?Q?Qg58b9qOKsnspMguH4eOUZ2gbvwdvMCgiDaAlP5uAu1urcIgMhLo7Ol+4KRL?=
 =?us-ascii?Q?s5pELc96BwKlKX0TrHrYHTS654vY7sQXbEPrhfYR/Ph4J477NM6aY84zJLQU?=
 =?us-ascii?Q?vCnV61NrAbdyzGNuayUJA3oO6poED3IlDLs6ozxkrwC/6zwT5J/y/AuL4Fsf?=
 =?us-ascii?Q?/offatd8v9Q42cz9ZMMWwvLhxzedEiPg+YfCu70/N6msk/uO163SAjqCGh0X?=
 =?us-ascii?Q?U+Tjw+BYjl5kfPE9reMv71PIZHPwBu3O?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26938126-01ee-4501-93c8-08da0cb85932
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 10:31:53.5255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dTB4xwyc2nUri1jDmP7oGQMO4qnulaZJvzRI4Z2iZUhxrzX43tPlLvCQc2rI5KJvLjh75I6afaqgK0Fk1txCUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3388
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, March 23, 2022 6:04 PM, Nikula, Jani <jani.nikula@intel.com> =
wrote :
>On Mon, 21 Mar 2022, Cooper Chiou <cooper.chiou@intel.com> wrote:
>> In DisplayID v2.0 CTS data block 0x81 case, there is no any audio=20
>> information definition, but drm_detect_monitor_audio didn't filter it=20
>> so that it caused eDP dummy audio card be detected improperly.
>>
>> We observed this issue on some AUO/BOE eDP panel with DID v2.0 CTA=20
>> block, and fix issue by adding filter for edid_ext[0]=3DDATA_BLOCK_CTA=20
>> case.
>
>Out of curiosity, what does the CTA DisplayID Data Block have for Data Blo=
ck revision?
>
>I haven't found any mention anywhere that it should have any correspondenc=
e to the CEA *extension* revision number, which is supposed to be 1..3, and=
 really only 3 for about a decade now.
>
>Both the DisplayID v1.3 and v2.0 specs only mention revision 0.
>
>BR,
>Jani.
>

We don't get many issues in EDID with DisplayID structure. In this case, th=
e revision number is "0" as well.
As you mentioned, DisplayID v1.3 and v2.0 spec define the block revision va=
lue is always 0. Do you think it would cause any problem?

Best regards,
Shawn

>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Shawn C Lee <shawn.c.lee@intel.com>
>>
>> Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
>> ---
>>  drivers/gpu/drm/drm_edid.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c=20
>> index f5f5de362ff2..6c9ae4b130bd 100644
>> --- a/drivers/gpu/drm/drm_edid.c
>> +++ b/drivers/gpu/drm/drm_edid.c
>> @@ -4845,7 +4845,7 @@ bool drm_detect_monitor_audio(struct edid *edid)
>>  	int start_offset, end_offset;
>> =20
>>  	edid_ext =3D drm_find_cea_extension(edid);
>> -	if (!edid_ext)
>> +	if (!edid_ext || (edid_ext[0] =3D=3D DATA_BLOCK_CTA))
>>  		goto end;
>> =20
>>  	has_audio =3D ((edid_ext[3] & EDID_BASIC_AUDIO) !=3D 0);
>
>--
>Jani Nikula, Intel Open Source Graphics Center
>
