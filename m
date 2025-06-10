Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EEEAD45A6
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 00:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40EA210E5D3;
	Tue, 10 Jun 2025 22:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VBcmVEW5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6886410E5D3;
 Tue, 10 Jun 2025 22:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749593312; x=1781129312;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o2FbBr3uvvnnMc2eKGh95QgtVsoSrTaaydCdCKuKaGE=;
 b=VBcmVEW5V2T0hFo2n5c4ZnVghzLt867wIVOronafa0MUr6kdCYH36rj5
 yv1ijbTg1dXkx3H+FVT2w0LKlrhA/CvsrH+qoRGeWfKJIb5Sze0c6zTq5
 bB1Ju92IYHHrQatRqaWjD+1GuDDPGqJRklJ7I5442/D2H3ZFxxpHsL15L
 G/t6euwJZSxnLoUgYnUf+RQrqXnEEHQYuA7iy7lECdX3LRxYbletEiVIz
 4V44+Go1NXNypX5ukPaxflr5sIaducPczsIXNJsnWuGMDl7ejKGZ60x0I
 ddg4+0xC3Hxi8RmgWmM9Z6QSu/Kk7uvxKS0g2uj/pgwkkqFhA1XvwFTUy Q==;
X-CSE-ConnectionGUID: 3WgMgoQgT/OeYIVkfHpsGA==
X-CSE-MsgGUID: 6hZA+LKxSXW0j312MQVHcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51822885"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51822885"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:08:32 -0700
X-CSE-ConnectionGUID: zPkLZvjIQTq4AlXv7ftJNQ==
X-CSE-MsgGUID: b/bPAMgKRyC9RPTCYiKqMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="177879057"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:08:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 15:08:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 15:08:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.71)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 15:08:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X3B1/hjmzhYAR7wKgGZf2GT5flA29Nm/BF7f3nA5G4QVk+owCZ06zmcNpY+rHgbi5B9YJezgrEz19JmiEmGUx960tWaSDSbaDr5LUc11q90N4bmixoMS+lCcio5c+H6UjszCYnqqSOYjBGKGMQ9nNzTJAAtUbGGnK5VNtdC6YZSlLBYV43NqM0J5ryC91u05cIRkiiEWOMMur0cjyMg32P22460zIp4i28hOzynGm1QBdSsufJ1S1wsEPd3wpeeHbCiidzREGjC34uIRkn+vlnhWBpS7bfVywVed+znbUQUjGUvQ/sigAvhlMiafNwACNvCH6R2q4PGwAO09G8XKeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o2FbBr3uvvnnMc2eKGh95QgtVsoSrTaaydCdCKuKaGE=;
 b=F4wxle+YOjgJ+3UGUeFFX7IsvkzDVXkwTe3+VhTz+yN2apxVshGBb1cDniAEt32cWXfdSG2RrFllDGh5XX4L0W8h4R15IWEC0FXeYs9dV3NqpSwHZxXYbxjyiub2U8Zh0cBokLrTkwwgOPXoymYTPXZuH1XSIDWeLMHPkr2Fnmepjiw91jqFTBHcd8fVo+wmVxAIQUQszrKbrksaXFQdA2M1S+fc5HqaZtQ6cZLOselWegdM1A6EnKqWwhJvh2kY2UJ1p86ev+Lm21gchr42H2RA71ZhqywWShiD2sRLiWFTrSkcQJrl0dp+YzpM5DUCZ/fHSg1bbz1b6Otj0HHL4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA2PR11MB5132.namprd11.prod.outlook.com (2603:10b6:806:11a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Tue, 10 Jun
 2025 22:07:47 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 22:07:47 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 08/21] drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
