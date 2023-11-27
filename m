Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204727FA8FE
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 19:32:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE3010E0A7;
	Mon, 27 Nov 2023 18:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A65510E0A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 18:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701109966; x=1732645966;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=ozUhRk9nIuKwl+RMw3GIdcx9u6vjUOjjrSiclvqu+O4=;
 b=D6nPApp1k9C8jI278cXMblIfeZ6aRiSlczXCOf6jAPhQJdDQJUZuQgb+
 ktJJ13WRQPV9rp9k2QnlhhAzHq6yFc5o6AyoePJg4YYRQswN6RDzsVpGw
 Fos8+nLrc+CjGWHOxamHjLGwJkF34EOWUXCKqnzUX4JjV7oA81B1A1FVm
 B6aqRjw5gqxM5qtxH76PRO7a2Vv8mzvIU15lLEtPVFopp2N3bq+3FPPWD
 NeEvwudXKYUpPMiSSQjbs9TR4fau/Y/IjnGOquB+jS4Tov3nypMnAUyX2
 BUROCQ4/HqhzALDCcarsvNI/8xExcTDqmNA+o5rNTtUw4ATvYk9SzRfos Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="478958504"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="478958504"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 10:32:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="834400657"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="834400657"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 10:32:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 10:32:45 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 10:32:44 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 10:32:44 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 10:32:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ovf4z7pY/eAoirlBw1Waa8+casGMzWcaE8DWau1rD4kOCBUp6fDTgmCVNORlG9yg/fCxetXmo+Nxm6iEZAX21/ulLFzA4NSnnnPWtrvtBQGzGRTnN63SwolVAW37wO0thKQRhfB/B6h+wV0u6ucGmAzzFG2iofL5l3J9+LfgR+d2VvZa2IY9bBTuJ6XBw4R5vt8RQoYqd3yabt5gtNEIIj0hsiwZIoDijY7h0wcZeSfrO4X6ZQb8OZ+SpIQy4wHd2RjwZyipY17GMJQ/Zhydya7Td3dNIOswIwWg8kWBwaLqJSauZ/iD4FSO+IMe3cORwiqcRnvpoohfD1Onf2W5wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZCxBfnNi+IHy72FUsmm9BjPMyPr+QYChiI/sdO9Spl4=;
 b=OY+VijdDMgvCRsOXWdLIwH+cdPVD8M2SRpVT1RzwGxcnaG6B8vxZe7lCbOsfK2VcnCMLcELDveU5tex7gDaHGVyhAf5XwkG6BuvmZLD+5kYCrx5qPSJmRWsDhtKhlKYZ2bLP74gExRENUZCApUJmsOo4AXBj4d64RwgjFuxsEkQDB3c1BIGj1jvfoTdkRdFtJEMxW8E1PAEYg+0HFqMAw9IpGheohp1B/GRrzddf6Bg5OSW6H4sdjv7OiTFWc9MHE3QpqCSIfKr9nyH1bU6QWnbxcpoEhr7NArJcjXPhZ6W8HPqJkLIk1vm/E1xMOAK6g4jDXM60MbYbUDrjIh0ITQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA3PR11MB7526.namprd11.prod.outlook.com (2603:10b6:806:31c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 18:32:42 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 18:32:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87o7ff87ol.fsf@intel.com>
References: <20231127154702.979401-1-mika.kahola@intel.com>
 <87o7ff87ol.fsf@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Mika Kahola
 <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Nov 2023 15:32:37 -0300
Message-ID: <170110995777.56286.5633956627662473681@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:a03:333::6) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA3PR11MB7526:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d17d7f4-69da-4129-9378-08dbef773db9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VxF9yiV3yWkter8y/USpprAe5pBMxVkyVxXwABqTq7F6uA50z72Ia9gSeUTsiNJFkfvjXwd8CXc/EC73bMSFonC6jI8adDbHLNwIEP4yFLSpuwFDKU5eHr2Ci9bfR55Go4rZJa3JyNyNjvnG71mQO+5QU8G/9cewVaiOKkKVzXObPRi9LEOEDFiD7/Aq6nB7AbPBSN0SDZbgULhASPxtJTyGwdcX+G05onupwbeFeiNAlZP9cTXCcCVfkDoRLIlZXoo9PCTDWRP/ktM5g6kOBbW/7ebZhYMumMmAWW5AYXlXUessYo02Fx9C/Dm8F9g671miZNxIES0kAgroTBOtftdXXmUdmFqdkjbx2Xg/2L+txR3udFSrK/JUtpHRpEH6yBUGqs1m3a5E1wrIPsXasb6iPUt3Gc8p56wWm+e6YCfTLL/jkyV7R4AjEdsbMRKozvn6s0fH7sokvr+B9jwLKMHna9GRqYu+J02z0jWP7BD1patFDnxQU3zPSsO6vfgPlDo1TVVQMGHyOHAVcZNObme9juXPMaQ77tZuAz2aFNiP/PgOHk4uQyQLqJsJogkf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(376002)(346002)(136003)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(316002)(9686003)(6512007)(6506007)(86362001)(6486002)(6666004)(26005)(110136005)(478600001)(83380400001)(82960400001)(38100700002)(66556008)(66946007)(5660300002)(44832011)(66476007)(2906002)(15650500001)(4001150100001)(33716001)(41300700001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cm1YMWR5Nm9ueDRMcGVsMnhOWkhsZFlTZVFwNDFaWFpEWVV6Y0d6cnpFMHZG?=
 =?utf-8?B?VFhGc2VZd2VBME92ZEh0NHNycFA4OFlCTWtidGp3Mk5saUFHLzdaUW45d2xP?=
 =?utf-8?B?SjBONW9EZHhiWVprRHpjamZKZnlqWUFJT25HSVNNK2ZmUVRRQllrMjh6b2Y1?=
 =?utf-8?B?bXpaVFZxYzQvelVYek1JL3c5RlNvMkllSHBualV1aG42dXVDWUpkZlM2Zm55?=
 =?utf-8?B?VlFTb3pQcTlpVEtrZm96eWszTmxqbDRHVVVHeGVaUWd1aDVQSG44Ulp0SFJX?=
 =?utf-8?B?RGpCT2dJWXF5NzZMYk54aG5xUXpmVTFaUUd1RVJKRm55bUdELzV5bFRLNGI0?=
 =?utf-8?B?U1VET1cxSU5PZUdRMlRpemlTdU5FMXROd05mRmZ2NVc3blBiejFBbllsK1pN?=
 =?utf-8?B?OHdnbSs3SjF6aCtsTVJvaTlTQ0RlN2grNVBJdXI1bTJMRmJDS1FKR0lJemlk?=
 =?utf-8?B?QzJ4bXdzeEtjclhmcXhPVHpIVWNJRU96TDRwaUhHSFJUcXdWbTJTQnFmaDVC?=
 =?utf-8?B?aFFIckZLRXFBaU1TbURjSnM0UVc3SHRtb01rTDkydDFUcFJSVDBlbXhHU0Nk?=
 =?utf-8?B?ZEFTdVdJNloxOGtDOVZZRDBNVHBQd2lIeFJBR29lSGgrdHpiYkxLblhvcklW?=
 =?utf-8?B?Vm1PckpoUy9mUnNrWjhLMFczeTdERXVwTW1KcGl2eERTd2swbHpscCtJNkYx?=
 =?utf-8?B?SXVOUTZ5alpIc3ZsQlhCRTBVSFV2ckFPaTdodnVmRGNmRy9TWFg2SHgwN01i?=
 =?utf-8?B?SEdWQVd3QThRblQxTUEva2NmMko0TWs2WEkvaXlLVXZjcSt0NTcwU1g0UDlQ?=
 =?utf-8?B?aGwxclZ0dEZQMkxzaWtyVGZKQy9qT21EdkY0dkVYVDB6WkVTMmpnN2xhcGg5?=
 =?utf-8?B?VFV6NUdJakJnc0tGMFRjcWFyeWpXUWtqc3p1c2lpMXRzRzNJbGQ5eG02TExU?=
 =?utf-8?B?WEFRSGFJckZvd2dCK0NDNE5nbnVMdktkUDRmNjNLV3pKRlZuVGtFdmFoeWds?=
 =?utf-8?B?WGRwVERFK3JYV0FmbXM1OWVLdFdnNnM4RHR2c0lhTEVhaGFKK3hFMXhOWE4r?=
 =?utf-8?B?alE5OEVTbkhqMnhwTTUxenI0dXJybXUzMFptU3RDbDlKT1dXQWIvbC8rQUVt?=
 =?utf-8?B?M2p3bG5jS2NJdzhyM1hWTDdNd0RRWURwZGk2VEIyeEZTR3JsRXhKd0oxd0Zw?=
 =?utf-8?B?MzVYbUUzSGRjNzB3Nmplb2UxRUprZDZ3Z2JiOVVkZ0dKa1U0KzQxSHd2TWVU?=
 =?utf-8?B?WmZ2a21CUDBHdFE4dE96SmgvZFpmWEhQb2xBenVSV3VUV1dvZDlYR0loUTZN?=
 =?utf-8?B?WVR6dzJkcmFHUHhVVG1uekplMmhIVjdEUDJWbllXaGdyZFhuUFRVdGs5b3oy?=
 =?utf-8?B?dTBtTWtIaDBHQWxTQW9xdEhOZE5Xb1d5SHkwaGJZbURYUDJ3MzhPTDRIQVNT?=
 =?utf-8?B?MHE5TnhxcXIvNWRVeUtBYklKZTR6cHlkVmwxNmxwNXduSUh1eUpTYlJ2SHA5?=
 =?utf-8?B?SlJ1ZVBrbEFIcm0yOTJlalJTVUM2Q1VXQkJ4MVkvd3VhalFwUUoxQnhlY1J3?=
 =?utf-8?B?dGhVaUt3NWJwNGVKYUs3OUtweXVYVTBES1JJbHdZK29MWnFaSmhlaXJ1dFBP?=
 =?utf-8?B?Tm8vendtbjFYc0crOW1JUC82bWx3SlVOM2tGb2YrUVl5RmlyZmMwWms2Nlpi?=
 =?utf-8?B?RjRJMVRQRXdvd1lCZDYzUE1IamhHc3JJb2pIUDhJd0V1Y0hVekV2a3FZOVVj?=
 =?utf-8?B?dTc5TVY5b29Cc3lDODVoNTY5bVhUc0EydlJGTDdQU3JuVXRFeWpuVzhwd002?=
 =?utf-8?B?MUU5S2gwRy92RmJYckg4S2NESTZyMlp6K2lwT0tMTkJHVUpob01JQzBJNzZ5?=
 =?utf-8?B?dmNDd2c0cnZoQk9Gc1lCbncvbnNvZzJqeGljVlVIVGFlTEpUcTZTM2VXRFV4?=
 =?utf-8?B?SUdjamxnMllYZGRkaHRCMG1tSGtkcTIyWEhJRVdaQm1XUmlUN254YldzKzI0?=
 =?utf-8?B?d05MUDkycDZiSlpNNjBPUWZiWGlpd1V5ek1nQ2lRdCtISmQ3UlZJbThMY0sr?=
 =?utf-8?B?eW15ZlMxUUhzc2YxbjRuRzRha25tVjZEQzhEVHlLMTdsWTl4MGJ0NVk1alNw?=
 =?utf-8?B?Vi91NUR0VHEwRytOcVB6ODI5VkdsTW8raGZkT2I3dmViTFpmVGdLcUk5MUdU?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d17d7f4-69da-4129-9378-08dbef773db9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 18:32:42.6805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q1VJUx8bevjhycAStCv5LXRGMSAPtzgHGkpzj2oukI26vs875j37Ap0F7Dm8T21vNXDRocqST4/VwrhtJe2whQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7526
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification
 with TBT-ALT mode
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

Quoting Jani Nikula (2023-11-27 13:47:22-03:00)
>On Mon, 27 Nov 2023, Mika Kahola <mika.kahola@intel.com> wrote:
>> With TBT-ALT mode we are not programming C20 chip PLL's and
>> hence we don't need to check state verification. We don't
>> need to program DP link signal levels i.e.pre-emphasis and
>> voltage swing either.
>>
>> This patch fixes dmesg errors like this one
>>
>> "[drm] ERROR PHY F Write 0c06 failed after 3 retries."
>>
>> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index a8fa76580802..3a30cffd450c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -418,6 +418,10 @@ void intel_cx0_phy_set_signal_levels(struct intel_e=
ncoder *encoder,
>>          u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(i915, enco=
der);
>>          intel_wakeref_t wakeref;
>>          int n_entries, ln;
>> +        struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder=
);
>> +
>> +        if (intel_tc_port_in_tbt_alt_mode(dig_port))
>> +                return;
>> =20
>>          wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>> =20
>> @@ -3136,6 +3140,9 @@ void intel_cx0pll_state_verify(struct intel_atomic=
_state *state,
>>          encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>>          phy =3D intel_port_to_phy(i915, encoder->port);
>> =20
>> +        if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
>> +                return;
>> +
>
>Shouldn't we read and ensure it's disabled?

In TBT-alt mode, the PHY is owned by the Thunderbold controller, and it cou=
ld be
in use.

I guess what we could do is verify that PORT_CLOCK_CTL has the expected bit=
s
depending on the mode. That could done here or in a followup series.

--
Gustavo Sousa

>
>>          intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
>> =20
>>          if (intel_is_c10phy(i915, phy))
>
>--=20
>Jani Nikula, Intel
