Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D6F9D2C50
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 18:17:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2092610E690;
	Tue, 19 Nov 2024 17:17:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SwvBLa+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D319310E690
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2024 17:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732036633; x=1763572633;
 h=date:from:to:subject:message-id:mime-version;
 bh=rtLz8/jVG478dqQ+TVV0jcxwG4tTUqQmmI2qdt26hGU=;
 b=SwvBLa+TuE/HeTlL122n9QGLedoZRrCk0MQoGC+5Vq6gAkRsEnAqZRm2
 xGqVGqfGnxR1DhrYAFU53J2B5bEZCcr94ljqvaufG+Emy3lmGVnVivEYS
 sTe17T8R+wcmuPKJ/48g8R4b2utBpMdnGjYobcMkGlW3voETbEmS8JUlG
 d67fRATdWKUETSV1qjGpTtYpeTdADd9NThIfvHsrEShlFc47v89800wDf
 fF60d2MRhcVhqEGUM4bgej1JEGiVOkzLrSnBjZSfTmFuXB8J99IP6tnQw
 3c1hYFSyzQc7lpYZ9g93R7jGU0ohoFD7a+yF94Z+nBAnY6WRMhhgj8chd A==;
X-CSE-ConnectionGUID: J+/aXwF9TpCOPC/y+A1esg==
X-CSE-MsgGUID: 4kYlmES5S+ux0VDfTtmi/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="35837538"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="35837538"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 09:16:53 -0800
X-CSE-ConnectionGUID: 1OjizV+0RxONBHKIPhCSyQ==
X-CSE-MsgGUID: JQICxmOUT+WEWb85qvgUSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="127164615"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 09:16:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 09:16:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 09:16:52 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 09:16:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ikrudeEO14fAUVtQR8XaiDNvzL1dHrSaWtreN/EFjuF5bal5dc9/8HOqrDWoMnoh/7CMAFv+vQ6H/qPoQRUybJgOBY8rSSD0+uNkF2p5XbY8HW8nZNNpI6v6NAfU++esmeA5gkif9z1Ur90Q2YWo8OcxLE5E2uk8VOjXOxq/Q+2SJNzO4H06TrDK6igravZt6kkVZoFfNSAkjzQJxKlAzZ7giiux/9/cK1+3yf2fw8yLbNv/lhYc4AcuI4OPkiXopEJh4bx1VnTIXF8NmiXlAWybGfMVGk1T4fqcv5HfNvciQvJN6FlHPbSjiRD6KbXjQG8WSDObvMH76t3jsZozxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80iIZb+ruvi/krX296MKB8y4dChVUL07Cs2fGxZowD8=;
 b=crFw6KtvqMvrglO1w+ZhRXatgnBDj8B5blTK5M/gFIoro51JnKmD8w9kkAyRZf89a/FqDLuyEJNmwAMu8qKmIolwXaAhixmWVXRAgnC9/RtVlSVQ9ZAPHng3um6ZaTO5MNciaCroXd5oZSgehAxztQwhpjWU+PfZU1GUj8thunFc5QJfj511l8ly0bM/oxq7MZrIVh1Mx9BEW3lry2lMUY7tN1sIkl0vE9SY6iSRPv+W0sV0cPk9118ojj9YPAVxk8up9KciQWKFfTj8IPDdbM+hZKj/v6PP0t8Qa3NwUMAHmq0cx2cBcldxc9L0nAJGfoqSzUJASfhVV7magBZwBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 by SA1PR11MB6685.namprd11.prod.outlook.com (2603:10b6:806:258::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Tue, 19 Nov
 2024 17:16:49 +0000
Received: from SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa]) by SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa%2]) with mapi id 15.20.8158.023; Tue, 19 Nov 2024
 17:16:49 +0000
