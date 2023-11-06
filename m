Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 995697E2E1B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 21:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE2B10E3F4;
	Mon,  6 Nov 2023 20:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C0910E3F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 20:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699302193; x=1730838193;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=x2Eua9GWegdGnqbZatWc+OEAR6X3lJ/yCBAoeEw9U+I=;
 b=guorRPBJYjh6N8ED2F6AOfpKMcaHntYi9pF7nXxf0IbvlW56bKO1raWQ
 rl9NG6Zmpt5hAlyTPMuc3+EvAiA6wVTJc0RkmTTZYd6FAP9PIW8gVxMRJ
 KunLZMr7XagrSPlS+efOU79lf7Tua9P8ESSa3y8eGf+pB98tIoSMY+h7w
 LDBauvphssHN3+3q+Li9lqKz7W8JYB6LbpK99uAkjIo9zphfHL5hwKRtw
 Wq/3vUUw6ovkPz9nkAoBpWU1lcd38K3NHCEfmM4fUsTGkw4eyhi4e7VO9
 bZ9GqBRjlJwmwFoL0KIoXPnQ8lUYa6PhIGIjdP3usIKjvq2qqQUzNZWkC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="379754994"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="379754994"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 12:23:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="886024039"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="886024039"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 12:23:13 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 12:23:12 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 12:23:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 12:23:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2n/gbEWaFW/oCn0DOmI0uBfhgi+yeejziOqIh2IO41Kzr5oLA/DV3QR1huSJMAltz9c80cGlUJbbSsjB29293TAswTiVPi00eCkW37qWarcK8ynhbcUxAcY/BES1kFAEj2HENCiMKDpLy6ebQViUndIQ7wPPNxrj5OXJM/J28V77XihNAtS+J10rVA3KgfEHgJqE5kZYYLhfSRXfqsBX5aESjozLemeMCvxSEfVrTz5lXA202g1FjyH8WSyt5QNOUrWZErQJA/onX5pKZfvdAypOb9dz46oFh13sNQAEHUjIR9e7dCeuelGA8hJAxAdfIIVnKNfKcZHmomf2QwG7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/iEGjcq9n563joEhJ68oXUyrwofvW0zvYOymeOjKn6s=;
 b=P2DAUjepmMIi+8thjZEmA1QvBW0YzWxyJChJYYX5gWdbd+DYkcwbICczTA4Nvdj1cMlio7GIVtxoz19Nl6jVqjZm2jn35fm3ZSMaU/WE1tW6zMGbZC772Gj6RjOVNQXmPSm7RWgvouEn/3J3VGAibhY9sNBcY8VM0DO8L7yw7xqgFaDpWlK9Xv6xr8YSR+8rJ8Bkyxgp7sTQR3FYwG+vX+WdogWm2qFAuvxIZuzERGXp7IamZ/qFuIUzFePIjV5wmIKs4WzW39CPY6LxHatqcm4nAe0XmCGTG2QHjqcJ6/o7F8RHw5QxOH+G5+4pN0e/zmbqU7tc7aQWF0xvhpRc4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.27; Mon, 6 Nov
 2023 20:23:09 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::2c36:38a9:79f6:914a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::2c36:38a9:79f6:914a%5]) with mapi id 15.20.6954.028; Mon, 6 Nov 2023
 20:23:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231106200721.GT1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231106194627.144435-1-gustavo.sousa@intel.com>
 <20231106200721.GT1327160@mdroper-desk1.amr.corp.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Mon, 6 Nov 2023 17:23:03 -0300
