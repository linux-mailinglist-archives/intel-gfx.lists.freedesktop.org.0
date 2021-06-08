Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC56539EFEB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:48:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360B76EB0E;
	Tue,  8 Jun 2021 07:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B6B6EB0E;
 Tue,  8 Jun 2021 07:48:50 +0000 (UTC)
IronPort-SDR: xHKB1OutNEA9tErIf8PTMIAvCOOsAYUd0lupJuG9pZtBXKbIuPCHND2f0/oAxEKRswKc61F0Sb
 KCUZlk4ox9nQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="184478270"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="184478270"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:48:50 -0700
IronPort-SDR: ROtosw++41bTGqpTh0tw2cEBvGIuiedrQB6jeYkRxvGMbiYadFtfACj6rQyvkXhM2Bu0B4Wq79
 RgmuKNheatKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="551518798"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 08 Jun 2021 00:48:50 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 00:48:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 00:48:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 00:48:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJigHeUjFNV0vm7Ry4YQzpJcGWIhV243W4bfqaOF1xutExLFVgdxxf9KdacY2+c1OCL5+IPUrfSfkhvtiV2vK0XDXSs/gblRfrFvPrWaKvXb/FkXM+jblH/Og8TGPnAa7DBe0Vm8X8mwkMpMowyWWXRPM9PEIdx525lVEIy8psiMzWNJoILoL5yajc4zB4ROviPOvp8LSV4SNTwZAxq2yP9y5BIwynlE+4d/Vb1OT5px7Z11AMNVbkKkbt6+XjgehboN8tweO4HQ/0bpz/tWqrE33yDsfvEm/2hNxivsX9gARapBvvmryOkJ4n16LgvqG1telvw/ym0LLdVGWokNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rJKENLa8pJs6y9/U+T3x0LsUogexQM+BduzErv5Pvcg=;
 b=KWEk+Km9/gzGV4AFnJ/kAIylEZNo7g+LDXT0zjTfWmVqH7ufHWolMObI45odI/SJadWcCZ6KQJbDl1Ub+aXUrxMhbUeMWgVkiyXCzVJH61K0Cs3P9euOEG5wlnsfW4ZS/BAStvdJoy4hQhOZGJy/7GWod/0gNpHFWgA27Zb2Qh6oliixEKQPwueML4SOcXJ6dwNwdA4gicP7X7+dDwiePiS344OMKm/POQeGqneU9Fr7a8tjoQ7Gt8SZ99J1tIy0Jz4ar2EMRPDWfcyunv4G+AM9zzQ2YcExGTI4X3pL1loG/CUa0XrZKfeftuFefH6b6oWGa1SRXJcHbkreR9/YPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rJKENLa8pJs6y9/U+T3x0LsUogexQM+BduzErv5Pvcg=;
 b=Kmd7BL8eZJuDv+EiuxjutHTdiDmqvTpIihxzqoL7gheUVw+9iRX4vsLGBERjDJkgTVR4jbtnOL8PjF6PFHE+dA751XycBCiTarLUVp/94OLuuPk+c+b1Sc2yjSY8Up5I6gemsoKAOtQNg21hiAVJW58agYGa8H91JameLVkgQvs=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4500.namprd11.prod.outlook.com (2603:10b6:a03:1c3::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.29; Tue, 8 Jun
 2021 07:48:48 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 07:48:48 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>, "Modem,
 Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait
 for vblank before collecting CRC
Thread-Index: AQHXU3r+0BLlTn3Au0CMvXxolxn81qsJwWIAgAAI/oCAAAPTMA==
Date: Tue, 8 Jun 2021 07:48:48 +0000
Message-ID: <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
 <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
In-Reply-To: <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
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
x-ms-office365-filtering-correlation-id: 66e71941-e0cb-4e94-b163-08d92a51d9c7
x-ms-traffictypediagnostic: BY5PR11MB4500:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB450034EAE52464F71616C11689379@BY5PR11MB4500.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rm8IfTN6NINwdik96kLlirB/ir4VSX9hyMi0Ih1s+6IfCzqy/4+PpU3cK1df4Xf/1z8rOw40KxsURlMFA1/8D4tRQRgAyhVfH+m1r73ltYkezE/HLGVyD2YH/Wegg+7Gtw9R+GVTo+VQ/1Lua8m+ywHQIUVF9gjyjFyGUT1lzQtZYReQfGMAQxovRacfshV3K+LDdmGVJdC5K8TlZ5PPIiwkH445xEoksFIbj9a4nhPAVYq4rp7rTZUWmLQBOwhVb2oYaOXOfpHRRyEK2papDklV+hCPdH6NmpbBO12uE/zjWerdXu6mfwTaIVuxcMge2NIfkokhhy6jIE3mRzeTpTwILfuIU5cpO9oSbrmmrC+kwA9jJuGdFicJvboteoN5kxGGAbc0fOQZRJhRjr+NRz5nD6WmyrgJcg3UCBMuSAP+5yvu+wsHjbVleUIcCTjFIWh1rXP/iecmilaV6iUnVtwt0v+tKXZ3pmGDouNv8vA+LInOG+m1qUpdCGOJ1VrD/YA+/SrWjY3bdq3Yl/wsMnQJWcOl2hY4jn9TzkKjKyyYAWqi4h1eHBTlvQymtnRU0JUtGdRTTo9BrGh/HLCxq9Z2I3YZ0amO4ZF8Vsg+mhTLmmUheL/2+PGbiVlWBxQtvOZAtJmMmagva2fO70bFaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(396003)(376002)(346002)(966005)(52536014)(64756008)(71200400001)(76116006)(33656002)(5660300002)(2906002)(83380400001)(478600001)(7696005)(107886003)(53546011)(8936002)(122000001)(38100700002)(110136005)(8676002)(55016002)(26005)(86362001)(66476007)(66946007)(9686003)(4326008)(66446008)(66556008)(186003)(316002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MjhRbDE5OXhKcy9jWW5tN0Y2ZFpxQk1ISmUyemd6ZHpWRmgzeHJZK3RNMjhN?=
 =?utf-8?B?V09SVEo1Qm9ZNUN5MDhLOUs3Vk9JWkV6ZURwekNvRGZsV3JFY2VLTm5wUVMy?=
 =?utf-8?B?d0RINWgxRy91aGhwL3FEbXlqQlVrMlBNU3dOTU92WFlacjZJR1RHeWtLaWUv?=
 =?utf-8?B?ZHNEZWJoRVBWZm1OSUNLbVUzTVlWTm1kS2Z3aTU5ZGpPUDJZMjF1R1Bra1N2?=
 =?utf-8?B?YTJZcE5MYTZrbm9Yb0hpTmhBZHpNbnl1dk92SnFzZ3JaSVZYc05zUTAzZ0N6?=
 =?utf-8?B?RVpkTlZBWjJqcGc3N0hreVltYXhySGk5dEY1RnU0WVh2OXpMMmI3VkxpNDhH?=
 =?utf-8?B?cWFGSWdLUFExQzVLNm55b21mTHR0NXgxVDlnanN0RnNjYU82OEc4WlBJdnBU?=
 =?utf-8?B?QStmVFVEWUZydWxadVhENXhBOUhuWHFPbC9UM2pMbEc1dnBISHh4WjY3a2xm?=
 =?utf-8?B?SC9wcStHWHEwSGZGcE5od0dJcm5qZDZOMXh6U3JIRWlFR1FTQjFKMlhvUWdj?=
 =?utf-8?B?NnNkdnc0cHA5TWUwNVVZTGVySnRJNDhLQmtzUHBCRHUzNDR0dHQ5ZDgzVFZr?=
 =?utf-8?B?ZHlvbU5tUFd1WDludjNRNVF4cmdzUk9BZTBOMVdUN3B4ODdEVVZwdmprRmdN?=
 =?utf-8?B?aHlaOTNWTVFQWU9tRk1kNGVFVDNENlNCK1BobjhxT0w0TzRsK0xFWFpnQ1F6?=
 =?utf-8?B?M3pRR2RMQUNQTkkyVXFmdkFRWkNlcllWRW85VEFnNGF4WGY1TUNWM3k4dHpJ?=
 =?utf-8?B?YVpPeHpGQVJwNzVYTUJQTXVaWWpYcGpaMllJbkovckRjMldzWkt6S0MrWDhw?=
 =?utf-8?B?U2tUTVlUMXg4MnR6K1dPT1VWYVJ0aVAzaDFZalFZR1gyalppRHQwVUlnTE8r?=
 =?utf-8?B?K055ejBjSUtrSTJ6ZGwrbDZlZGIyK0xSdTR5RzRvZUlqNXNRNmF1ZTZWTW0y?=
 =?utf-8?B?ZDBnczBBZjl5ZXFDQWJnSkR1MHp3ZnlzaUlrUkg5c2tXOHVZOXNkT2lMc2ti?=
 =?utf-8?B?eUY4blBjZllIV0JIR09zOTJhT1JzZTQxcGUyNVNGRmpOWlJJOW5rMkdLL2Jo?=
 =?utf-8?B?bnFZYldxdzNXQ1hhRGZJUjVudVRnQXJoL3pDN0E2ZDdobHFqd3lJemdiSFZH?=
 =?utf-8?B?OTFmM1hqbTlCMTd6ZmZyS05NbG0yL1kya0h0QlJvSW9IdG94OFlPdGRJTFVT?=
 =?utf-8?B?MDdiU2hDV3dGR3Z4RVByTFJPTC9zakR2dHl0ZU5nYVhySjZoY0VtL2l2Y0RE?=
 =?utf-8?B?K3gxZVpLTnVLMnh6SDBLeS83NFJqMlNuemVveC9odWRlUXUyZzc0ZVRialZM?=
 =?utf-8?B?VVQxY1dOYVpGbDlNcTZZZDVUV3dRZnJOWDZ1TEZIYnkvR0NINjRPbDB0cE9Z?=
 =?utf-8?B?UERhZythb3dFZlhaM2RuNXR4QS8vTFBzZnVRQU40RFFOaWlkWjh5UW1adEJI?=
 =?utf-8?B?VnNJYmtJdnU4WE5EMUJkOFR2ejFtcjBxdnFqWU1pK05jZDhVRHJsaldUM3ds?=
 =?utf-8?B?MDE5RWdBTTk5SGdCWFRMbGdROXl3clFFcU1OZ2FzUkI2dy9yK3JUNzFONFJT?=
 =?utf-8?B?WXpkVEJvS1FlblJCdUI2RVRKR01hTmJvampOSVFlcDlOV1Mva2tKR3NiMmM3?=
 =?utf-8?B?ZldmRmsvaW9CZFBqdzB6cnlLSkhCZWtaQTJJYTR3NUVmV1ZXZnMzWnQ3d0ZR?=
 =?utf-8?B?K0lmZ1BXcjRrQUxpV1V2OXltNU1tWURkbEJGUW9HS1V5bmY2ZEJDTGdPcVNU?=
 =?utf-8?Q?kBH8/fzktSToT01BV9nVgPzmQfQ9Vwra9qgCh67?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66e71941-e0cb-4e94-b163-08d92a51d9c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 07:48:48.1977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0EJvYjn7MowKHRaIv72OamIU+Fz7buENHaBB1wb/kyQcOLuDtiNSpSZ9bn+zte1irjpdQKWvqk1tOtPBJZa1fwIHc0KTsV+TQsfol6mnRLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4500
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