Thread-Topic: [PATCH v4 08/21] drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
Thread-Index: AQHb2UqTrDpObXC0oEybKE7KODZgtLP89Y0A
Date: Tue, 10 Jun 2025 22:07:47 +0000
Message-ID: <DM4PR11MB63604A1C3F91230B74F41D39F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA2PR11MB5132:EE_
x-ms-office365-filtering-correlation-id: 11a043ed-09ff-44ed-1198-08dda86b3bd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NFl5Y2h6cEdLMUhXTVlMaHl3YzVKRzY5TnFNcUlyOEQ5SzBwV2dNSVQwSWZy?=
 =?utf-8?B?eXFnbnIrNWUrcnNkQkQwQXU2ZnBLUWtxTW9CTVpsMk5zY3dKN1BlWURwRW45?=
 =?utf-8?B?UmMzOElvY2ZrbVJMRTFRUjYybW5rZzVxTW8zMXZCbmx0N3BzU3NFV09ZMEk3?=
 =?utf-8?B?anJzWlBONHJGMVhlTE9MV3BEaVNzT1FMWkJTbld0bWl4UjI4ZHdOSjJDRkVB?=
 =?utf-8?B?aUNKRUtxSE1CdFo1V0tXeUNmRDlUYTlPSFlpQmJJMTdyV3phdjdycjgrMDdm?=
 =?utf-8?B?Yko4Q0tWRTY0Z3lSUE9lbjVSMGJWMHFPRklKSnlkWGxycFdBb1hidUxrMXZh?=
 =?utf-8?B?aVA2VXlqZFVuQzFmMWRBM1JTR3FTckp3dGhGclovdDc2RmlhUU1ncUZFcjZy?=
 =?utf-8?B?Ukw3dTlYbUc4bVQ3SkFwMzVxdXNOTy9KWGVwNTlPc3hhSW1RR3lneld2b1I3?=
 =?utf-8?B?ZzZZSUFHVDVKTk1JNUpMT3FKZFM4b0UwMWl5L3QyUWZmUzBUQm4xWlBPeG05?=
 =?utf-8?B?b2hzVE1SSnJ4OFBDUDRkWktRQUE5MVBleG9XS1p6RmlWcXdIaXBlNFZMd05o?=
 =?utf-8?B?MkVGY3BCMS9PT0xJUXVrWXRVK2tNNGRFNWtpRFBpK0pGMTg1RC9MK3pmR09I?=
 =?utf-8?B?VEM4TGVzODVUM0FNQUsrMitZbjVDQ1VQem5IUWIrOXdFcE52eUQvS1BaNUVK?=
 =?utf-8?B?TjNadUdTblFJSTVML2V3QjVqekZsYVFxU0VMWjJZOTlSTHJYdHdxc3pMWlo2?=
 =?utf-8?B?NU90SUVTNXRrNVNUZTdPWHI1ZmlrUDhYUjdYbUovUytEa1RDN3FKVG1hMzZ3?=
 =?utf-8?B?Vk5ONWpBMEg3bkNpZWhaZkp2VlRhRlM5dFl5bGQxQjdRWnFOa29kQzZkdVFh?=
 =?utf-8?B?b1llbFlJenBNY2w1TFUyaW0wWW9QM3hVYXExWWFod3h1T3dRclFhOUZXUWcv?=
 =?utf-8?B?UmkzM0JYWTJCMlUyeXRPTnI3MFFGMlFYUlZiOE92L1dBV2gyS0U4c3pDcTJV?=
 =?utf-8?B?NFJLQkFsZzArd2phSTlNRXNhWVoxQTZpQmdrWVF2STM0UWJLOUZ5MzliWFI0?=
 =?utf-8?B?d2l3eWNyVms1NSs5REEyeEVxMUNvSy9XanJrK1JoL3UzQ0k0R1J1ZFNaL2kz?=
 =?utf-8?B?cG5RcUYyN3dFUmFnSWZ6aklRT0psdmdPOTNGa3d3WXQvYmpUclM5a08zRWhG?=
 =?utf-8?B?MnZUYktiWENkWUtLVmxadnlzbGZCMStTQ3JaUCtGb095eDBOSXFFeDFjQ3BH?=
 =?utf-8?B?eDNZRUtFUXQxbTBHdTRtU1JTd2xmRzVJaUxqbUIwbXNLUlV6Ni9veDlFNHhq?=
 =?utf-8?B?RkNjZU9rTDVTQTh2NUM3QUNZUU92NFR2R3BsejJGNTg3Y3YydEUvTmN2eHBx?=
 =?utf-8?B?RVBvaEM4Zmh5amw2Nlp3SUxoOWpDNVh6WXlrRjQrVlNaUEZXbmVGYzVzbDZ6?=
 =?utf-8?B?Vnp2VlBPdzM2VGtmcGFnOExJaEFIRUhKcGhzaSsyMml6aGgvSlBSQXF0Z25s?=
 =?utf-8?B?QWV5SkdRdU9jTWs0eXc5WnNxekR0aWlrd054bXJVcyt1UzEremlmWThMRHBy?=
 =?utf-8?B?SUFhK25Hc1FZTmJLdkk3dUNXbmV4WDFzZzgwY1A5NklDcDRORUpYbStSd21N?=
 =?utf-8?B?ajM4MHQ3dWRGRHRENFd6Q1pYOVlKVEtYdzNxbmM1RGo1UWFJQ2hqdlN6MzIv?=
 =?utf-8?B?K2JPNktNUENtSXRxSHlHRVUyQ1V2ckd0MnVDbndWODRhRndlaEhsOXhRQ0tF?=
 =?utf-8?B?bGNDZXJ0VVJ2a3ZZV0pvZmRYTGdLQUxOTmxwQ1J0SURNL1RRUWwzRGl1N0Ni?=
 =?utf-8?B?aFZEYmZWRjJubit1YWJPMHpjZ3F3cmVydDcrc1BVZXpqd3JIYjJJR3hDeHBI?=
 =?utf-8?B?U0xEVzdQQmUzcHlmSHF1dGFMNkhmeWZzaS9kZ3FtbERkK1ZOZUticUo1LzA1?=
 =?utf-8?B?OEoxL0dHWGY0UDdqc2s3ME0wUXlmSzhuTjFMSm9oY0l3dS85S1hySUZoMHRX?=
 =?utf-8?Q?53C12/58NIjlOwDS7teQyca+o+Et4I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3hkOFZxWUxRaDR0QmFvRFV0RGNxQUxUb0FmZm82cG5qRm41ZVYvdzIra2Zh?=
 =?utf-8?B?eE5MUDhMYUhIMzVkYXFFbHc1VUdwYk5XT0RNYVltME5malRhdnFZVU1VeGc0?=
 =?utf-8?B?WlNiL0NmdTBCdlF3WEdWTXI3c1JoVmVtc0o3d25jYTNwY0w3UzREVFV4VXRN?=
 =?utf-8?B?aU9OUFFCTmpNanpwa1hnY2lXeEFMK1c3UG9zUFdmS1AzVVc5UkpzNVJNZndi?=
 =?utf-8?B?TENPcUlaQ0hMRlhjKzUreXZnelh3VXFJSmx0alZQdkNhbDBxalczVUxjeXRE?=
 =?utf-8?B?c2p5Y2pEVkc5ZmZDUk82SGlFcVQ2dXltQzUyTmZBMU5uNytsb3ZsVlpMNnBM?=
 =?utf-8?B?RkZtVlpCa05ONW5EUm5BTUJBeDVLanBNS0pONmRQaThVS0pYOWdKK2ZRMW4w?=
 =?utf-8?B?VWtlNUtnZjM4S3BNb21MTjNKeDZSWVJ0M1RQa3d4ek9UZjNuNFczNDFWYkYw?=
 =?utf-8?B?Z2ZrQ2hmY1h5VEQxMktHUy9VWTVBY1dPK01LWXBIcUZmNi9qRHVNUlJueFE4?=
 =?utf-8?B?UXB2NWxwMG5qY0VlbE5Bc1FrV3ZqVjF2WmlCSklIL2YyR1VlUXR1aTRyQXJR?=
 =?utf-8?B?MG9sUmp1V1phWE9qQkFDSFpBcjI1TFdmOUNvNkpVaTNBK2RXbkVGOWVPWDNa?=
 =?utf-8?B?elA3Q1VFRkQxWENzODRKWC8wai9vL0U3ZUZqRndWVDlVKzNUMmpHSU5oM0Vz?=
 =?utf-8?B?VkkxVjBhcDdzK0VnWW80Nit5MEZMUVFPZnpxc2Y3dUxuU1FiWUMrRXh0RXV2?=
 =?utf-8?B?Q2VKbG9ldFJXcnJQMVpWZCtwWlMwUXROS01UUm12ZXBzZFFqUzFuQ0xsUTdG?=
 =?utf-8?B?UmFvRGFtbG9JNyttTS91eWhpaEFXc1B6MkxvM0JJWWlDVi9CR05NS20rTGNT?=
 =?utf-8?B?ZTFxZ3Z4N3phVThybEVJWHZSUjlPaEhqVTUyQ0l4NDkxNlBVQkY5VGgrNXhX?=
 =?utf-8?B?em1nQWt6cEdlZURnT0h3ZUJTSFQ3eXBNTnZjU0NYbWxzOE1hMStzdGF2RG05?=
 =?utf-8?B?eUxvenRoZ1E4Sk9QWXVXMGJaNXc0bExBMGhtMGw0a2FMVWZGNWw0Tjhkd1Ns?=
 =?utf-8?B?ZWZQdFZaM3o1NGtSc0dtWlErSUlENVdUaTdRbVphaW1XREp5ZEtCWUE5NWJx?=
 =?utf-8?B?S1hBZ0xqZ1I0L1RyUXdSOXQrMllFNTRibDhXQTZBTTlCeW5Uemd4NFZsd1V4?=
 =?utf-8?B?U1I2QWpTeXl0aFRiMm9BQmtHTVFQWENoa05pdDJkTEJ3YTh5aGlWdk4rT1Bo?=
 =?utf-8?B?aWlmSjM3TU1OZEk3Y1oxVjJFQ1RSd0kxUTIzT0oyTmExWDBOVkYrdmRwRnpY?=
 =?utf-8?B?UmxqRy9mVks1ZzlpZXE1Z3NsbGg1TnY5T1NFb01tYlRYZmtteFJBWVpDLzRy?=
 =?utf-8?B?WmpucHlXeitSS2JKTWtEbFlGR1Ztd0loVW1Fb20zZ0piZG9iZ0x6bmVXZ1lz?=
 =?utf-8?B?cDJ6eWh2VEJWRUdOZ0NtVE95bDVjU0gvMFI2ek1qcExMRFo0dTdJa05td2tz?=
 =?utf-8?B?UFFEYlRHUjN5VHN5dWZ4UTYyWjRmU1g4bTRWZHVpZEF0N1FhUkhCai93ZVlK?=
 =?utf-8?B?QXpobjlRNnpYY2I0WDhjb2x3ZkxObzgvbnZEcVJ4bloxaW5lSEg5dE1TSHd3?=
 =?utf-8?B?RDJKTUIvVWhWd0hESHVzaDVBdlZNdFMyWEhzV1B0Vks2bndyY0gyMHZURmgz?=
 =?utf-8?B?UTB3RmgvZ1dTZTRVWTFRNmEwUndKN25PVzROTHJhS3cvVWNqV1FSOHVLSmc2?=
 =?utf-8?B?K2lMVnJEL3hlSkFnTHVZV3RuWk1RTmlPL3RDaHZQUVF3MzFMVlZyNWlDRzMr?=
 =?utf-8?B?YUhPWnVZS3RVMkphNG9CT2wzVHJvZEpYVm5qZ3pKSkZONWovWFQ1OXVVQXRN?=
 =?utf-8?B?VzdXK2g0Mm02WHJZVFU5c3NVSFVqTWowZ2tQWDNRMjVTVzlFYTBZT3hvd2pq?=
 =?utf-8?B?N0cvZXlpY3FlWXU2OHRSRTRCZHNKTlJPeXFGVW5ubCs2UHpiWXFPOVpUVkpl?=
 =?utf-8?B?TVVzZXZ4VTd3VkhhWDg5b0RRUlZYc09jM3dpZ0x3MzFYcFhkWEhiMkJ6TGJ6?=
 =?utf-8?B?Z1lNeHkvTmVFZ2hoZHRrQUlNQ0Vyb2NlYnVWdUhtUmZGNDNqZ2xSd1Uza1px?=
 =?utf-8?Q?B3PtFu5SWdDTjHMQo++uHutme?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a043ed-09ff-44ed-1198-08dda86b3bd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 22:07:47.5006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MDeflPZ/4GlidzeDN4mzsWDctvw+eJac7YHpFnWPYBh0HX+5QTjBOLsKftxgeKIKWnYJgbXrGuST020JuAX9IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIEp1bmUgOSwgMjAyNSA3OjQxIFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHY0IDA4LzIxXSBkcm0vaTkxNS9kbWM6IFBhcmFt