Message-ID: <169930218322.10401.436318199641297810@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P221CA0013.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA0PR11MB8380:EE_
X-MS-Office365-Filtering-Correlation-Id: 08f03d66-f43b-4fa4-a708-08dbdf06312d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yo8/Wuw90hrHeB6eCa2REVD+EQua2K/CvTPT4BtxppDBvuwBIQSnui3Fecp1HN1JqKSZcTGMCeWnCuqV7tYLbdZZlDUKEeuM2xOTPT+DXmtDfMcj6tJnkUYCLqKV1KACBITGZRPP1TlXKxjpUCKC9raSATdg8qRBku6wnAn8Tf57tcWlFq75Tm0ApKnD1SySOU+itoWGFOM4SGP/x3Lfyjwb5rOlfxeXiU6vP8sPsfJ1F250Ezjveq00jJX1F2hWmt9y/JLFFkl4o8p4cXEsB5jhlF9GZ5fjO7faLo9BQGSL9sYQSoyPtZvOipe9j0TAV4tqSMm8h4mP4SBUt1y4YQ3f9E1CzhhfvRptrDJp/1wVPbZc1YVNqDn5wHS00ZzxBDA9wcy+veTCWKwqT4cInHFtB2/CvKyYab5yhKIIEZwUJJzZX7UhAkK1Cp3vhlV+dQ68XhOwNWxxDz5PSmaPXSy1fjZa2KZ4tPtrIMQH8y7rKRF1a9gAo6C5Ca5A9oF3nEOPNOPnanpYwLmhBJ/4J4VII3ACQi8mBwN8Nzl8yuWYwL9W8iBMEDMAwwF1bz8v
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(396003)(136003)(366004)(39860400002)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(8676002)(44832011)(6512007)(9686003)(5660300002)(82960400001)(6486002)(26005)(478600001)(66946007)(66556008)(66476007)(6636002)(316002)(6666004)(33716001)(6506007)(6862004)(4326008)(2906002)(38100700002)(8936002)(41300700001)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T04rY3Z3ckNqNU5mcnN6RkJvOTJDK2NDSTBBenJwMTJGSXp1aHdvbW5aY1Rn?=
 =?utf-8?B?cG1VUmN1WERCK3hHRHgxU3VWMzRMREplZXAyS2ZMUDBJdDVvMG1CbWVEd0J5?=
 =?utf-8?B?RlV0dTczRm9yQ3g5K2F5R3V2MXk2MXR6L0JLRTBRMC9CSHdiQjFMTVMxT1A3?=
 =?utf-8?B?anRSdlBLalpvL29pTHpCK3Nva01FWVFYWXV1STBEZTVTcEwvaWU1MlZyRzdM?=
 =?utf-8?B?Ty9jSm9IZC9ZdGxpeGx6QkdPM3dNQlY1V2l6QUUveFViR0FVM2dxRTk5eFg5?=
 =?utf-8?B?aWJVVkRtWGJCOUEvVFlua0dVM2RKbHVkZnBNZzI2U1V6N3hPKzNqZlJWaVdi?=
 =?utf-8?B?ZlJJbFJpVHkyUGwvdDY3S3VQaUZmNFVWR3M1ZHFDQVB3ZEdKaWNNT0FZRFVn?=
 =?utf-8?B?R2ZGUEVMR0I0b3ZBaWhxeVJLVmVLWGJGbjlmNC9XTEpXK0IxWkQrUDc0T3V6?=
 =?utf-8?B?MHUwc0dpK0plK3NJRGUyWFBxanFaeGhUNVgrNmMyVkMxaGJvNHhCYVhUbG9k?=
 =?utf-8?B?TTNnK2Y1ZGZId283eUx0cCtpZFNqVUpFQno4MlBjMU95Z3lRTVZsM0s3c1Qr?=
 =?utf-8?B?NGZxanp0aCtDbXEyaEwzK1RPSi9yK1o3bVZiQ2I0UHM4MUZLUWluVkpiSmRt?=
 =?utf-8?B?aVBBSkVSYlNad2I1RTBmc2RlbGk5czNhckU1M1BGelBaUTYySXYvUUUwY3Qz?=
 =?utf-8?B?VWlYK0EwdXFmNXlrMjNRSHdiTjRIRC9BckJQR1NuMitPZTdOS0NicGlZNUFB?=
 =?utf-8?B?WmtkNHNLQkRld1ppTWxWdHdRd3pwQ1F0VjdETDZpcHYyNUNIRnFFZTNxUjlN?=
 =?utf-8?B?NzNTRXZmZy83NmdDaW9lT3ZhVEV0WjZkYkJFZzFublo5TkpMQ3ZRbGhCSnN3?=
 =?utf-8?B?QTFsNTJ2MjNrbjhNemhmYkZJR0dacGc2VEdEL05MTWZPTjIrWVZzQzBWUlV6?=
 =?utf-8?B?M0N6YTlsdDA2NTdqZkVwbllCelZseTI4ME9Pc3h1MFNWOXNDZEVlYkkwMm0z?=
 =?utf-8?B?NkNXMEZ1dUk3QU5IeWFFMnpLYmFaSWFiVW1pTTFBcFFIRHIySFJ2MTNVMGIr?=
 =?utf-8?B?YXdLVHlhT1M5TGxreUI1VmU1c2tpTWZrTUpKeStCZnArNC9OelRlS3lVbWpQ?=
 =?utf-8?B?aGtBcUVqYld4MmplUXhndk5CcWRLOWxrLytXVWlrUXZjbHQ2cUIrRDVKdEZO?=
 =?utf-8?B?UDNIVmgyNFp1TWdPZ2FqYWc4STRUSGZXSk5vTVBmVDlzVHhoNWYxc2Y3VXlw?=
 =?utf-8?B?WkxoVDhjNkpNdGd0cjNtZVp1dkpTL1pZMjJBd2FLOU11RSsxR2ViSmxRQjQz?=
 =?utf-8?B?RmllTTNkQnBqVnYxMCtjWE8wVVVXalhaMGhMY0plUmVjcEtialQ0aktWQjNW?=
 =?utf-8?B?RGxNZzAzNlVyQzJDN0R0OTY1QTIvRWxkY2M3eXdkVEt6MzAvRUh6b2doNk42?=
 =?utf-8?B?WlBPWVlNWmV6Q0pTU0ZvTlQybUlNd2NGUVVtbEE3R2dtbGdiYjlzaXA2azdM?=
 =?utf-8?B?QXg0UHI1c1E3NEtZYXFRZjhzY2ZmZ01UZ2VtaDlGc1hjRGo1dk1BS1hualhv?=
 =?utf-8?B?bkl4ODA0LzRBek52TmpsL3FtaGJoMFFwdjAwellxMXlPOFZodnJDaUNMRGVj?=
 =?utf-8?B?dmkwSnloaXAvOWJJamVVWGRnUi9LWFc3dXh3djgvdUVmb3V2OU4zUHZXN2tl?=
 =?utf-8?B?eTN1Wnh1TXpycWtWWEkxWFg5NHNkbW5FdUt3NmhPVkE4VjlzV01QQ3BzSFQz?=
 =?utf-8?B?dTFnWG1EZnBsNnJaSzFEZTkyZk9vWWx4UjJlVUVLK0RvSzlsV1RYcGhDNld6?=
 =?utf-8?B?cHU0bDZmL2NreDJoa1JSVzVHQ2NYU2h6cjcyTit0T0V2ZHY1d3VoY1VXUTNo?=
 =?utf-8?B?Z1pxalA4M2JvSUNvdTlXM2RzeGlaRXllYnhYRmpkYmNWdXRtYmVaOG9HMGdx?=
 =?utf-8?B?TjdGcWErSUp6NE9mbFdQdU9hMER2elVqTXRnV0Q5a0FwcGlqdk5GWlhyd1c1?=
 =?utf-8?B?bWEvSGllb0hWa3FKZ1lYZ0E2RzQ0VXFDMmNPY2dHNW9yZ3g1WGQ0UXJ2bnVl?=
 =?utf-8?B?QWhmTWZxb1U2QzhSeXlaNno3clVPMEpaZy9Ba256K2QrbXB2MzhqaXhLZHo0?=
 =?utf-8?B?UkxxYTlFeDlYMHVJZzJZeU5CMm1heUVRRmk3VjRkNnR5UVUzZFRLRmlHdG9T?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08f03d66-f43b-4fa4-a708-08dbdf06312d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2023 20:23:09.2948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: huXboTHn0Y4EfF5Z74Ci1Yh5s/2o0cvpInPRvMuNMMqL3q8avMKJNscGVsrZggnh9HLRjqYaqxtUC0KN20kI2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpmp: Add Wa_16021867713
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

