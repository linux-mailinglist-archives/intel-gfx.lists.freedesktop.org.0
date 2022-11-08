Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E480262065C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 02:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB13210E3CC;
	Tue,  8 Nov 2022 01:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 995BE10E3CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 01:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667872658; x=1699408658;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BEUZIPokc9IsbTxY9DiUYGv44fzdzCBJgBroUJZZy6w=;
 b=ikzXKkuiivWTUL5FqHO5T+cRABFdCi2mf1J+d6M7qltlXyLYb3E7kr7Q
 WO0SIXNopgS+xXig8m7yCzSk2jstOCxtubqyw2PrX236TZTUZE6RHcnOF
 F9dX/4j3Mb2yBEAuAWgm+EKvag/LYmvJfeJM+RlBcL1q/dCygrD3rXdKO
 thiDmVnwYB4s6NlRSUQ1qKWnhlrAxWwPFiMhTEYY9ZS+busqxpHcmmYEp
 Ch6c9RJXU+6l7xoUaQsOmkEptCPsAqyfZ1qP/1QqoCJjBDpjSyxttTTz/
 4KRgtTXsxpMmX2fYXX0jpafyQ0Jhpdz+5aCe1jzQ1WOboUSpvl0DFtJBQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312363196"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312363196"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 17:57:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="778728057"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="778728057"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2022 17:57:36 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 17:57:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 17:57:35 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 17:57:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VRjBkSzf+XIgZM40+tg7sRr3eD5UlzYZVYbxVUx34I2KTnvesX4Olgi7qDlEgvcOkWNHYXYWdd9AcmcAF6LEpNRqdoKaJHSXSwUHE+u/BKm/RLbqqApfIIG1IbEH2LVyKiHyOlwBRHXYHWYLZGpC5+AkugeDKtNQ38fwxArLCqqbaHLhA+fFPS5tZbLC0fPfoQMO4/D9oICNZVGzrsR/5x8PsUoa65E1WdggJlBBamMAxrkkaiTC5mYf+OSWajQPo/1QsY1DQ3S1wk3zgfdY0yNfzPgnniFWQP+fYlJ4dox6gcBDNa6mWFGIsR68dQBSoAaEppKvdGd8YyRoH5NMGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9xwPZ6msmoih1ZXuxLmY38jQ7SynzmfA5CTAgs3eQUg=;
 b=gt0VR/v/lW7xgfR/P7d7Ww06mFZMeCkkDpMRQAX/F+ZuqYoPbKWXMepGTV+yILrbV8Kgzlf1Q+Rl++waXmty3IvNEYZkQZPbp0E578hCU2Ozizkah5USUh8qj8CsR+UbXRJoTk+VeVoMFLQctiAL5okur0oek+e3fM6zKIikYGO60yUM4bxFbxiggcRr6r/iylkiGDk3fQ0OZjtcwcPie0d3h5j1v5DOhecN7sl0j5fXM/aGEFTj2xQGBbIIdUFpIidmwKkxXO8r8PXqaY/dOujt5BATcS1j2PNqahk8QVAlk/g9JJhmgxAhKaeFVzTllShi4JKimigUUaeFe0SxyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 PH7PR11MB5795.namprd11.prod.outlook.com (2603:10b6:510:132::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.22; Tue, 8 Nov 2022 01:57:33 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%6]) with mapi id 15.20.5791.026; Tue, 8 Nov 2022
 01:57:33 +0000