ZXRyaXplDQo+IE1UTF9QSVBFRE1DX0dBVElOR19ESVMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgTVRMKyBQSVBF
RE1DIGNsb2NrIGdhdGluZyBiaXRzIGNhbiBiZSBwYXJhbWV0cml6ZWQuDQo+IE1ha2UgaXQgc28u
DQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZG1jLmMgfCAzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICB8IDMgKy0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kbWMuYw0KPiBpbmRleCBiNmFjNDgwZjM5MWMuLjYzOTJmYTkyOGUwOCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IEBAIC00ODIsNyAr
NDgyLDggQEAgc3RhdGljIHZvaWQgbXRsX3BpcGVkbWNfY2xvY2tfZ2F0aW5nX3dhKHN0cnVjdA0K
PiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCSAqIGZvciBwaXBlIEEgYW5kIEIuDQo+ICAJ
ICovDQo+ICAJaW50ZWxfZGVfcm13KGRpc3BsYXksIEdFTjlfQ0xLR0FURV9ESVNfMCwgMCwNCj4g
LQkJICAgICBNVExfUElQRURNQ19HQVRJTkdfRElTX0EgfA0KPiBNVExfUElQRURNQ19HQVRJTkdf
RElTX0IpOw0KPiArCQkgICAgIE1UTF9QSVBFRE1DX0dBVElOR19ESVMoUElQRV9BKSB8DQo+ICsJ
CSAgICAgTVRMX1BJUEVETUNfR0FUSU5HX0RJUyhQSVBFX0IpKTsNCj4gIH0NCj4gDQo+ICBzdGF0
aWMgdm9pZCBwaXBlZG1jX2Nsb2NrX2dhdGluZ193YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSwgYm9vbCBlbmFibGUpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleA0KPiA1MmE5
MDI1MzJlNmYuLjA0ZmI0MDg2N2NjMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+
IEBAIC03NjMsOCArNzYzLDcgQEANCj4gICAqLw0KPiAgI2RlZmluZSBHRU45X0NMS0dBVEVfRElT
XzAJCV9NTUlPKDB4NDY1MzApDQo+ICAjZGVmaW5lICAgREFSQkZfR0FUSU5HX0RJUwkJUkVHX0JJ
VCgyNykNCj4gLSNkZWZpbmUgICBNVExfUElQRURNQ19HQVRJTkdfRElTX0EJUkVHX0JJVCgxNSkN
Cj4gLSNkZWZpbmUgICBNVExfUElQRURNQ19HQVRJTkdfRElTX0IJUkVHX0JJVCgxNCkNCj4gKyNk
ZWZpbmUgICBNVExfUElQRURNQ19HQVRJTkdfRElTKHBpcGUpCVJFR19CSVQoMTUgLSAocGlwZSkp
DQo+ICAjZGVmaW5lICAgUFdNMl9HQVRJTkdfRElTCQlSRUdfQklUKDE0KQ0KPiAgI2RlZmluZSAg
IFBXTTFfR0FUSU5HX0RJUwkJUkVHX0JJVCgxMykNCj4gDQo+IC0tDQo+IDIuNDkuMA0KDQo=
