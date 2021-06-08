Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6F439F22C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 11:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899C66EB67;
	Tue,  8 Jun 2021 09:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A1176EB67;
 Tue,  8 Jun 2021 09:19:42 +0000 (UTC)
IronPort-SDR: hQI61e+p3GFqaOSnoXvCKzdOG+X+t9o4nPlc00GzC3XEyOW649jlmEwDKaNRYpxAiLhLfDD4iT
 ket7qyklTNcw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="202949071"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="202949071"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:19:41 -0700
IronPort-SDR: hiHRh0xSCyhu7XwGEiOx+U/qjLe8DWU2Pz9Vze+FEuv7javCPCiWtLptRfDzVMfXkij+EKYgNt
 Z0sOJ2LsxoQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="413318872"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jun 2021 02:19:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 02:19:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 02:19:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 02:19:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ts3l72nZ2r8ghPlaK+MwrGK1LeAO7kOTuhNavo6FvwaBsq54xxgBJnWp+1DXG67LtJ5pWq/520X6pJ2+IeLgWiRD7bifrZGqLbV/8VXF0PZUuaTBde3JlP1VWwbQLHyp06Nm2gp3KlCoqLy2+f7bryEZEO7QI5ZvhCFYD2khYQI++4x6ZceXRKSTzMSPPW48jJsiBdc2Z1GvtiTFiENlPu7O+oG7v2Z1UMf59JD4uc7E6Xe4mIIgO2mtMYD9UkssHYDAHG7ZbdWQTnsMGEgYukwbQtcGPCQL3avwIi0PcQcpCqXqvQzqXG4tn1pTvSB8p8Nd4FP0+UEdFdE1zwZk3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g1svGxx4nWi/mTA0tUSXit2QGaNaUUjSwP9mudfyKrU=;
 b=gtn4k8qXrfSpln5yDczmkHbRUyqIYnct+9i2wQGQaJvuvftjqXA4esqyw3KYyd7MbPYO3Iypl33pg/ZZKFIeE1hzXnivzoZ+X7DyYHTmh0aXRR2U8aa0130EWqwzyEpBYor63hRBatJfo6omVlxDj0yDqWOTgM1In7Km3ZnzZfMpX0M4IaOvw81vGQoXNvybqR4AUuqzhe+svNhCMVZMzltOb9GQQ/vjX7Rci26/VeOWbivCUOI6WkNI11+niIxzNAyBZpQ9Ei3kvaO8sVJvYaqtN555gys0cRtwkfg9evkmv02pOq8KSvzFulHXiZrD6TU/0BxZIDkzu9Uq1EMVPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g1svGxx4nWi/mTA0tUSXit2QGaNaUUjSwP9mudfyKrU=;
 b=p0oSO5qe3RyJ1DY7mrd1mBl99n0KsenbyqNC/uDQyfq655CPeSpHOrAR/qjUo4LXdtw6jCkQIic0vgyykWk+YkZeAmQun7QJL2hjgEkQ4J/Zql1BfvT10KdMSnCSp8RhP0iX71kryBnE+69u+g22Gi+YOjRXk+TiQ3OlTY/BAro=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by SJ0PR11MB5198.namprd11.prod.outlook.com (2603:10b6:a03:2ad::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Tue, 8 Jun
 2021 09:19:39 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 09:19:39 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>, "Modem,
 Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait
 for vblank before collecting CRC
Thread-Index: AQHXU3r+0BLlTn3Au0CMvXxolxn81qsJwWIAgAAI/oCAAAPTMIAAGIug
Date: Tue, 8 Jun 2021 09:19:39 +0000
Message-ID: <BY5PR11MB437298B9B622322E6663495E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
 <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
 <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92b695c7-a4b1-49cd-b693-08d92a5e8ad1
x-ms-traffictypediagnostic: SJ0PR11MB5198:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5198161EFE225F5E5EEB98A489379@SJ0PR11MB5198.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k48fjcAhQLe6hKXKepBact6CVnbvyXop2lRjLPfkqIWqBFTJqItUtBTVyG2szj5PpMCxwder369VPKqDTUe41cbA7L1blCBsMeHPktKektFwGrl4P7repyu08W/0q+RCOnGhZYyXoKYWooMoiBkZ1Nerg8i+uy0w829rgHhT5Zr2Bi0NSTm4JmOa9jcX+aK2ComfqvfJw52Lc+9Rz1DOD7Suk8bs8dzzCOQ2/sXaAuWwCPqtjYZhkYzInysaNlxeDvC8enMYjtZv46qklHlQQSmmvRo1EPw9z6z/z0ZEsFSD4YznD3AQq3YlhZf1Lel2DuqAbJr7ODFwcJWV+w2PdZSUy1SWEKg3VwwbjLogR8cxYHzuDsYZfCn3ZMdkTXuj2YE5wmetc6mpBiq5O21zSxWETXQn5L2R8SXsR8AZBjMwFA9yn7uVKccllNK8Kw+y/SXtzwtJ4fgKIkVIP7aJ/jpO1e3pXadtHE+rs/MkEIAUeDcHmKqgvVgFlWE4uCBS9PInBl+6k4O8EBy177qv1QJQIhBzI3JmxinEPlipSJomyLTQ2NEtMIx3+XTcij1Q5kvVAmOxQ8xpoCG4H4nxsqHdV6Y0xH0aHW34f3jYmE95TjQ7HRneUgll+2W17HRridaEqTxZFQDgCtpgsiDcuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(346002)(366004)(376002)(39860400002)(5660300002)(478600001)(2906002)(6506007)(53546011)(7696005)(26005)(86362001)(8676002)(110136005)(52536014)(83380400001)(966005)(316002)(9686003)(122000001)(76116006)(4326008)(66556008)(55016002)(33656002)(38100700002)(66446008)(71200400001)(66476007)(107886003)(64756008)(66946007)(2940100002)(8936002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2VIRGNORjduSnE2bVpzYjhIZzRGUzdoRU1HTXZldi8wVm9FdEZBZFZHUk5F?=
 =?utf-8?B?eGs2aldvSVkrVHg3MVJHOUlwYnhxeGFxOC9Ecjh3bjlDSTJia1g5SWhUY2w5?=
 =?utf-8?B?ZGdVeUZsM21vRzdMOWNPb21RZ3Z2L0VudzExcDVzS1E0aFVsNnVYL1RTcEhT?=
 =?utf-8?B?cjBsOGhleXgyWS9GZ2hLS09VbmlVejU3YlRSUlBnaUlXUGpsTnJ2WTlOMldq?=
 =?utf-8?B?T0h4ZTZTcW1pUmhhKzZBVmxuNi9POEZSTkxhQlRJME8zTkhTcmY1OWNJak9C?=
 =?utf-8?B?SjR4RG5TMGo3cmhFcG5PMmFhK3NjenNSRjVTK0VtVVNEenY4YlB0ODMrYXVM?=
 =?utf-8?B?S08yS0U1NnJITjRSMmUzcEs5UUUxakZpNjNVVHRxY0hKQ3FTNkYvSmtjMXlt?=
 =?utf-8?B?WndxUDF5U1FzWGh2eExsOEZ5cFBpaFpsaHJmK3NhMitBVDYwbWdxaHA2UTls?=
 =?utf-8?B?dHdndERlcDB5akMyNFFoTGxwa3VBUHd5bmk3WkVYMHcvMkUrdUpFNFlSaG9h?=
 =?utf-8?B?U3lFRnlLZVcwTnRjRUI0T2NlOVZxQ1NzVHpRZTBnaFVnQUFVNjRNbnI2RUxO?=
 =?utf-8?B?RlF3dEJDNFRUL1dUK3lKV3FZYlQ4NWhtQXNvS3V0d0FuMUxtaC9NVFJGK0t3?=
 =?utf-8?B?M1YxV1RvdUl0emZyUXlnTHM0WGtVM2U2anBHZGNKc2pyOEdtOWZWSExhWTZj?=
 =?utf-8?B?RmwzN3V5MWtmd1NlOHdKQW8rdnVEaHZiN3NXK0wyKzhtL0h0aGxoT01GOEo1?=
 =?utf-8?B?ZTNkcS80RW9iM3o5U0FMYitxbmthRlBZenZMaGlBQzFMRndiTStSM1ppTUdy?=
 =?utf-8?B?VnMxc3BtN1JNdTZ4c0YwWDNIeHovK1lMaTVCZk9yUUo3eHdtZFYvc0U4L09L?=
 =?utf-8?B?YVhTb1UycmpJMlVScUlMRzJVV1dNelpSY0h2MjF6R0ZYRzJJQkNUeDh4bWJO?=
 =?utf-8?B?ODFvNEpzeEFZd2cyZ0JhemplSjRiRytJK2cxM0N5S3VUK08wZTFLNkFWNGJG?=
 =?utf-8?B?ZEdkNFNvWTRyZUJVSWJtT2h0eGpyWkprVGZPSU9ZajMza1M2MGJBTjZZcy9j?=
 =?utf-8?B?S01ZVVBIdW5SMlYyTis3bVpyZGN5SVNqUnc4UHhNb2dJK0tvU2lScjJQZEJR?=
 =?utf-8?B?YVlsd0lSWmNQK2FmQm1PVnpvbkwrVStxZEdrd01wdG9zS1lvL2Z5K0ttQ0JZ?=
 =?utf-8?B?dnh1V3ZvQmp6YUtjcHhKN3RlTG5qdXVJTnNpVUUwTTNzdW5zTTVuM254UEE2?=
 =?utf-8?B?YUdBZFpsSER4Wk1kbGVhbE1EZ2VtdnpPaEFUMEpvZnowenN3eDJmMExGVGNj?=
 =?utf-8?B?NW9GRHd5QTZRY1I1MXdDN1ovMC9xalMrd2hTd3IvV1Y4alhQd3prTmswQXBD?=
 =?utf-8?B?U0F0cHNqbUgxSit1Ulc1MDFLNWNrZ3lKd1hrbFBxZzF4QkpwdngwRE9wQUZX?=
 =?utf-8?B?eTAyeXdzVzBLamxjb2VLQ2xRaEV3cTMwaVh4Yk81VGRsTkJ1d2JjVUhObUY0?=
 =?utf-8?B?RkRmTjlGa3FBMEZ3cW5iYURQRGk4dWZBbldMeTJQTHpwRWV2ZGNNVlYvenlZ?=
 =?utf-8?B?aGFObERNZGh0SlQxUjdaWEp6WDVZeEI4d2kyeVRNNWx6Tmt1ZkNRVjFId3Fi?=
 =?utf-8?B?My9nUnlqWE1ON2Y1dVRJN3NvRlQ3V2pYVzcrRFNQQTl6T1I0SlV1elM0Vi9N?=
 =?utf-8?B?Y1UybEIxWnNLclVidEdiZjA1SGpUNmhFcWVrOWkranM2U0NzK0xvOWJMV3Bp?=
 =?utf-8?Q?pHf7POp1vI5zrUnVClx4n25VNq6z3SPyukwteh7?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92b695c7-a4b1-49cd-b693-08d92a5e8ad1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 09:19:39.2838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PSNKxykUGzyxMoZb1QoG2seCVGgNr0pFqVlRbPANKf942a/HaLZGA2NBDxBqYzb5UeSJFDFCoCh41ovO7HDh1+RZ54zcuG0n4x5UsZeJodI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5198
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_big_fb:
 Wait for vblank before collecting CRC
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Juha-Pekka

Instead of wait for vblank, this also works
igt_pipe_crc_start-> igt_pipe_crc_get_current for small fb after commit -> then igt_pipe_crc_get_current For big fb -> compare -> igt_pipe_crc_stop

Would this change be okay? Kindly suggest. igt_pipe_crc_collect_crc is not working. It gives CRC mismatch for few subtests like subtest y-tiled-32bpp-rotate-0

Have submitted the change here https://patchwork.freedesktop.org/patch/437657/?series=90389&rev=6

Thank you so much.

Regards
Vidya

-----Original Message-----
From: Srinivas, Vidya 
Sent: Tuesday, June 8, 2021 1:19 PM
To: juhapekka.heikkila@gmail.com; Modem, Bhanuprakash <Bhanuprakash.Modem@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: Lin, Charlton <Charlton.Lin@intel.com>
Subject: RE: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank before collecting CRC

Hello Juha-Pekka and Bhanu

Thank you for the review comments. Apologies Juha-Pekka, I will incorporate your review comments and try out.

Regards
Vidya


-----Original Message-----
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Sent: Tuesday, June 8, 2021 1:04 PM
To: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank before collecting CRC

On 8.6.2021 10.01, Modem, Bhanuprakash wrote:
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf 
>> Of Vidya Srinivas
>> Sent: Friday, May 28, 2021 9:57 AM
>> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
>> Cc: markyacoub@chromium.org; Lin, Charlton <charlton.lin@intel.com>
>> Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for 
>> vblank before collecting CRC
>>
>> Without wait for vblank, CRC mismatch is seen between big and small 
>> CRC on few Gen11 systems.
>>
>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>> ---
>>   tests/kms_big_fb.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c index
>> b35727a09bd0..f90363c3beb2 100644
>> --- a/tests/kms_big_fb.c
>> +++ b/tests/kms_big_fb.c
>> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>>   static bool test_plane(data_t *data)
>>   {
>>   	igt_plane_t *plane = data->plane;
>> +	igt_display_t *display = &data->display;
> 
> For code readability purpose, I think we need to update to use this 
> variable wherever we are using "&data->display" in this function.
> s/"&data->display"/"display"/
> 
> With above change, this patch LGTM
> Reviewed-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> 

I still don't see benefit in this patch. For now all this look like is doing is slow down the test and if this actually helps there's a real bug somewhere which is not here. My earlier review comments were not addressed hence repeat here, see below.


>>   	struct igt_fb *small_fb = &data->small_fb;
>>   	struct igt_fb *big_fb = &data->big_fb;
>>   	int w = data->big_fb_width - small_fb->width; @@ -337,16 +338,17 
>> @@ static bool test_plane(data_t *data)
>>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>>
>> -
>> +		igt_wait_for_vblank(data->drm_fd,
>> +display->pipes[data->pipe].crtc_offset);

Above this line there's flip to different fb. Below this line crc calculation is restarted, get one crc and stop crc. There's several vblanks already spent here, if now adding one more somehow helps it sound like there's problems in crc calculation on some platform or kernel is saying too early framebuffer is ready to be shown. Am I missing something here?

/Juha-Pekka

>>   		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>>
>>   		igt_plane_set_fb(plane, big_fb);
>>   		igt_fb_set_position(big_fb, plane, x, y);
>>   		igt_fb_set_size(big_fb, plane, small_fb->width, 
>> small_fb->height);
>> +

spurious empty line need to be removed.

>>   		igt_plane_set_size(plane, data->width, data->height);
>>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>> -
>> +		igt_wait_for_vblank(data->drm_fd, 
>> +display->pipes[data->pipe].crtc_offset);
>>   		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>>
>>   		igt_plane_set_fb(plane, NULL);
>> --
>> 2.7.4
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