Quoting Matt Roper (2023-11-06 17:07:21-03:00)
>On Mon, Nov 06, 2023 at 04:46:27PM -0300, Gustavo Sousa wrote:
>> This workaround applies to all steppings of Xe_LPM+. Implement the KMD
>> part.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |  3 +++
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++++++++++
>>  2 files changed, 17 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/d=
rm/i915/gt/intel_engine_regs.h
>> index c0c8c12edea1..7060ce4fe058 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>> @@ -260,6 +260,9 @@
>>  #define VDBOX_CGCTL3F10(base)                        _MMIO((base) + 0x3=
f10)
>>  #define   IECPUNIT_CLKGATE_DIS                        REG_BIT(22)
>> =20
>> +#define VDBOX_CGCTL3F1C(base)                        _MMIO((base) + 0x3=
f1c)
>> +#define   MFXPIPE_CLKGATE_DIS                        REG_BIT(3)
>> +
>>  #define VDBOX_CGCTL3F18(base)                        _MMIO((base) + 0x3=
f18)
>>  #define   ALNUNIT_CLKGATE_DIS                        REG_BIT(13)
>
>Nitpick:  3f1c should be sorted after 3f18 to keep the registers in
>order.

Oops.

>
>Aside from that,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks! I just sent a v2.

--
Gustavo Sousa

>
>
>> =20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/d=
rm/i915/gt/intel_workarounds.c
>> index 12859b8d2092..63205edfea50 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -1662,9 +1662,23 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, st=
ruct i915_wa_list *wal)
>>          debug_dump_steering(gt);
>>  }
>> =20
>> +static void
>> +wa_16021867713(struct intel_gt *gt, struct i915_wa_list *wal)
>> +{
>> +        struct intel_engine_cs *engine;
>> +        int id;
>> +
>> +        for_each_engine(engine, gt, id)
>> +                if (engine->class =3D=3D VIDEO_DECODE_CLASS)
>> +                        wa_write_or(wal, VDBOX_CGCTL3F1C(engine->mmio_b=
ase),
>> +                                    MFXPIPE_CLKGATE_DIS);
>> +}
>> +
>>  static void
>>  xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wa=
l)
>>  {
>> +        wa_16021867713(gt, wal);
>> +
>>          /*
>>           * Wa_14018778641
>>           * Wa_18018781329
>> --=20
>> 2.42.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
