Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AA9B30DD0
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 07:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C8F10E062;
	Fri, 22 Aug 2025 05:07:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoxNxY/N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8263410E062;
 Fri, 22 Aug 2025 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755839242; x=1787375242;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IrR5jgTTSIETgdbKeFF37B4VGaI9p+vTSKg8wCnuD+I=;
 b=aoxNxY/NE1zfLqcSGBf6fu3bzF1GHJr4GD2gvLE/qqHHdkLJfA5Y0DKl
 b/sA9Ez77NwiMVuuQ9err3osm33pGJx+Es183MMv50b/b+5b4+CwxE5Pn
 8DA/0bNpGOKhgoM4kRLN1CEbi7DQhE8I+3WmUshZGFuq6o6N13HaFG0/B
 ndEsz0U8Wps6b3eiJfLjTcf4/ZtRRWaR4NAgd4XOJtRvrPEHIb7YCz96d
 HIrMRZjgZVOgz4ivbg/qqAYrAMQpNdCRBFO5+jIywaAy0b7pN2/AY+lA9
 chVfMJBwkBb8CdiKtnenAcURT+FGCHDwjiOwGbM8Zg4gEtUKdNLGbmc8W w==;
X-CSE-ConnectionGUID: 0BLVLJXEQDi76l9BdbvG6w==
X-CSE-MsgGUID: ov/EAsigRLW4CgW0WR7RwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="58212332"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="58212332"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 22:07:22 -0700
X-CSE-ConnectionGUID: JdWhD9/AQemM6w4VzNzPpQ==
X-CSE-MsgGUID: cGTrdA13Q7ydY2M21YXH5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="199493202"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 22:07:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 22:07:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 22:07:21 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.89) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 22:07:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FXHCF82oK2lgBAAssZjUtbA44ExLnn1xxwrOCXdXiPmpIlCnMDbvotJEmQ5TnbiQlR/zrtiafq3ZtwskGHk4uEAGmr9IYK3XOC5RhzJB+PBUcaEol8Buk37YzLFvLQhUJFZkp+7T4Nm5GVO6g/oYGDwua5aKKf51G2F0x6/Z3VelUiczUTERKBKsb9BrcgWJgPEwfOQF4IItQ+iAU9GdcT5ek8xbUfjY8r1UJJKQ6q6V99pk1hEDZvarKYFMWwgJArmKKLlr5IBEwuDUUvfmxE+C0222c6YAf427wQV54RNs/oQFnTbzcmlSECnN84hNuZxk5kmJorDQfKEVGR8Mrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IrR5jgTTSIETgdbKeFF37B4VGaI9p+vTSKg8wCnuD+I=;
 b=WmlFjpgs9E0YgyTDvWO1VUIfJjDk4cFg+A3eHZEt7tw0N4nyK9ljzkmYxEiY38WQ1DoFxYJQCkg2AcBkG7I/h+/6WbyTUqjW8NMwtjCmaiVZaMZmNqXArajGVFqEZMZrnHIyViFx0azOC/gcPvzupY1QISkN4WmTjgxk2IhyPAdOLDN7HZPS3nmPRYMOZY1nOsLlM2dCUEWo3QvzrU2CcPDyWb5swrvhrTjJlQBAljQp0IQAwK1GpprJ3bUdMl627Xm+RmatvN29rgizvD4IFpK9ESqKdQrjkkutGMdheWXf+vObBaD+FPTbzYjjHXl2xeJzF/YhdtTHQSUaXWUgkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7684.namprd11.prod.outlook.com (2603:10b6:8:dd::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.14; Fri, 22 Aug 2025 05:07:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9052.014; Fri, 22 Aug 2025
 05:07:19 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Thread-Index: AQHcElht53yquVJ40ki83z3ASStRc7RtFVsAgAELNoA=
Date: Fri, 22 Aug 2025 05:07:18 +0000
Message-ID: <377b98dfb05d9c4a9ffd0c64c4e8b9fea98913c0.camel@intel.com>
References: <20250821045918.17757-1-jouni.hogander@intel.com>
 <20250821045918.17757-2-jouni.hogander@intel.com>
 <aKca3nYynsprAZU1@intel.com>
In-Reply-To: <aKca3nYynsprAZU1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7684:EE_
x-ms-office365-filtering-correlation-id: 1a28a3cb-e267-48e8-9e3d-08dde139c4f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?V01BSVpWRENqMnZYZTZ2djdoVk83UkdWUHFRVGZCNGxKOWNKUkljQ0orTkJG?=
 =?utf-8?B?MHNIK21vQUF6R3lOdmtmdFo3U1BtdGtaN1kyZzhuelJ3MTRGcUZaeFZraDBY?=
 =?utf-8?B?Qmp4aWowcW9pNWdZNlk4WncyZnIvNWFWTk50VkxGWG15aVFiZGU2ajFDMmVL?=
 =?utf-8?B?eERNd3JoZGxxZTVsdU1kMm5BT1hlT1BYMlFlc1FxK3RpNWVqa0VtdCtQTUs3?=
 =?utf-8?B?R1RmNkdiRXR1eHVxeldRcmh5QmF3U2tZT2MrTWFmMFpiVnhoa2tPbjd0QWVa?=
 =?utf-8?B?cjdzWTVYbHVzYzI1R01vb201cFhGNENnSzlmVUdvTUMwNjhtQWpLbFdOU1p4?=
 =?utf-8?B?WEhkTTlWbXdUNnhnaUp5TnNjRjcxY3c4MHRYNlRHS1lybjduZUZLMExyN1lE?=
 =?utf-8?B?UmhzdlJqQitGSkpEdHhpL0g5cmR6bFNWMkRmZENBeXN2N0VEU3FWTU9EL0pn?=
 =?utf-8?B?MytVa0E5bnNXaENRMWZFdldrMHJrSEtSL3Evc1NNRWIrV3MzbklJQks5MkRP?=
 =?utf-8?B?UmtXOTczZkdUdEl6NWRwUjQxV2RWdGhTYXlPMVExa0czM0xQRkg5YU9MKzlN?=
 =?utf-8?B?YzhhMVdJcXc0RlNmcUt5RFFmKzlLTHNKUUhiWjF4ZHh5VUY2Q3djM2pjVjVJ?=
 =?utf-8?B?YnEvWkp3S2JUT2RLbHd6bXpZcFJWMnBFdGZSR0RqQ3U4b3Q3K3FFakxSVFlz?=
 =?utf-8?B?ZHQvMXZCbmNJa0FObHZUVEhkR1NMN253THJ6UUF3MnQvN2ovYzZmMWtvLzZN?=
 =?utf-8?B?T2lmRlhZZnNqZHhzK25Hc2VTSStlQUJsc1l2YkFBM0hSN203MTczUHJvNkFx?=
 =?utf-8?B?Uy9PTEFHbHVGWmdpRTZmTlA3QWxwUC9DaFZkaDZYaUpYaHNPL2ttbnpuNzhv?=
 =?utf-8?B?MXNlV2J3Y21rejg4blowSTQ3M2MveGgycGtldGFNaE4zRU1oMisvbUhxbDcw?=
 =?utf-8?B?cmNlbXM0RkFxY1p5bDVMZlZYN3c5ZjJSR2poNmgwZlNJTUUwUDAwRFA2NWY0?=
 =?utf-8?B?TXlNRGpjWkNUL0cxN2ZNZFFvNDIyT0Z0YnE0TUpBVVhNWnQ0cWdSakpXTkxv?=
 =?utf-8?B?MnVzb2xmd1h6SFl3WHNCMHlDSUFLY0FuT0JEZ2hNN2VwaWdlenB0RHFKVnlK?=
 =?utf-8?B?NElsdU1XTGw3REIrQWRGeHZsTzY3QUlzVG92b3RJRjZ4clM2WTN1cEtKTkNh?=
 =?utf-8?B?d0VzTHJadW91UEZkSld0a1NucTZ4c2poVXVqL3gxUGtRclJFbjZ0NHowcDVv?=
 =?utf-8?B?cG9kQmQwUC9sN1lOVDVZMnhIeCszVkZUMU5sMFl1S1dhMWlHOHlrZEJDcUMw?=
 =?utf-8?B?Z09HL2p4NityZ3llZEFtNFEyVldHUTlRSDg0aTJwbWZWbDYveXIwdkkrWmc0?=
 =?utf-8?B?QU9VOStUTFRBSXZVeHVjZXVHSUYrVGpKZUxhK2VrS1Q1TzlVTGJXZTROaE9k?=
 =?utf-8?B?Zks5MmhuYlphT3d5TVhlclF1WGZod3FKUWdYN1puREJFUjEzbkhMYVFUNGdw?=
 =?utf-8?B?RE1PMk1oNStEcVlVenh2YjFXSitzSlBzZGQzWDYvQ0VWaWZlNDRpWno0QVhj?=
 =?utf-8?B?Wll2RkY5emswaCs5V1VwdGN2UkJ5bDNyQWRVclh1SEV0WnIyOWpMUE96SDBU?=
 =?utf-8?B?Und5UXRiRXVkVFppNkZsWmkxMEhRMGhHUXNFYjVQaXB2Vlc1NmJ5anJOWkZQ?=
 =?utf-8?B?V0RPdjU3eWhzbGswMDNqSy8yZGQ1bkdjT0R3Q25JSkd0SmplZlRaUmc3TFl6?=
 =?utf-8?B?RlZ1ZGF5U3JLMlFobW5hd0lENFp1alcxN3ZBeFN5NmJGVjN6OEw5Qjdjakt5?=
 =?utf-8?B?M2ZrRE9FekNaeCtmWlF3eE1RSlFpWWMwL1ArdU01MjZJbHNvRm5VMUZmRkx0?=
 =?utf-8?B?YlJlTHk5Nitlci9KVzRaL0wvYm9tZXB1Y2N2NjJwSHptWmdKelc1S01ibkZk?=
 =?utf-8?B?cjR3Yk40UEM1RG0xNzVTa3VTMnR1QS9oNzBLQk80ZXpycXlqdENnUmczdjc2?=
 =?utf-8?B?QkVVM1NOa25nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0I4bXQ2a21GaTNZZHlnanBOWWEwQndjZG16YzVvaVZoSEx2eS9jb0lhN0ZL?=
 =?utf-8?B?S2pNbXg0Nk5LZnl4L0dmQi9MNWQzRFlzQ3JWUVVWYUlzU2lNTTllcmN3aVVZ?=
 =?utf-8?B?WlQ4aUtlZHR2SU5XVVBPQVlkYTVHald1SjJGYStkRkwvbXlmSmNiVnFJLzNU?=
 =?utf-8?B?K2R4K3lZLzdJSXJab3FMK2c2WEhWYThZdzhYSUY4MkxOZnVISE1XTUFsYURp?=
 =?utf-8?B?MUttNmVRdWtPNzJOVzM4dXoxNUpXYkU0aXR3MWdEVGV3OVZ4MG01bVprTjhs?=
 =?utf-8?B?VUhzaE1aZytWTGpTMGtEYTBZM2FDMDlycWZhbXdkU0YwL0dtYWU5aUZuaUpB?=
 =?utf-8?B?aXVuRnBneXozak1JNkFYL2pIWVhQQy80Q0ZVaUFJS0RUWGR1Zkl6TE1xcGV6?=
 =?utf-8?B?REdDQ0N6VWVlT1d5MDF5d0EvV3E4dlgrK2pBVjlZbVN4STZaaUlkZHB3ZE52?=
 =?utf-8?B?R29BbXR2eWEzQU1mSTFENWdYc3poOTRVQ2c5TFgxc2JCT2ViT0NvTmlGL09J?=
 =?utf-8?B?NlowSDJXRE1sT3FwU3ovQ3FVZ2Q4bWF3dS8xSStmMW1iWjlqS0U5N0szUmZB?=
 =?utf-8?B?UDM5V0dKM1Vra0JlQy8zblZJWDZlODJ0NVZaT3Z4UklLR05OUmVtZmxsb1cy?=
 =?utf-8?B?MUFZSUljL0lMMkQrMFhreHlQYkhmQXE3d1l3aW1NVm5iNG5HekFMbDBkd05C?=
 =?utf-8?B?MFZPeGxJdGNuYVBmejRLSHo4azNtdlkwK3BuVUlZZG5Na1RvRTNTUFJmY1FQ?=
 =?utf-8?B?MU1LSjcrYUx6L1oxdmltcEFVZTFzSmtJcVNMK1lSdUplMjY4RFBBRjd4UDF3?=
 =?utf-8?B?SXdYTHdPSldtSXhsSTdBQVlKUHptTGRFQ0xLYjR6aHdtdXFCWXNwUXo1d2hP?=
 =?utf-8?B?OUNkc0E4ZXExQnhqbUR3Nmpjd1ZmcWdsVS9GbkJzUVVOQzdndmlseDFjV0Mz?=
 =?utf-8?B?RzFhWDVmU0FrNm5Ka1V0Z3N0RmJIWCswZ0d0cTgrdXZRQUlzdWVyOUxmK1dD?=
 =?utf-8?B?NnN2WWx0WFgrcWQ1dDRKZk1jZSsyUGQ5THc1VDFac3hzM0hGbCtQdHhXWmFF?=
 =?utf-8?B?TlFUODB4bFdramwzOUdrOXIvY2EreUhYZmFaSGVkUVl2Qk9MYlNINFZhdDR3?=
 =?utf-8?B?MXRYWHhHWTAxY1VGNVpIRURuYkkvRXN6dVVkYVZYZVBmWXpMU3lkcnlZWEFp?=
 =?utf-8?B?U3cwbkIrcWJJdm9KL25XSFFzSkJTTWlYRVNjalBkcncyMFRBbkJ6TjlEOXF0?=
 =?utf-8?B?eXN0NFU3M3RkMVBnbHpUWFdqRkJ2djlJc0ZnRkgwaWlMbXFLNDlCV0luVHhS?=
 =?utf-8?B?UHl1SkdXRHlHMzZCeWVpZ0tXNDVKUG5KUmJxTVRTQi9YSlExaGN4bmd2TGNh?=
 =?utf-8?B?bVphQXlPWGVEbzVITnNUdlJsMCtoY2g1OHdWUG5BbGZZRjlFcFVWUkhFKzBF?=
 =?utf-8?B?K3RTRGpqekhZbjZjUU8zK3lEUXNVNjhEekJyYVAyL3JJVzRTbUpyWG9adXFl?=
 =?utf-8?B?SXJrV2ZnZGRsbUZieVBWa0hLckRZcVRZc0dZWUxlWHVOcVcreFhjenhSaERE?=
 =?utf-8?B?K3RWYjhVYWxZc3pBZHdvZWp3QUJobWZOeTB1OGw2RzdpY3JYU21hcTRYZGg4?=
 =?utf-8?B?QXRhOHRCMFNobEluZFlIQ3I1eEJhR3A2QXlVZVVBYm9LSHBLS2NrOGNOazRT?=
 =?utf-8?B?MERYcUd6VTZKcEFjSC9tcHBlRkJkQWR2VXJ5L1ZqYnFDdHhEeEhjNTdjN0k4?=
 =?utf-8?B?cUU2WmI2WlFRb3lFdXpha0o5SmVsUVA1N0Vrb0ZoeVZkU05hWDg3S3BDTnpv?=
 =?utf-8?B?SW4xL0t6MkJEc0FQbDN0NzBFSEdaODdRK3RNYU8rbkJvQTNNUkFNK3BJWWxT?=
 =?utf-8?B?UGhxOXJyMm02Q3ZKc1luWDdieE4vcWxqSU94cUtUQk5yL2ZsOFlUWFdtaFpz?=
 =?utf-8?B?T0g2eVg4VnVDd0hKL1lrNlo3MkJIWktXUmdGYlFjYmkvU3FIaDRtODYvWlVN?=
 =?utf-8?B?TVU1enJMTVh5cWQ5Q0VKaWprV2dEU2xyNGtvdE1SdklLb0szZXpCdTM2OGVS?=
 =?utf-8?B?cGJ1RzZLTW9nZ1pKVXAzWjhOSStqbFVYaitBQ2tBVXpZcDFjWUpqYjVsdDRj?=
 =?utf-8?B?K0h6aDlWcVQxQmdxVWtlRVI1NHNJLzE0bU1IRjA1K2V0RDYvbkh1QXN2em5Z?=
 =?utf-8?B?SWdpWFowRzJtcG1NMy93OEdUL2Y5VWdSRThMdDlZZksyL2h2S2tnbWQzT0Q4?=
 =?utf-8?B?bVNoMnNDMnFaelZSQmVNak01M3RnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <30D0DD410D3BA04C90AE192FE0ADA611@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a28a3cb-e267-48e8-9e3d-08dde139c4f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2025 05:07:18.9841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ay4YkNruFp/WD+G6APo22gLBnMt+Uin0epSI7RqfR9BET1zOtjcCrxWLH6bVDsU17lNRvkXvVD+JE3TO5BS75Z2Q5/lFrSQFnsyzOSc4YVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7684
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

T24gVGh1LCAyMDI1LTA4LTIxIGF0IDE2OjEwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgQXVnIDIxLCAyMDI1IGF0IDA3OjU5OjE4QU0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBDaGVjayBkcm1fbW9kZV92cmVmcmVzaCByZXR1cm4gdmFsdWUgc2Fu
aXR5IGJlZm9yZSB1c2luZyBpdCBpbg0KPiA+IGludGVsX2dldF9mcmFtZV90aW1lX3VzLg0KPiA+
IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDkgKysrKysrKy0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNWFkZGRlNjMxNjhlLi44Y2MyMzE0ZmFjNmYg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiBAQCAtMTExNiwxMSArMTExNiwxNiBAQCB0cmFuc2NvZGVyX2hhc19wc3IyKHN0cnVjdCBpbnRl
bF9kaXNwbGF5DQo+ID4gKmRpc3BsYXksIGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlDQo+
ID4gwqANCj4gPiDCoHN0YXRpYyB1MzIgaW50ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiDCoHsNCj4gPiArCWlu
dCB2cmVmcmVzaDsNCj4gPiArDQo+ID4gwqAJaWYgKCFjcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+
ID4gwqAJCXJldHVybiAwOw0KPiA+IMKgDQo+ID4gLQlyZXR1cm4gRElWX1JPVU5EX1VQKDEwMDAg
KiAxMDAwLA0KPiA+IC0JCQnCoMKgwqAgZHJtX21vZGVfdnJlZnJlc2goJmNydGNfc3RhdGUtDQo+
ID4gPmh3LmFkanVzdGVkX21vZGUpKTsNCj4gPiArCXZyZWZyZXNoID0gZHJtX21vZGVfdnJlZnJl
c2goJmNydGNfc3RhdGUtDQo+ID4gPmh3LmFkanVzdGVkX21vZGUpOw0KPiA+ICsJaWYgKHZyZWZy
ZXNoIDw9IDApDQo+IA0KPiBIb3cgd291bGQgdGhhdCBoYXBwZW4/DQoNClRoZXJlIGFyZSBzb21l
IHNhbml0eSBjaGVja3MgaW4gZHJtX21vZGVfdnJlZnJlc2ggcmV0dXJuaW5nIDAuIERvIHlvdQ0K
dGhpbmsgd2Ugc2hvdWxkIGp1c3QgcmVseSBvbiB0aGF0IHdlIHdvdWxkIG5vdCBlbmQgdXAgaGVy
ZSB3aXRoIHN1Y2gNCmJyb2tlbiBkcm0gbW9kZSBkYXRhPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2Fu
ZGVyDQo+IA0KPiA+ICsJCXJldHVybiAwOw0KPiA+ICsNCj4gPiArCXJldHVybiBESVZfUk9VTkRf
VVAoMTAwMCAqIDEwMDAsIHZyZWZyZXNoKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IMKgc3RhdGlj
IHZvaWQgcHNyMl9wcm9ncmFtX2lkbGVfZnJhbWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ID4gLS0gDQo+ID4gMi40My4wDQo+IA0KDQo=