Message-ID: <e883cba0-f11b-cf86-db92-e9322e1bc9b9@intel.com>
Date: Mon, 7 Nov 2022 17:57:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
 <20220928004145.745803-12-daniele.ceraolospurio@intel.com>
 <5589d713-c371-1121-ef74-58be63057ac4@linux.intel.com>
 <Y2WfpLbX1SeDtk+7@google.com>
 <301a2ee5-db5a-ff79-f94a-ef6014ca3a10@intel.com>
 <d1be3d1b-da7f-f1a1-cfe2-143bcbd99b45@intel.com>
 <Y2W8Fj00yaq8Y9ib@google.com>
 <ac5fde11-c17d-8574-c938-c2278d53cf95@intel.com>
 <Y2mzzzFLU9klpDje@google.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <Y2mzzzFLU9klpDje@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0070.namprd11.prod.outlook.com
 (2603:10b6:a03:80::47) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|PH7PR11MB5795:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a097130-8f5d-4f0b-0bb4-08dac12c9a03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZL+avKxFakME/BwgUgW8I5EQqnkNnNZyGLXciZraMmkCBGVf/VgBRJHB2XrSJ+MavOdAkr0l9wx1b3CmvsdST9afY7ZuqEhjHaI7BtGG5F4ns/moz4/8nMn4LWvS+IWYMEfiaZ4PdEkM4BctBR6ClEPnU7BM83XMI/m/eixRYke3tYGZXOdOGlBlAIb+oR7pGaOMfu3KjuTkGcIN8B6l6f/PlFF6h9i2aRESAwcfdWt54spcEypVL47F7VTNnET+s5oq7L8CLT9EYeDmGCDg8MvuYVYPRJKn5UVEWS4p2reBP2ivFfjRGrAF/cpqUmwEG75aIOLkLPysrte4ZWHmD79g48sxKaN/T3hgZDsw0nU1TMvUrpeZliaUCGv2GjZBp+s/EUezVmVdA8ygiSBberAe9G4nHQfoxV8bIIdDitG9RH1Pn7w4VADk1pvEFQgC2K5TFlAHWc9MhZjFpdSBa8N7zQAmRLs2i8dczmIRtKhBqNDCT1o0n8kWNmDs0gLLMxyMi77XhgPLkplm15h3rI0p0gHwZ23suzsehF99TuWjHgX7LEwHNv/dqHym6qGFMcmn3d1agd8/hdJxn3x6vN74aE0FsV/KCjT1Sda6WxHRfUZFO4hT2KEDNEE8OUkRCnDp+VkdSyjzL+NtPeXEI3jVkwsM+0Uo/0L4db+Ab3CARrekzuoT41Dn4CmTdci4XyOYhUQFiDDFhMo/BaABbgT0n4xQgnnGfpAOh7oyimm6rwQjvqGRL3ISfqEp3tqY57PQSCRFPGO3yD61Tagz9LTtOCtQp2R/YersBuI8ZlHPNP4l4xgcf/1g0q6t/66liUZPJQIaB5y9ZPdXCNbNJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199015)(86362001)(83380400001)(2906002)(31686004)(66899015)(36756003)(31696002)(41300700001)(66476007)(8676002)(26005)(4326008)(66556008)(66946007)(6512007)(966005)(316002)(82960400001)(38100700002)(2616005)(6506007)(8936002)(53546011)(5660300002)(186003)(6486002)(6916009)(478600001)(45080400002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWVuK21RQ1M3Nlc0TUZYeFR4TVZYd3kxcytiaG1WQVV0bnBrZjRvbllmeWlX?=
 =?utf-8?B?a0RaTkViVU1iNklDWlJCR0wxd0JHQUxnY2dURXVIWjQ3R1c2Q3FxVkhBZUcy?=
 =?utf-8?B?M281M0tJbEx1cXNPdFM0QW56VW9qSXJ2RHZwMlNrbFVOd0kxcGVuMTFNRUJ3?=
 =?utf-8?B?ZEtOVG1qRFRURFVXRVo3b3ZwT2VKTi82cTVuZXdRYUN4ejYyUnVIaU4xQ2hr?=
 =?utf-8?B?Y0NmZk9PVExhMjc0a3JHaGtKdXFqclBOL09zRkkydzE3azJvWk1TOWRid2dW?=
 =?utf-8?B?L1U1TlBEdVM5bTdKNWlxY015Sk85SnBlRldOME10cDdjS2g2OXZnajlDOVFG?=
 =?utf-8?B?Qm5EcUZ2ejNncEdQc045d3hKYWN0WjF3KzRZcjVLZmttNVdUb1k3ak1HK3JV?=
 =?utf-8?B?d2FZZlFMSVgyakhHaWRma2Y3clNZZmVaUzhBNk5jRXYxUFpBSWhGSVRvZHRi?=
 =?utf-8?B?cTdYVFJoZGpXMlM2bXRwU2VWTkNxcFRSK2RBWWtOQ1ZQV1RZRDMxQm9NSEg2?=
 =?utf-8?B?SnM1RDRUUVZYMXhOa3FveXJ3RjdvMG81TWJKandaRFFyM3pyMW1GOXoxNjJG?=
 =?utf-8?B?ZVhSNjUyR0pVaDJYRldDR09RU0hvZFZRWWRyRUN6cGhTbUwyMmd1ZXlUb0RS?=
 =?utf-8?B?RnhHbGM4bDJFamh0OTgrMGt3aHhwN1V0Y3VBSDZlY3hQZFdvL2YxZXI2SExI?=
 =?utf-8?B?M1dZU2htOE43d2hEcm4yUlZrY1Z3TmtUNVBxRTl6cnFoNGF1dTZJVVlDUG5Z?=
 =?utf-8?B?M1pXSVMxbmNpTnJvRVY2ZzJ5cXhhdVREWERMdTREaE8weldaWG9Kd1o4S3oz?=
 =?utf-8?B?SUZWckVISE1xWnlvNkhnNWFzVWg3ZThEVGpDUDV1RHNzVWMxdm1XdlZEZmNR?=
 =?utf-8?B?RnFnaGUxNFZ0djY1S0tBYWZmRUNMQUw0aUNISi9qMGJ3S0FEL3NlYWFTL0t6?=
 =?utf-8?B?Y21kMldHbERvVnNGUVROMzl1Mm96ZW9iOXdMNnZUbzRmdkNRMG80RVkvNEl3?=
 =?utf-8?B?RFdsaWM3blA2TzRiT01aNmJpUVdmLzlPUll6akxXZGhsWGRqOWIwN0pZeUxj?=
 =?utf-8?B?L3JwbFFMWGpGV21DNFU0bGJrZ0FQdWhIQ0EwbkkrRnU5VWwreVZKY3lib1pi?=
 =?utf-8?B?VHdHSUh0bGJjcG81N3MvRTNKWlI5ZDZjSmhlanZtS3NNK2tqdklDcEMyZ3hH?=
 =?utf-8?B?ZENJV1M3MWJjVlBpUjliK0JOdnBRMUZhUEJhUVpXT3BEOXFrR1JGMUppQU1s?=
 =?utf-8?B?ejJ0T3F2U0RpN25KZGNLN2lkdzBUVFdvV1B0RXpTSUVoNWFpRDNacks3N0Ev?=
 =?utf-8?B?VTlBMDRpUlRDWGVDTTVubFdQcEkwVG50RnlGT1QwZm50NU5JTGVSQUQ5SVha?=
 =?utf-8?B?UGpiREI4alBxdHRmY3FObUR3S0JOQ1Z5bkdtYTJVRTRJYndjb2FXYXVaZ3dP?=
 =?utf-8?B?bFJ6d082YlFYVThnbE1aZUQvR2ZCa25SdHpFTjA1RHlTaHdPb1pPT3BzWVM3?=
 =?utf-8?B?cTdIZW1RQ0tRUHNraGdFNjhBOE1pdlJybTg5Zno4WXM1aG0zZTNsUm9UNGNq?=
 =?utf-8?B?ay9QNWk3TnZaVm9KcjgybVBsaTBFbCs2QWVjYVp6U3czc05obHZ2U2VvTUJS?=
 =?utf-8?B?Sm9oM242emM4akprc1VNM0xTUkYzUVlFaHUra2JxQXBWcFVobEVIaGhlc0RH?=
 =?utf-8?B?aGE5UWYwM3dhOTdyL3ZDQUtwank3WllDVFJqcnhLaU1YbGhGOWRQcWZXK3F3?=
 =?utf-8?B?aWwxdkVPM0VRY3N3bXVUaHRVYXlYNnlhV2ttMmh2bStBclVFNEp5RnNOcGJz?=
 =?utf-8?B?NTVoakVWSlNSUVFUcmdxRlVQL1pXdXQwNnNrdTVseXZWSnZ2ZlEzWlFLN2tk?=
 =?utf-8?B?dXMvVElpWFFUY0xlL2VydXdHT3lldEY0V2RCbGV3Q2dkZTIzcWdXWkJSOWF6?=
 =?utf-8?B?dWkxUVVwdzcwa1ZaYWZvandEeVdMS3Rkb0xZa2ZtajllZlp5aFByOHpFWkx0?=
 =?utf-8?B?UFVmODkvRG12dkxGRzB1Z2kwMWFUL1dVRk1jL0JxMWZQczdFRG0rZEp4TDlY?=
 =?utf-8?B?T0wxbHNUMEdZQlphTGZlMG9KTnpqTkpMU2MzajhvdXJLYklWcDNESmlGSkwv?=
 =?utf-8?B?VzRuTXE1UzJOdFF3eWFhUjlublJRdno1RmU5UldPblgzVmZvQzZwdUhvZk1t?=
 =?utf-8?Q?05n4sxMMVuspZv8r1RWWEto=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a097130-8f5d-4f0b-0bb4-08dac12c9a03
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 01:57:33.4365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TdmvRCgD4ZeEUTcHbnd0njdvyNEHnrjV4FcfbcQNG8rWeyBqH7dKudmUVlGM+urRBq0aQhsp6Lg89BTHFGk7X+ksvHFXsjEtxK92XCqNHQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5795
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/7/2022 5:41 PM, Brian Norris wrote:
> On Mon, Nov 07, 2022 at 10:38:14AM -0800, Ceraolo Spurio, Daniele wrote:
>> Ok, I think I have an idea of what's happening: if HuC is not enabled, we
>> skip the call to fence_fini, so we leak the debug object. Can you check if
>> the below diff fixes the issue for you?
> Thanks for checking! This also gives me the hint that I can try out the
> HuC firmware to see if that changes anything for me. For reference,
> here's the firmware bundled with ChromeOS (and that I'm running):
>
> https://chromium.googlesource.com/chromiumos/third_party/linux-firmware/+/HEAD/i915/
>
> We tend to pull pieces from upstream linux-firwmare.git as needed, and
> seemingly ChromeOS folks haven't found HuC necessary for GLK.
>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> index fbc8bae14f76..e3bbd174889d 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> @@ -300,13 +300,12 @@ int intel_huc_init(struct intel_huc *huc)
>>
>>   void intel_huc_fini(struct intel_huc *huc)
>>   {
>> -       if (!intel_uc_fw_is_loadable(&huc->fw))
>> -               return;
>> -
>>          delayed_huc_load_complete(huc);
>>
>>          i915_sw_fence_fini(&huc->delayed_load.fence);
>> -       intel_uc_fw_fini(&huc->fw);
>> +
>> +       if (intel_uc_fw_is_loadable(&huc->fw))
>> +               intel_uc_fw_fini(&huc->fw);
>>   }
> (NB: you have some very weird whitespace in there. It's neither tabs nor
> spaces. This slightly increases the chance that I get your diff wrong,
> since the patch doesn't apply directly. But I'm pretty sure I
> hand-copied it correctly...)
>
> Unfortunately, I still see the same(?) problem with this patch.
>
> [   85.182000] ------------[ cut here ]------------
> [   85.182014] ODEBUG: init destroyed (active state 0) object type: i915_sw_fence hint: sw_fence_dummy_notify+0x0/0x11 [i915]
> [   85.182238] WARNING: CPU: 2 PID: 1925 at lib/debugobjects.c:505 debug_print_object+0x6b/0x7e
> [   85.182257] Modules linked in: i915(+) cmac algif_hash algif_skcipher af_alg btusb uvcvideo btrtl videobuf2_vmalloc btintel videobuf2_v4l2 btmtk videobuf2_memops videobuf2_common btbcm soundwire_intel soundwire_generic_allocation soundwire_cadence soundwire_bus 8021q bluetooth ecdh_generic ecc rtw88_8822ce rtw88_8822c rtw88_pci rtw88_core mac80211 cfg80211 r8152 mii video wmi backlight drm_buddy intel_gtt drm_display_helper ttm prime_numbers joydev [last unloaded: i915]
> [   85.182593] CPU: 2 PID: 1925 Comm: i915_module_loa Not tainted 6.1.0-rc3-01115-ga397a9098fb3-dirty #35 b6325f6cdf3c04a0862a445aa86b1799d3939949
> [   85.182607] Hardware name: HP Meep/Meep, BIOS Google_Meep.11297.262.0 03/18/2021
> [   85.182619] RIP: 0010:debug_print_object+0x6b/0x7e
> [   85.182634] Code: 31 c9 ff c0 89 05 ae a4 67 01 8b 43 10 8b 4b 14 48 8b 14 c5 e0 4a 86 8d 4d 8b 07 48 c7 c7 fe 47 ac 8d 4c 89 f6 e8 ba 53 c2 ff <0f> 0b ff 05 2a 50 11 01 5b 41 5e 41 5f 5d c3 cc cc cc cc 55 48 89
> [   85.182646] RSP: 0018:ffffad7280583638 EFLAGS: 00010246
> [   85.182661] RAX: 229fb1a4f3034f00 RBX: ffff960980064348 RCX: 0000000000000027
> [   85.182672] RDX: 0000000000000027 RSI: 00000000ffffdfff RDI: ffff960af7d1b440
> [   85.182683] RBP: ffffad7280583650 R08: 0000000000000000 R09: ffffad7280583490
> [   85.182693] R10: 00000000ffffdfff R11: ffffffff8ca46e5b R12: ffff960988382cf8
> [   85.182703] R13: ffffffffc08656b0 R14: ffffffff8daffd1f R15: ffffffffc08656b0
> [   85.182713] FS:  00007fd5f9306940(0000) GS:ffff960af7d00000(0000) knlGS:0000000000000000
> [   85.182725] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   85.182735] CR2: 00007fd5f85ef000 CR3: 00000001061d2000 CR4: 0000000000350ee0
> [   85.182746] Call Trace:
> [   85.182759]  <TASK>
> [   85.182775]  __debug_object_init+0x26c/0x5ea
> [   85.182794]  ? intel_huc_init_early+0xa6/0xa6 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.182996]  ? 0xffffffffc03e6083
> [   85.183028]  ? prepare_ftrace_return+0xa2/0xdf
> [   85.183059]  ? __init_waitqueue_head+0x5/0x21
> [   85.183082]  i915_sw_fence_reinit+0x19/0x3d [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.183310]  intel_huc_init_early+0x72/0xa6 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.183514]  intel_uc_init_early+0x76/0x25b [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.183697]  intel_gt_common_init_early+0xc3/0xd6 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.183878]  intel_root_gt_init_early+0x4c/0x5c [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.184055]  i915_driver_probe+0x26b/0xbf9 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.184233]  ? drm_privacy_screen_put+0x5/0x23
> [   85.184260]  i915_pci_probe+0x182/0x266 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
> [   85.184468]  pci_device_probe+0x99/0x126
> ...
>
> That only required:
>
>    pkill frecon
>    <rmmod some audio drivers>
>    ./i915_module_load --run-subtest reload

Thanks for testing. I'll try to get get my hands on a GLK and repro 
locally. Even if I can't manage to repro, I should at least be able to 
confirm if the updated function is being called as I expected.

Daniele

> Brian

