Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8B9A74510
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 09:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5239C10E98C;
	Fri, 28 Mar 2025 08:09:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fyk+yYLD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C68D10E98C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 08:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743149386; x=1774685386;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Th/85DHo3fl7qs4QQcLxQe+LtZSc0qkVpuJfiUTlRvI=;
 b=Fyk+yYLDlbQL1BWWrWTaEnr0K8mQMha2Ldw6J0DbgQl3CwC7c1h+ISUF
 /A3OP0k5IFzsPESpUa4KYJgZepbKkAzITPJjEJvPvEZpA2iVLT2IfpkAi
 zh2PsgyN2iXVOzdtAtSfkRCoLRu0j+XNzl2ooXUU7QpLcVrgMDHmZHyH7
 B7GRLbq3YwrH6LdvTFF0e4K5xeVEhcOGcLf58LxGdOfF2JdKaUaoybbQ4
 o3KrCjCwpldIi5r0HVOu0rnt1ITaPyxe6nIuuF5GPWWQ1hi39ujxanvWo
 HDaKWDhswt9Y7/+Jr7DlT0nK475BJC3NoPPPZ4BvwS9lQm3Sn7Fk3lyP/ g==;
X-CSE-ConnectionGUID: 3T8I2dE2QJm5yyv1W4pNAA==
X-CSE-MsgGUID: 1daCoRnpQ3aaE6jRat7l0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44225780"
X-IronPort-AV: E=Sophos;i="6.14,282,1736841600"; d="scan'208";a="44225780"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 01:09:44 -0700
X-CSE-ConnectionGUID: 8a1qDLFrQEuKKoZHpAV47Q==
X-CSE-MsgGUID: VpL5BlKcQXKmiI8w2U/k2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,282,1736841600"; d="scan'208";a="130439882"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2025 01:09:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Mar 2025 01:09:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 01:09:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 01:09:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nmzK3TaQeb8DqDbkUXF1sfn0A4c+cyElFNSXzHQids3oVwAaCH6D0+vlEE4gWaN8/+0CWwMF0iQRqXPbvTWAN2CzlhplcEbNvGTY5qqmZbVftr++5r3lsImI6iYF/6I04OslGvjwpLIP8OoedtSl0Rx03Tgw7VaKVIGDyLKRSl9IuEoN46zaiZdwuD4IdJ0W3V0dzg9GIgPTe78q0anJF59aX1D1+WnhSuH+5QeAxpJYH2Q5WDVs+eg+F076YioOXm1V9buopYMMYfII6FgIkQqud1kffZuLkGxEa9hhOhsJPImEThzuwKc9RSBs4iMYAVXwhjDlu+V3Pz4IfcAIuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Th/85DHo3fl7qs4QQcLxQe+LtZSc0qkVpuJfiUTlRvI=;
 b=DfcXTQpoCaewbsDna5uaOiSmWIUvVXCtTjDkbslTZBPy4e82sXZu3N3B1eAW4dSMux58iqbgJcX4zUcIG+JvPiNCZ4Shp2qYoCmZbrwwEz47CJv2BtMRYKUUXj3g/4vne0nAlw/7chUuxJQ1iFISPLAY0SdYHCfMXoki+K45VQVYy7jkZlzy2O9I983AmH+WTC2S8nQEosYEcMfwVw/pcb6XiqnSMQ7XmaBwnSAyFqbKCrwiZuqZFMizmIo7RPk+8fKA2sEpvHCKRmagmglV9KHOiAZ0YHHhzDg4hszYMZ2wxMnoj723DlsuXR5JfkUsRKKX7+u3rq4kg9nHXkQj+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by SA1PR11MB8445.namprd11.prod.outlook.com (2603:10b6:806:3a9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 08:09:06 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 08:09:05 +0000
Date: Fri, 28 Mar 2025 09:08:53 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gem: Convert SPDX headers to single-line format
Message-ID: <nmx7mbxm3anlntj6zys5cody5uhrdx3bou4exxnfldffsaanwu@hwkby5rtqtub>
References: <20250327232629.2939-1-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250327232629.2939-1-andi.shyti@linux.intel.com>
X-ClientProxiedBy: VI1P195CA0081.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::34) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|SA1PR11MB8445:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ea34b23-1106-4ad2-a416-08dd6dcfcf2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SFFjSGpacDNRa2NhamdFeGYxU3NaZ1ZPV25iMnhsQ3lBOVNqeXp1YU9HclRm?=
 =?utf-8?B?TGVqZmZ2MHhLNHgrWTBPWDNRYzNVZncvYjNHUmxIMXZiWEtiTnRlbTFyb21V?=
 =?utf-8?B?RmlPOWNncjdyYVI5TDV4MnJkbFdSOGpJZkZRYUFwdXVoWlpRZ0lRUzZpeExM?=
 =?utf-8?B?SUR0aUZZbE9NV0RFMFhGT3lFb05oNU9jS2psWVh4eXM5MlEyQ2htWVFOQ1Ro?=
 =?utf-8?B?L1QwMWZMK3c0Z2haSXJmem1oQW15RnVYSEdTR0JZcmd1bnlLZWJ2WWhVWGd5?=
 =?utf-8?B?UHdHTzdBcTBCQmV0UG1qRTJtN3dDRXpvR2oyRVh4a1IzeGxKMEJtY1JZaUJx?=
 =?utf-8?B?R201M0ZYaEhlS2JTK0lNUXB1MU5YTkRCRXZ2RG54aXZKbSsyVG1TZSs2aUI3?=
 =?utf-8?B?cThwNm9xemRwRks2U3FQUTdkMWxiOEowMFFxejlZaTR0UFZPUzAwQ0VabE43?=
 =?utf-8?B?MTRqbXhZRndNZndEV2sxY25PbnZUSTJ1eWpvN2FqNmZ4WjBydFNla2JxKzhC?=
 =?utf-8?B?SkJjNCtEckJKN0gzYjRhcnB5ZUZSZWtpQUZoOHErUlhrKzlPOGpDRlIzSzJm?=
 =?utf-8?B?eVdaZi9jQWlkaEFpZTA1MHJTQUJhdHpxQ3RySlpCTGdZM2VlZGFMQXd6dkwx?=
 =?utf-8?B?UzNCZkZUTmM2dWVlcVllQ3dZYlp0OVdCZ3dqN2ZVeWN4cnVrVnVVNmthNmR3?=
 =?utf-8?B?N1IzbWI5eFpaQWYwSy9kWUU1UTRkVFRiTGlkaFBnWlJmSW5LMEFzTHhSWEhs?=
 =?utf-8?B?bTZoKzdzck12NVVtdno4UyszWlB3RGx3SUs5ZW5SeTNPalBkTXB3Z2E0bDZS?=
 =?utf-8?B?cCt3SWN4Zy8zdHFVOXRjd3JVWm5FbzM2VmtKcXFVWE5rVDZ0ckk3TEhqZys3?=
 =?utf-8?B?ZzU0eSswTzhCTjRVZjdjb2VIR2lJcWRzUFdySnZZU3I1V1VtRXJqT3hBTEVC?=
 =?utf-8?B?SWhJWXV3UUdQaTVkdlFJUFhkOE5DUUNyQ2EvV2hEZHp4N3JOMXljTkJFVkZr?=
 =?utf-8?B?NUZuL3Z4aWxnZk91TDRxVjI2VjdvS2ZBczRoTEU1RFY1Wkxzak55NkFBdm11?=
 =?utf-8?B?TGJ6aG9CK0dub1VvWUNiS2F2Ynh0YndCM0R3TzlEZ2dzZG1LUTlCaGJnRzQx?=
 =?utf-8?B?L3ZLYnhRM003UDVBS0pNUXh5NkdIT1NSUnVZT0Y4YXd0NmV3QUExdnUrU2hG?=
 =?utf-8?B?N0gvL3Bld0NvdXN2ejB1czhGK1lGNmkwd2pxMEEvM2I1a0Ywa21nY1VXNUtR?=
 =?utf-8?B?cmdPUk1UQ1dCd21QUStXRzhlaEtGRklQMUJSMUQxbm9WWEU1YWFzR1d5Ty9J?=
 =?utf-8?B?eDZEOVBLeU1rTmd0cmRITVp6NGllZHJXN251ejRIR3k4ZzVhR0dvZ1ZVSDFM?=
 =?utf-8?B?ZmZ4UkRPOXJPOCtPUjZPYVRJbTQxb1h5SFIxT2hVV2hxMU1obng3OHlsRGNr?=
 =?utf-8?B?OWJhbmwxMDNidFhiMjFTWjBXU2NteTZRVnMxNkFzZjJrN2t2Z1N2NXlrRjN1?=
 =?utf-8?B?T1lYYTFjTk9lL24yMUdKMWVrSEVyQTFWeTlLTFdkZTJhbHpVamZVcWlZcVQ2?=
 =?utf-8?B?Q2hkOVprdFpoQ28reGVXTDkvdjVtdnZmUWtyK2NkczNIMkQ5bjNGaEhCRm1I?=
 =?utf-8?B?NGlIQmNSZStvS1JPVUpwbys4emNzM1JMOEt6RU8yV1IzdkpMdGhaZzhrWGkx?=
 =?utf-8?B?WG1HL0hVZUloOXMwQnBLRDU5R3JHOVQ2T2Ryd0d5T1FWL1Z1TGNpMU9tVWNR?=
 =?utf-8?B?WldXSWpXbHZMbW9RRlRKUmZMSDJLckpIeVVZZ2pPelVoeEkxeEJ6ZVU2TEJZ?=
 =?utf-8?B?S3FWZTlTU3hWalEvK3VFbnFpcHVVVG9HMmduYkREY1ZzeU55Mmx4ZHNaTmVY?=
 =?utf-8?Q?WvY3o6IBfBdg3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEwwZTJVd01tc29ac3g4NDBsZlA4K0NvNENHcCs1M0Z2cDNuZlVjZEQ3ZElK?=
 =?utf-8?B?UmRYU2l0bnBIL1BoaEUzSGxJTThwank5a290bU15QmtFeXZESFFndWtwc0Q3?=
 =?utf-8?B?MDhxRE1udWxacGVVbmR4VnZPK2tQSjJVN0VlR3IydlUvb3V4TFh5YVJKaFA2?=
 =?utf-8?B?RDJZekY5cFlpZzlxV0dLMTJPZXFWajdQWFR5QlF3Rm5mWlMveERQb0RQOEpH?=
 =?utf-8?B?WTcrb2Vudk5EQXRTbHBXM2ZPQ2lsVnBab2c4UDhWRStMVi8vd3lmeWlISGpL?=
 =?utf-8?B?UFZNSzlYblI0MDA5TjRZZ1dqUDlXOXV5MnlvZXN2eklBTnBLNFBVYUZsZ2to?=
 =?utf-8?B?MVRxbUs0bitTUlpNN2k1bldRaFo0cjA4SkdvaVlUaVJ0bWFWangrTG15aXBX?=
 =?utf-8?B?SzltOGRxZlJnY3p3MFNlUUZncWZub09SY2VnWUxENVFQdC9VUWd0THpqNWZ0?=
 =?utf-8?B?RTNxVXJrd3lwOWlOZDdDc3ZsNjNJWVlMUVpQN1hGN0JYQmQ5RkplZzVPRXlk?=
 =?utf-8?B?alpvQ2s3R1Fiblp2UnpKZHZxaWcwMXVERjRnVkR3MTUvRG1pejNHTndsVUpk?=
 =?utf-8?B?TEtLdS9CODJBdHV6Z28ybHh4QWtkN0hhMGxDM05tQkZVOTdrYUl6aEV2Qkh4?=
 =?utf-8?B?cEJ6cm8xeXNJaGJGTVp3NFcrRExhOXMvdkk2bkZ3bWhrSFlEZkZiM1Q4clcw?=
 =?utf-8?B?OVB0YkJaSzB4V1Z5LzkzeDFaRkYzTXk2NGJ2WGFwZ0Y4c04zblREUmpKbXhW?=
 =?utf-8?B?dnN5SzVNY0R4RUI5SVZKSjVDKzVZMHVnb01NanFsWkhrd2VDYk9PWTlLaGxs?=
 =?utf-8?B?d0dabXFNL3dFdjFBN3hWYWV0amEyS1crRkxaWFloaENDczJGSUl3ZDNuUlVo?=
 =?utf-8?B?TmxVMUh6dVN2MmhYOWo5RHNTd0F6MWE3TWZQZEV4WS9QSWhHUUFKV3NWMUpN?=
 =?utf-8?B?cDV2Q0ZoUk1pTUk4MXN2YkpmRVdCcnpkSDVka09UNXFMaVVMN3BNS0VLYlNC?=
 =?utf-8?B?RExNUDhvd1QzcnhpZjZJOFF5UnBsdGNXZFlxUDROMVNSalZmTVYwTVNEUzlo?=
 =?utf-8?B?aTJXRVYyRzJGK2R4VjJBRml5RHZQTnVoTSt5Yk5IOHlSdXVJdGM1eENKUnFL?=
 =?utf-8?B?WlZnTm9adHdZYlI2TkM4Mk1jeU8zRmkrSzh6Tm9mRWNLS3VxVGhRQWdLMkoz?=
 =?utf-8?B?dmdHTHRDQkNibTIzY0hPUGpJaTM1cmxzQ0s4R0lMQ2d3Y3M3di9LZTVMNG01?=
 =?utf-8?B?KzJpSVo3Umk4RU50TTFLWTVSdnpaNzdtYWZKZGNnQzJ5K1ZqMlJ4WXprS2tn?=
 =?utf-8?B?ZlUxQVdrTGJZRkRtM01xUDdUcW5BdkNIclhVZzNDVzE4czJoUXVjR05xZjJr?=
 =?utf-8?B?QjN0aDI0RnFUUkxta3VlRkVhSzFPbVd0S1Ezcy9ZMHRCZ1RuZFhmR3l6S3dL?=
 =?utf-8?B?VHhNTnB4VVZWK1RxYmNCN0VmT25UbE4yMVJTcjhQRkJ0VmpJbERkVCt5NG8y?=
 =?utf-8?B?Y0Y3eldpdUxhUkVvT2NkbVBCZkJRMWZ1TFlUbFdxQnJhVHlHanEzRS90cUh5?=
 =?utf-8?B?S1NqVUNwbVZrSkZnbXV1bGUxeEc2aHlubkRyTnhNNkx2a0daRkJ6SmV5cDg1?=
 =?utf-8?B?UlRNQ3p0a1MwNFBZbHErUnJnVUhESXpuK0VkMjB0eHVKK3VBZ0R3OVQ0cDNv?=
 =?utf-8?B?ajh3aXgvOWNSYUQwalB3TjNLWVZiRjJBRkF0cDRzbERKam5vT09CbFVZKzJL?=
 =?utf-8?B?TzVVdDdxbFVqTU5Fb2JwS1NoREl2a3NOblNHQTc1eCtHbXgwVzB5Mnplbzdj?=
 =?utf-8?B?VEdRTTliUXhGUytSc2JUaHE5ZXV0MFFodEhhbmpWUFNmZTd3ZzhLbWMxeENN?=
 =?utf-8?B?dVRMQnV1bGJuU3BOUDZrU1FLK1l1UHhncnpBekVBOXhlV3dJcG5mUlc4MUll?=
 =?utf-8?B?UU9iWklEMDBhMEg1SGhrK0NTM2FjcThvRTZwQUU1Y3EwdEdWaW9JbUx4SjZi?=
 =?utf-8?B?K1NLUk1nb1ViYXB5VzNxSitpL0JmaGtMeTJpeWtHdDNadklkQVlESFFTNElz?=
 =?utf-8?B?b2NiMDYxbi9pdHU3dWUzZUtKL0pwejdYenJIRjlaYzlpRE5OR3RKZ1Rnb014?=
 =?utf-8?B?NXBxWWpDZU0wS2xWaUZPYzFsWFEvcG5hdFgwR0hTZC9JQm9la244eXQ3R2lT?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea34b23-1106-4ad2-a416-08dd6dcfcf2f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 08:09:05.9271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UfRF53lv+jHGy/K1RymFwUjRUb7NJaz4fyK9kcSl2ivJO5rLHfnZEqNnYMWnLP+B93uognPSkNac1TlShnNz+56l51gTE+8Fs1dThC9jG3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8445
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

Hi Andi,

Consider also changing the SPDX licence header in gem/selftests as
currently we have there mix of oneliners and multiliners.

Mikołaj