Date: Tue, 19 Nov 2024 17:16:44 +0000
From: Eugene Kobyak <eugene.kobyak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: [PATCH] drm/i915: Fixed NULL pointer dereference in capture_engine
Message-ID: <5a42bhkoaoed2mky6343qz35pdyzfz6pqgyczrywqgwb4ezipv@be2aiql3bmih>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: MI0P293CA0003.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::9) To SN6PR11MB2640.namprd11.prod.outlook.com
 (2603:10b6:805:56::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2640:EE_|SA1PR11MB6685:EE_
X-MS-Office365-Filtering-Correlation-Id: a2c5c1fe-a324-441b-a1b0-08dd08bdf3be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tk9HZGFGajNHb2wzMEhVMDRMeVVSK3prS0VqclIrRGNucklZb0pHOHpZeDlR?=
 =?utf-8?B?blF3emRmZVpWWGdTQno5ZjZHcVQ5eTY4VnlPNFZjZnVkbU9oQ3R0Y3JaOVpN?=
 =?utf-8?B?UWovNFh1UmpFTW9GczU5VElKMklibUlqTVhKNFc1aHBSa0pBdi9NNFh6ZEpV?=
 =?utf-8?B?eWVUMk9qeGJRenpDeEc2czg1b3Foc3V2bGtwQjVTeEM4T1p2cExOY25nTU9H?=
 =?utf-8?B?OEkxc3N0bjA5QnpMVjRPY1dqTm1pRFh4NDN3TWUvSXhoY3hhTG5JTWlxVE5n?=
 =?utf-8?B?MUh1Vm1jZk42UkczWUxGVjcrcG5iWm9tVXpWOUpSKzBTb1J0K3hGRi83NVZE?=
 =?utf-8?B?dFVaOFpNUDhQM2w5ZEtveUNSdWpabW5JQ3VUQ09Pb0k5Vm5ndTlnRDVFWmZV?=
 =?utf-8?B?NTY2K3lMaVdyWSt2T1c2aTZYMHQwblI1REZzWmRZUzBoZGNjdjVEbWFWWGRw?=
 =?utf-8?B?d2dxbGRoTlpyVGZHOG9IaXVreVkwcUE0c3BCMzU1UCs0ZXBkU0pxWG9VWTBl?=
 =?utf-8?B?MmdBQ0F6RDRZd3RqM3RmQTZwM0FFZ0JBNWE3Q2x0blhoQmUrSk9kUFFIREp0?=
 =?utf-8?B?VmJRWVVtUXp2Mjd2dVZqWUhuVmNuYmdTV21NcHlPWUpHd2lEV0ZaTS9PanB1?=
 =?utf-8?B?WC9xdnpZdFV4dC8rWGphUWhETit0VXo2YU1qYXl0Mm04YjB0dHNCZUZlYlpr?=
 =?utf-8?B?MG1kSElDY1V6WTQrNkxnTjJ2NDhwNnhBeTVWOERvYXBNL1l5MXlDNy9NQllr?=
 =?utf-8?B?ZFpOSEtiUzBvYlc1RHJKUGtyM0RFc0xmelY3Qit5RXBlUjNEb3pTQVNiMklX?=
 =?utf-8?B?amNUbnZMaG83Y2hWaERlQlVXejU1WkhiVGxFajFZcnRsc1EzSnowOHBiT1Jz?=
 =?utf-8?B?Q0k4Zjh1QjdQMm5ScnFxTFJFWGNSdEkyWkk0dXRra3lqblRRbENhT1pMM05C?=
 =?utf-8?B?NDY4SlR3VmorNGNidXhNZW9BYkdQZW4zYjlQSnNOb2xqTzlyM0E4K1ZLRTNr?=
 =?utf-8?B?QWg2SWhpWll5eE5GdmpjQlJ3NVRaOVoyeWxUT3BpNmltR3pNK09UR3kzTWc0?=
 =?utf-8?B?NFhhNUp0TE8zZGprcGVNL2sxSWxkR3pvQTdsSllTRFlyazkwSG5YSit6UEJr?=
 =?utf-8?B?NTIyRkNBL2g4STEwYWxQQks1Z01OSExYd3JnZnh3Rko0eVJNakhNTlNKc0Iy?=
 =?utf-8?B?bzdka2lXYlE3T1dTWEpGajF6SlpBU3Uzd21Ndy9QRjh1YmN3T0EvOVc2UjdU?=
 =?utf-8?B?VVlEREs5UkhZb2Z1RkF2RUFRWnoreUdKRlpiVnRvY0dzb3RQbHE1T2lkSno0?=
 =?utf-8?B?V1lObmFETWZDc0hVRG4xZk12Z0xGYXloK2M3L2MwdWQrUGhtSEdWWDRiaVNR?=
 =?utf-8?B?QUQ3Wlk0UjZUT3N6dWFzUnREcmR1YlRQcnowakpLN2Z2UjZVcGxUc0M1Slp4?=
 =?utf-8?B?Tmk1YldDL0VyZWdZYUk0MldtMkF1N0FabHdaSmtSaytkcitWb28xR2piSzB5?=
 =?utf-8?B?OXR6ZzlvZEtYdGxQNTJOekFBTjMrK09XZFpSSXRIdGVxbHlUdlNaVHVMN3Ez?=
 =?utf-8?B?V3hFZHg2bm5RaEJUZGFQWHE0UCtNQmxuNW9VVjAxNlFTQWhJVHdrMUNXZVpW?=
 =?utf-8?B?U0lINU5rVWpvV2FMMjZpUVN6b0dQVzY3QlQvQm83QW1IUGVSRitZWm5iZEU2?=
 =?utf-8?Q?IY8U6sZ/Mii1sn2n5iwd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2640.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlhCTlRhMGZCM05BRDl0L3djK3hFczU2Z0xsdWoxOWFGbVRuODUrQlpucXAy?=
 =?utf-8?B?WkdSRzJUcFFnMzllbm9YLzI0TjczWGV0YWZ5c3pqakZiU2VHbzRtM0JobXZn?=
 =?utf-8?B?Z2JNNlprME1XS0toWmdtYnhUelVqaEMvblQwWVRTTGRiNjJpRzM3U1ZrQ0JL?=
 =?utf-8?B?QlBNMkk2Nnl2RzRrM1M4K3pHb3czeUR0YVlvU3prSjNsWmZpeXBtNGs1ZTdY?=
 =?utf-8?B?U2xZeWF4K2JNVGgwVmtOOTkwWUpDZFdvcklzR3ZVKzlOdjZZZGMxSS9EYzI5?=
 =?utf-8?B?bVhSemR3b1AvNmsxMzJ3cWF3NEJFTzdObkdiN2h3UlRwZTdVdVlKWk5PUXdL?=
 =?utf-8?B?cW12QUo5TWx0RU5qNTFsR2hPMGxvam44M0RTbERSdVhHV2NGK1hTdVlxSW5Z?=
 =?utf-8?B?bFNVNXZQSkhRNnk0eC9QQTVzemhxa1phMmtwUWlzVTF2NmVsaHJpOFJUd2Jt?=
 =?utf-8?B?Ry9rNm81K3pwdTVMT0xpWDEyVEtmUDZ2OU9HTzA2ODRvK3hXbXVFYkk3R0Zp?=
 =?utf-8?B?L0NPTDE4ZzhPaktmMHBPSEtZM2JoVGhiZWJZcVhucDVMb28xMmoveTJ6bXgw?=
 =?utf-8?B?UDRROHg3U3lLV2lMdVlIaHB3eVNJM3BKeUN4MjZaeG13MGdjOFA3T2FYdnhK?=
 =?utf-8?B?c3d0RUlubVl3VWtkeTdJMHR5b2c1MVdkWHNnZlZHY3VSKzR3d1Q3M2FoR1Nh?=
 =?utf-8?B?WlRJUURDaElRVE1HU2FDTUNQY0lOVFJYdjZNNTRrdUZNbEcxSUI2Wi9tQ3p1?=
 =?utf-8?B?NzdSK1J0aTMxNFR0eEJ3WGdoOCt4RWwzRi9uL3hoWVZ2Nk9ZL2huZGJnalRS?=
 =?utf-8?B?RFhkM21uSlNBaG5rMlJMWHZNamFsK3FhOGJvcVFwNW5yWFNPSHZqN3F3bWVu?=
 =?utf-8?B?UmVzbkJqY0FWdXYrZzcrbDJ2ZVVLOFFidUhwTDdUcHJ4NHJhcjZBd2F1R3dK?=
 =?utf-8?B?SzBXM0VscUFOZVAzUjV5NlRMaXBzN0p6ZGgzbXNiYkFiTzVjY3dENXdiVUJl?=
 =?utf-8?B?WWNHSkZSek56cklSb0V5OGtQZllkZGdkbzBnTEVVR2ZOS3ZwODV4M3JUMUNZ?=
 =?utf-8?B?anl2S09ndXdhQmVHNlhmeWRnZ0E4eGtEbk1hUHZlaUVnUlJJcXdtVitvSGVs?=
 =?utf-8?B?bVpXZlNyVjVhdjN6dkFOV0tjVUU0SzRzZ1lFREcvcXZwalZSZXFWaHdvWjE2?=
 =?utf-8?B?RkU4Y0lFdExxTlNLOEFMVHNhOEttZS8vaElMeURjUis1OHR6SklLVUdUMWFC?=
 =?utf-8?B?WVlCajJ3MXQrZUhsZEQvcy9KTkNLUXZEcld1VFlZbnJ1M0hma2ZjdVd1eHFH?=
 =?utf-8?B?QklRUFRJNFp4d1dIMloralhyR0c3dXc0RXpFR2dCemVRcDJ2OGRFNWkxYlUr?=
 =?utf-8?B?dlJxYVRHZWV0UGsrK3l5RDZRR0EreGd1UnhUSkdRVEtqQlR0T2FLNitGeGgv?=
 =?utf-8?B?OXY0ZmhvR2s3RjlZNjQxMWROZ01ZQUVHcUIzS1JJK1BRb3g3Y1paalV5NXcv?=
 =?utf-8?B?MnMrWXhpL1lldHJrRFN2R2hjQkJENjRud2NrQmUrb0ZBV1FYOVQxeEo1dTlx?=
 =?utf-8?B?WHpZRVdQRmkyZnBwNGNhdTZFanE5QVJEQUMzSmsrcUlKK0xVam5LV20zNUoy?=
 =?utf-8?B?SUxrVi9Lc3hXdWlUbEwremJBMUJUVTlWTHdSZTBWNEl1SHFTQURXcmRDS253?=
 =?utf-8?B?YlpkaVBvenJqKytDcmFmUEFOcEVNL0V2VjFDamYzT1dFcFNEWHVrOE1FL3dD?=
 =?utf-8?B?SXV0K0NBVVZSTWZpZ21mY0lQZHd4NTFtckE3UTJONXZvaXpZK0lySzl2M0R6?=
 =?utf-8?B?ODhBS1lzUS9UdlAzb3lMRE9ub08zQ2pzVjd5RGk2UWZuSGNCd2VpVGxjL0VT?=
 =?utf-8?B?SkQ1dkNFKzgzbmZDUHlPQjdBSWdKVTVHbkZUYU15TnpCNlRydkEycmpMa29l?=
 =?utf-8?B?Z1BzK0JzWFRwdkNSQzMzSlh1QWpTaUlLUVhrRzBKcGVkNTN4cWtZcFF4NUxx?=
 =?utf-8?B?OThpV2xKWGFITmhWbEl0cHR4R2tHcGgvM0xtUVY2RGtVQncrSXVlelc4T2tL?=
 =?utf-8?B?RUM0ZG9xVGZtUmtMZ0Z6YzV1b2xxaTJONmpZYjViWEZrd2tHWXFiMFJSdkdF?=
 =?utf-8?B?cXFDMUJ6aFdmUlhUbm1uZ1dERnVPb1RIeStub0xkYkd4amJORzdiWEpqMk5v?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2c5c1fe-a324-441b-a1b0-08dd08bdf3be
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2640.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2024 17:16:48.9908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XwRuFFAgMo3ZV+8EmFzodGDpNQ54lpMr7O/zfVEXvafM0VbPy/qyp+4qEKhKNRBUlamlkQDEhKc/TLsUNSVhfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6685
X-OriginatorOrg: intel.com
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

When the intel_context structure contains NULL,
it raises a NULL pointer dereference error in drm_info().

This patch aims to resolve issue:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309

Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 135ded17334e..b00651ad8515 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1643,11 +1643,13 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	intel_engine_get_hung_entity(engine, &ce, &rq);
-	if (rq && !i915_request_started(rq))
-		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
-			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
-
 	if (rq) {
+		if (!i915_request_started(rq)) {
+			u16 guc_id = ce ? ce->guc_id.id : 0;
+
+			drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
+				 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
+		}
 		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
 		i915_request_put(rq);
 	} else if (ce) {
-- 
2.34.1

