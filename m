Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05757A6347F
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Mar 2025 08:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E4410E10A;
	Sun, 16 Mar 2025 07:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GtcE4WOi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E7710E109;
 Sun, 16 Mar 2025 07:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742110087; x=1773646087;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t5I10s30SIQsADLYDmRmRiEbBM2dqcZWUURG0jIL0B4=;
 b=GtcE4WOi2CEUKUyAnnCh0s7YqMs1stMtlG0kP3fEsY8eJIPXLz4+N2b7
 LkRtl6WnEQDItPysJT3T6k1MN9Gelk8DptBao4x4d5LYDPWN/r30lT42q
 CHhBEug7OW1zi2Gt4T0vPdBKkHZjI0oBGWeEAT9+pz8AisOwyyDECXqUt
 L7ypyHMGj5xP2n/RHG9v70HQ9PVq8fkYQKq+9UMehrWAgsOS15wd1U/FF
 RF1jn3w0HtmiAoLryf7iGi8TZLfJKkqWsnnh3cN373KBfoJ0QlDennJvU
 JPou8xGaP/+iUIyX5rp0pgdABt/9cItunfdzYmSsxt6YSjpEG1iCAZWcz Q==;
X-CSE-ConnectionGUID: wGbkb2jpQKi3UfKYXG5TPQ==
X-CSE-MsgGUID: 605EYx4uTW+16etveggIMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11374"; a="43105951"
X-IronPort-AV: E=Sophos;i="6.14,251,1736841600"; d="scan'208";a="43105951"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 00:28:05 -0700
X-CSE-ConnectionGUID: YH/4uI3FQKKdTv5kyumNVw==
X-CSE-MsgGUID: QnRoYyrFTZa3460MkdFlqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,251,1736841600"; d="scan'208";a="121597285"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 00:28:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 16 Mar 2025 00:28:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 16 Mar 2025 00:28:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 16 Mar 2025 00:27:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mB+GpXEhieUCjhJ8KxhpFKL3lju0U+G4oZ2xpU/+kMU8nZMzVpEkNrfYQbCaHAhHKRU9aoGclbELbT2n6e6+pSPFH8BzWIC43XDNXI9YHLYPJwbJNYF0c4Qf4S53QHOZNpyrVQIqBzsM0ylD7t8jk1hCfkMTgCiWy8qX3PVn8crkLQb8VQW+iDIOY5t2P+TVTsrQUJ0glSFShs06Ui5WEJTjGwGueobvPn5g+wS+kGAgeDqxpEpuwIIPkNPBJFVSzWupL1f93k7HQvz3cKRRTexRPe+LnfbCFocLS+9mCGsxS9oSWl5cA5yM11Pz1u/MdOUdSiIVkbHWqyMEPle1pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5I10s30SIQsADLYDmRmRiEbBM2dqcZWUURG0jIL0B4=;
 b=bCzWgunaeCt+a4E66dg9rDUNWH4WGfyEGTCSTIuZOp/F/ZmZP75B5nS/LIbtChYiaPEPDXJamoBqqMrW2LuHb8wzoK4kVseQ8njvqPr1D1snVynoxmpKNG7lsQcKdCwVjn8SZWmpe77k+bZtLUKVzz8dl6+XAxV1+3sRTKzyHhbYVSPilK0Fn6railuxlN44AKVm8scNUArMvV4DAaP6cea7VDAGio/ap2WXN+jCLWtFJACwrEQFh6pWpXT/L5X11JJG2XAm3x7yuSM3QxtUR23xmKL+RZCZIyvNvtpN0MMFScEEjRv09M0mCZehKJQ2cHwbWErKeW4BxFeTaqVk/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB7330.namprd11.prod.outlook.com (2603:10b6:208:436::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Sun, 16 Mar
 2025 07:27:39 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8511.026; Sun, 16 Mar 2025
 07:27:39 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Baolu Lu <baolu.lu@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: Regression on drm-tip
Thread-Topic: Regression on drm-tip
Thread-Index: AduT81McpXbO29/8RDWHWCDCdOzGGgAMCbyAACcZwNAAVvtbgAAJ0AHw
Date: Sun, 16 Mar 2025 07:27:39 +0000
Message-ID: <SJ1PR11MB61299D9421F7B3DEA6424389B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <4951eb3c-aa2b-46cf-87bd-37b09447748d@linux.intel.com>
 <SJ1PR11MB6129AAF87542D06B7A23C0FCB9D22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e6d65b6-4f9a-4d23-925c-75be7c4bd561@linux.intel.com>
In-Reply-To: <5e6d65b6-4f9a-4d23-925c-75be7c4bd561@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA0PR11MB7330:EE_
x-ms-office365-filtering-correlation-id: fd265c13-7382-4b45-5457-08dd645c0835
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UE5zS3ZiWnQ3RVBZc1Z6bDJTSGwzN0lZZ0VPQnVzWU9YY2VscjVSY0xjODNI?=
 =?utf-8?B?VjNBdFlpdlEydEJYbHBUdy9zY1hJaVFDQW5kMkhMamU3UW5iMy9wRUdIbnc2?=
 =?utf-8?B?bzg0ZlFSZWlxQXlDVkJyRzhyTE9qSEN4MW5Sb3cvWHhwMTVoR2FrR3I5bFc4?=
 =?utf-8?B?WlZ5L1dEbXJ5bHhtcXY2WGphQ2hZU2NtYnM2cjRBUUxLYjlyVWVIQm9KVjJy?=
 =?utf-8?B?c2FWR0EycHBqSFdWWXc1QktWWjJhb0VNRjRIdFZMMnlFeHFOejlsUy90OW1l?=
 =?utf-8?B?UVIwTXFPN1BuMmxUbmNIOENuYUp3MVVxdTVDOFEwMHZ0QkIwY01HbC9FQ2xU?=
 =?utf-8?B?ZjRPSDNFb3NNMEthU1JTU2FudHkwaEM1d2tmbVp0Qzk2MDhXeXNCMjFleXhT?=
 =?utf-8?B?WlgvaFF6L0RzNlVza0NUQ2dONUlkNGJzT08rYWlyOXU0cWkxQWk3QTVPN1FX?=
 =?utf-8?B?Q3U2a21QYWJYSEFwaVAvYWJ5Wnd0N1J0dFVNNkhhRUp6TWhNUmJmaGdwenFv?=
 =?utf-8?B?aGNDOWgxc2pOUmNuOXR2dEZhZzhEclE4NkdXQXZzd2JRcjJ1ZmNQdjVwNXJl?=
 =?utf-8?B?NzhEZi9MMG9PUEZUSmtkTEJzSVR0cDZ1RXVwZUdzUkJvUkFJQUwxVHJEdXVG?=
 =?utf-8?B?S2R1Q00xQ3FqSmdIZXhZTnlGdEtJVUlBVnB5ZjdDaThzK0NqaUo4OUdYcE03?=
 =?utf-8?B?RmROelpOMUR5Z1l5U3Z2MldNdUxuR3VKRVdvVm1FSWlSQWdabUFsbC9tdnd4?=
 =?utf-8?B?Zi9hZlUzNVZTTWlTVFRtenBlN1IxdUN4RzBmaTJ3a0ZPNGVyaTB2alNKNnVC?=
 =?utf-8?B?Qlhic0U0WVJWeGh3VTNHWGlBQUw2aytVMHoxOEs1T2k4dEhMUEVEV2huTHU5?=
 =?utf-8?B?bFNOOStJcmFvb2lKeHMzOGprM1pyR3UwS2w1aDd3YmZodUZmZ215Z21sck4z?=
 =?utf-8?B?b0J3YnV2MjZ6TjVWMmFEZ05LTkFBMUhyUVZRSHJkbWlXV0xBYUJ6K3hUWHFo?=
 =?utf-8?B?cHFkeDZPeVd0aWZYd1hLUXZ4M3QyVjZsRHBZK2grU2ZSaWVJTWQrb2pvRHFG?=
 =?utf-8?B?V0E1OU1meVdscGlySlRyV2h4R3ltMzA2VStoeThtelhpcWxzU0x6K0hGaHln?=
 =?utf-8?B?dW9IOGdhZC9TMmN2SjVOaHlHQUQ5YXl5NzlkSGpoVUFoOEdDOFdOcUZnNSt0?=
 =?utf-8?B?elJFMG1FcXpHeE52L09WclY5ZzZQZ2xXWUMwcG9JY0pYMENIbm1yNFI1SFZF?=
 =?utf-8?B?QXVwMjRuL0FpZDd2SGpIQytManJLMTZDOTNNcmdUMHBja2h0MWpnSWNYYmVF?=
 =?utf-8?B?ZzRVbVN2NDA5WUJzMHBac1hPTzU1YlNVUFRrSkNhajExL3l6dnZSSXFwdGU1?=
 =?utf-8?B?NWxjSTFsMGdmT09iNjlUY0p5UmRoWFpSNkxDL3R2ZXVxdGRPcG92OTM1VnJR?=
 =?utf-8?B?TTB6ay9mSEJWYzY5ZUJraWFyMmNidHA5U0NkTlg1UDZvUG9jQURMeGtsU0Zh?=
 =?utf-8?B?dXR6M2RZUUowS0gzSDdmNWVuSHU5UmMzejZ1MnRMckNNcWdLTnVqY2ZpSjJZ?=
 =?utf-8?B?d1dOTEtoWVFFSFNXcmcwVDhtVkgwNnFibk1RaFV2ZzZPcHhlTXJXN3FYaWdp?=
 =?utf-8?B?Tm9hWTZoQ1FJbVFTNlh5eTc1MnVXWlRYdDJaMmdxMnpCMVFHQzJDZVNSV1Zr?=
 =?utf-8?B?dC9lOXJDeGtVWTNLSWlVbUlvUnh0VjU3RTd0VHpOOExZdUxzN2lqaFJITXhS?=
 =?utf-8?B?b0tsNU8yU3VsTGZlTW1DU1dwZWg0UlJuMHhmb2hFTGZ1bUhEczZ5KzFENy9Y?=
 =?utf-8?B?MDhNbWtKbXF1RzVMc2FtUmRJVW1MV0prMkR2dGh2Qk1BM2pTZ2V6VEhhTGsv?=
 =?utf-8?B?c0pqc1NzN2tCMm1FZzFOdjMzd09Ya1pNVE1XM1JmaHNFWVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V25TZWNEK05BSzFuQzhhS1dzZFJWa0I3dVV6MndoSzA1TjRIRHh3T1ZaK1RZ?=
 =?utf-8?B?dllzM0c5SHRPUGNWMzhDWWRPTTBSWXlNOVJnZjEwRG5VOExmRVUzOFRmRTlS?=
 =?utf-8?B?RE4wK29WeXdMR0tUTCtNSU5hcnVpNFc0M1lzV2hWWTZWbTl1cmtsd1hqTzhn?=
 =?utf-8?B?Ylp1aGFYaUhKbm56S1NLSmtnT2lVQ0xqY01YcExXUWZ6NDFURmFMa1JyOHk5?=
 =?utf-8?B?ajNtWHlQREhMdm12OEVOWW52V1JmaTZ2VGpCU0g4ZXR2eHl5bGFsNXh5MEZB?=
 =?utf-8?B?ZGZ1aHZ6ajBSK205enJHTTN1WlFRem9aSDMrN1oraEt0N016TTQreCtkdFFI?=
 =?utf-8?B?THlyb1M1VWtsejlBSWUybUtndkZ0RHkrQjJKam96YVZaM2FuTnJ4TlZwMVZK?=
 =?utf-8?B?STYrd2duZFJhZksyU2ErQ0ljWW1oYkZHOG8zYXVaUzhUN3hNK0xFM3hXamFI?=
 =?utf-8?B?bWZLZHZsMmUwclBvbXNBRksyclV3T2kvcldOWU5CR25mSmVMbElRaTlzMHNm?=
 =?utf-8?B?UEZQVDhKK2NZdnh4eEl4WUE2QVVNNy9jNHFkZUJnSUc5d3ZUNlFlRzhNeTlL?=
 =?utf-8?B?RVY2MHhsNERFdnM1a0Z2OStiYkdrV3V0SU5PclJtWm0xb2pCT1oxRWV4Qlda?=
 =?utf-8?B?amxxNXJBSGd6dGNVMkdCYlJFN2pPQnlGa3AzbCs4alFYVnZFQWxBRHpwUDJG?=
 =?utf-8?B?eXFLSVhXZjlsUXlJK2VlTzRxcFg0ODNxYXJlUWxCaC91YS9DQkNYRUhPMy9K?=
 =?utf-8?B?SUlJbUs4aFhNak1OTWlvUVVuek95M2xnZEs5ajErTTRaZVZTM2d3Vno2RkF2?=
 =?utf-8?B?VG92UERCWDFqMHVQLzV6Yk5STTNheTJkcDBxWkVkek9SOEF6Qnd3cEpvN0F0?=
 =?utf-8?B?a2hwb2Qrc2toeG9BUWRWNjhpcFFxV2ZKRnlra2lCZTlCMHg4VEN5SjJxVGR5?=
 =?utf-8?B?VHJUK2tCUExkWjI5MFBiek5mY0VZQUxmRGF2RDNZaUFRaXU5cVRTTkoxZTR2?=
 =?utf-8?B?NndjNDhhenVRU1ZiSUhmRnNXWDNVcUVjazdkdCtvdmVHYXVWbFJZTkdlRmNN?=
 =?utf-8?B?L0tXWi84Q1hZMjJBR2RHY0QvNzhvbGdscVU5Y3pNaTR1LzQ3ZjkwdmZIbGF0?=
 =?utf-8?B?RG9NQzEzOHhTUi80L1JTejNtaGQwTSszZ2NTREVEOUR0Snk3STQ1WERGZ2l4?=
 =?utf-8?B?bktYNjc5bTduRmFUNGthNTlpZXQ0N1YwbmcwNFhuRWo4WjRQaUtSbjVwSk1m?=
 =?utf-8?B?Y3FDN0ZRVExpTnhWK2RhUzdXYVNBcC9HMEQvZEtmRHk5QUJmTlNxQ0V0NElx?=
 =?utf-8?B?TFJNZDhvYXk5WVkzcVFXUitFY01lZTJmZGt0SndEUHpxSHJ0OGxwOUZ6cnNp?=
 =?utf-8?B?dVFVenQ4VXFFK1dBeWRIVFRWNW5xVFZKOHl4MTdFQ0NnNXBpV2ZYemtYTWt1?=
 =?utf-8?B?aW5FRjZITElXU3JDdk1OYXl2Y1dLOGhsZ0FDci9KZUZ5Z2NYYjAyUUI3amRS?=
 =?utf-8?B?RTNzZ2dLODNKTit5MFBFYXVIZFdyakNyeXpRQ21OTVFuUFRSTnZ2MmgwVmtn?=
 =?utf-8?B?OTZIOVhIa2NmYUN0N1dZRmMrUWtXYUM3dTc5K2Njai9LN3VyL1dycDYrd0dx?=
 =?utf-8?B?VDBLSWUwT0dHZDlzbFJwSnlpZnlSTnJKZWM1UjhXaGhmVEU5dnhUT3M0a29x?=
 =?utf-8?B?MWFuL2lXWUNOV2JHTUM4LzFIWlRGOXBmdndPdzdvcERwTGVWd0ppUWkyRm1k?=
 =?utf-8?B?RkY2ODNVZFljZ1dsVDNENS8zcVFadngxN3RTSHlPQkg3TVBReXRzY1VMK0lZ?=
 =?utf-8?B?QzVVcnlDZ0ZTSHFaZDZFOTR6OGcyNHFQZ3VYejRXY1FML1A3TGtnQWJxR3VF?=
 =?utf-8?B?R1BFQTJFbXpCNmUrNVVJdDlaeHBENFZ6SzJoWnM5Zjl5RGNXM2pDRDhkM2lD?=
 =?utf-8?B?Q0N6OW5RZ0lTeDk5WDEyOFVoaFJYdVpDVjBCcFlDaDg1dGhEOVF3eVdHbmVO?=
 =?utf-8?B?ejZWQ0x1V2hQamdWaGw1TzlxMTY2WXVLRUFabUtmaCtmd3hYWTZiWUJmUUFM?=
 =?utf-8?B?b01LaGxrMXNSclJXNmJXb2dzekw0K0tUdkt5K2xXcjdBTldCOFMxc1kzODVS?=
 =?utf-8?B?bkZEL3FHVDdoTWtHcGZWOVdyWjJlYVBOdDA1Z2k0ZHFCUkQ4OE5PdUVETGhT?=
 =?utf-8?B?T1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd265c13-7382-4b45-5457-08dd645c0835
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2025 07:27:39.3729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bj3izZf95lOwzwq5lba8HN4Y2Kylm9DhYoH+A6jI9LU6N/+SxanFN62NEKt6yklDceuEPW1mOSMBSKn73txYmpHoeE7VZba3YUa4F0lh9Ww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7330
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmFvbHUgTHUgPGJhb2x1
Lmx1QGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogU3VuZGF5LCBNYXJjaCAxNiwgMjAyNSA4OjA0
IEFNDQo+IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFueWEua3VtYXIuYm9yYWhA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpb21tdUBsaXN0cy5saW51eC5kZXYNCj4gU3Vi
amVjdDogUmU6IFJlZ3Jlc3Npb24gb24gZHJtLXRpcA0KPiANCj4gT24gMy8xNC8yNSAxNzowNCwg
Qm9yYWgsIENoYWl0YW55YSBLdW1hciB3cm90ZToNCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IEJhb2x1IEx1IDxiYW9sdS5sdUBsaW51eC5pbnRl
bC5jb20+DQo+ID4+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxMywgMjAyNSA3OjUzIFBNDQo+ID4+
IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwu
Y29tPg0KPiA+PiBDYzogYmFvbHUubHVAbGludXguaW50ZWwuY29tOyBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC0NCj4gPj4geGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBp
b21tdUBsaXN0cy5saW51eC5kZXYNCj4gPj4gU3ViamVjdDogUmU6IFJlZ3Jlc3Npb24gb24gZHJt
LXRpcA0KPiA+Pg0KPiA+PiBPbiAyMDI1LzMvMTMgMTY6NTEsIEJvcmFoLCBDaGFpdGFueWEgS3Vt
YXIgd3JvdGU6DQo+ID4+PiBIZWxsbyBMdSwNCj4gPj4+DQo+ID4+PiBIb3BlIHlvdSBhcmUgZG9p
bmcgd2VsbC4gSSBhbSBDaGFpdGFueWEgZnJvbSB0aGUgbGludXggZ3JhcGhpY3MgdGVhbQ0KPiA+
Pj4gaW4NCj4gPj4gSW50ZWwuDQo+ID4+Pg0KPiA+Pj4gVGhpcyBtYWlsIGlzIHJlZ2FyZGluZyBh
IHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBvdXIgQ0kgcnVuc1sxXQ0KPiA+Pj4gb24gZHJt
LXRpcA0KPiA+PiByZXBvc2l0b3J5Lg0KPiA+Pj4NCj4gPj4+IGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+ID4+PiBg
YCBgYGBgYGBgYGBgYCA8ND5bwqDCoMKgIDIuODU2NjIyXSBXQVJOSU5HOiBwb3NzaWJsZSBjaXJj
dWxhciBsb2NraW5nDQo+ID4+PiBkZXBlbmRlbmN5IGRldGVjdGVkIDw0PlvCoMKgwqAgMi44NTY2
MzFdDQo+ID4+PiA2LjE0LjAtcmM1LUNJX0RSTV8xNjIxNy1nYzU1ZWY5MGI2OWQzKyAjMSBUYWlu
dGVkOiBHwqDCoMKgwqDCoMKgwqDCoMKgIEkgPDQ+Ww0KPiA+Pj4gMi44NTY2NDJdIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+Pj4gPDQ+
W8KgwqDCoCAyLjg1NjY1MF0gc3dhcHBlci8wLzEgaXMgdHJ5aW5nIHRvIGFjcXVpcmUgbG9jazoN
Cj4gPj4+IDw0PlvCoMKgwqAgMi44NTY2NTddIGZmZmZmZmZmODM2MGVjYzgNCj4gPj4+IChpb21t
dV9wcm9iZV9kZXZpY2VfbG9jayl7Ky4rLn0tezM6M30sIGF0Og0KPiA+Pj4gaW9tbXVfcHJvYmVf
ZGV2aWNlKzB4MWQvMHg3MCA8ND5bwqDCoMKgIDIuODU2Njc5XQ0KPiA+Pj4gICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBidXQgdGFzayBpcyBhbHJlYWR5IGhvbGRpbmcgbG9j
azoNCj4gPj4+IDw0PlvCoMKgwqAgMi44NTY2ODZdIGZmZmY4ODgxMDJhYjZmYTgNCj4gPj4+ICgm
ZGV2aWNlLT5waHlzaWNhbF9ub2RlX2xvY2speysuKy59LXszOjN9LCBhdDoNCj4gPj4+IGludGVs
X2lvbW11X2luaXQrMHhlYTEvMHgxMjIwDQo+ID4+PiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+Pj4gYGANCj4g
Pj4+IGBgYGBgYGBgYGBgDQo+ID4+PiBEZXRhaWxzIGxvZyBjYW4gYmUgZm91bmQgaW4gWzJdLg0K
PiA+Pj4NCj4gPj4+IEFmdGVyIGJpc2VjdGluZyB0aGUgdHJlZSwgdGhlIGZvbGxvd2luZyBwYXRj
aCBbM10gc2VlbXMgdG8gYmUgdGhlDQo+ID4+PiBmaXJzdCAiYmFkIiBjb21taXQNCj4gPj4+DQo+
ID4+PiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYA0KPiA+Pj4gYGANCj4gPj4+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgDQo+ID4+PiBjb21taXQgYjE1MDY1NGY3NGJmMGRmOGU2YTc5MzZkNWVjNTE0
MDBkOWVjMDZkOA0KPiA+Pj4gQXV0aG9yOiBMdSBCYW9sdW1haWx0bzpiYW9sdS5sdUBsaW51eC5p
bnRlbC5jb20NCj4gPj4+IERhdGU6wqDCoCBGcmkgRmViIDI4IDE4OjI3OjI2IDIwMjUgKzA4MDAN
Cj4gPj4+DQo+ID4+PiAgIMKgwqDCoCBpb21tdS92dC1kOiBGaXggc3VzcGljaW91cyBSQ1UgdXNh
Z2UNCj4gPj4+DQo+ID4+PiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+Pj4gYGANCj4gPj4+IGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+ID4+Pg0KPiA+Pj4gV2UgYWxzbyB2ZXJpZmllZCB0
aGF0IGlmIHdlIHJldmVydCB0aGUgcGF0Y2ggdGhlIGlzc3VlIGlzIG5vdCBzZWVuLg0KPiA+Pj4N
Cj4gPj4+IENvdWxkIHlvdSBwbGVhc2UgY2hlY2sgd2h5IHRoZSBwYXRjaCBjYXVzZXMgdGhpcyBy
ZWdyZXNzaW9uIGFuZA0KPiA+Pj4gcHJvdmlkZSBhDQo+ID4+IGZpeCBpZiBuZWNlc3Nhcnk/DQo+
ID4+DQo+ID4+IENhbiB5b3UgcGxlYXNlIHRha2UgYSBxdWljayB0ZXN0IHRvIGNoZWNrIGlmIHRo
ZSBmb2xsb3dpbmcgZml4IHdvcmtzPw0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9p
b21tdS9pbnRlbC9kbWFyLmMgYi9kcml2ZXJzL2lvbW11L2ludGVsL2RtYXIuYw0KPiA+PiBpbmRl
eA0KPiA+PiBlNTQwMDkyZDY2NGQuLjA2ZGViZWFlYzY0MyAxMDA2NDQNCj4gPj4gLS0tIGEvZHJp
dmVycy9pb21tdS9pbnRlbC9kbWFyLmMNCj4gPj4gKysrIGIvZHJpdmVycy9pb21tdS9pbnRlbC9k
bWFyLmMNCj4gPj4gQEAgLTIwNTEsOCArMjA1MSwxMyBAQCBpbnQgZW5hYmxlX2RyaGRfZmF1bHRf
aGFuZGxpbmcodW5zaWduZWQgaW50DQo+IGNwdSkNCj4gPj4gICAgICAgICAgICAgICAgICAgaWYg
KGlvbW11LT5pcnEgfHwgaW9tbXUtPm5vZGUgIT0gY3B1X3RvX25vZGUoY3B1KSkNCj4gPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPj4NCj4gPj4gKyAgICAgICAgICAg
ICAgIC8qDQo+ID4+ICsgICAgICAgICAgICAgICAgKiBDYWxsIGRtYXJfYWxsb2NfaHdpcnEoKSB3
aXRoIGRtYXJfZ2xvYmFsX2xvY2sgaGVsZCwNCj4gPj4gKyAgICAgICAgICAgICAgICAqIGNvdWxk
IGNhdXNlIHBvc3NpYmxlIGxvY2sgcmFjZSBjb25kaXRpb24uDQo+ID4+ICsgICAgICAgICAgICAg
ICAgKi8NCj4gPj4gKyAgICAgICAgICAgICAgIHVwX3JlYWQoJmRtYXJfZ2xvYmFsX2xvY2spOw0K
PiA+PiAgICAgICAgICAgICAgICAgICByZXQgPSBkbWFyX3NldF9pbnRlcnJ1cHQoaW9tbXUpOw0K
PiA+PiAtDQo+ID4+ICsgICAgICAgICAgICAgICBkb3duX3JlYWQoJmRtYXJfZ2xvYmFsX2xvY2sp
Ow0KPiA+PiAgICAgICAgICAgICAgICAgICBpZiAocmV0KSB7DQo+ID4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcHJfZXJyKCJEUkhEICVMeDogZmFpbGVkIHRvIGVuYWJsZSBmYXVsdCwgaW50
ZXJydXB0LCByZXQNCj4gJWRcbiIsDQo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICh1bnNpZ25lZCBsb25nDQo+ID4+IGxvbmcpZHJoZC0+cmVnX2Jhc2VfYWRkciwgcmV0KTsN
Cj4gPj4NCj4gPj4gVGhhbmtzLA0KPiA+PiBiYW9sdQ0KPiA+DQo+ID4gV2Ugc3RpbGwgc2VlIHRo
ZSBpc3N1ZSB3aXRoIHRoaXMgY2hhbmdlLg0KPiANCj4gSSBhbSBhdHRlbXB0aW5nIHRvIHJlcHJv
ZHVjZSB0aGlzIGlzc3VlIHdpdGggbXkgTVRMIG1hY2hpbmUuIEkgcHVsbGVkIHRoZQ0KPiB0ZXN0
IGJyYW5jaCBmcm9tOg0KPiANCj4gaHR0cHM6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9naXQv
ZHJtLXRpcC5naXQNCj4gDQo+IGFuZCBidWlsdCB0aGUgdGVzdCBrZXJuZWwgaW1hZ2UgdXNpbmcg
dGhlIGNvbmZpZ3VyYXRpb24gZmlsZSBmcm9tOg0KPiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYyMTcva2NvbmZpZy50eHQNCj4gDQo+IEJ1dCBJ
IGRpZCBub3Qgb2JzZXJ2ZSB0aGUgbG9ja2RlcCBzcGxhdCBtZW50aW9uZWQgYWJvdmUgYWZ0ZXIg
Ym9vdGluZy4NCj4gDQo+IElzIHRoZXJlIGFueXRoaW5nIEkgbWlnaHQgaGF2ZSBtaXNzZWQ/DQo+
IA0KDQorU3VyZXNoLCBKYW5pLCBMdWNhcw0KDQpXZSBhcmUgc2VlaW5nIHRoaXMgb25seSB0aGUg
c2t5a2FsZSBhbmQga2FieWxha2Ugb24gb3VyIENJIHJ1bnMuDQoNCmh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwNCg0KUmVnYXJk
cw0KDQpDaGFpdGFueWENCg0KPiBUaGFua3MsDQo+IGJhb2x1DQo=
