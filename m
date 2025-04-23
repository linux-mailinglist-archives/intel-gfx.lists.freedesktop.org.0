Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C7AA9809E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D74510E1FE;
	Wed, 23 Apr 2025 07:25:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7X/BrT0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B5110E0C6;
 Wed, 23 Apr 2025 07:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745393104; x=1776929104;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vbq8YVkrMDDLv/LHRv3xKDqhuC4zqKtNUMIawFDG92Y=;
 b=V7X/BrT0x0TTFmkz73ow8SB7bTBo5BSh9VR5f2CFhNrgXUE1EeKxP7ne
 qcibGFKIJ7aNodvotIkipazPxn63lQDjHXAtKP3rqasOjtAD/JkEAHIzm
 FfUfF0A7uyh1zn4U6mfWjGCPi0hYzm1aWld+qfy/imL3Q4+JmavWiXfCF
 bw7xvhEZWxpSgR++toBVmyQ3qGG/LDqhIS7qovAkRNn0dg4aKK0bgbqAt
 5FCGvuPTGc4C/NgYUGDGUQ0jJSWSy/yMzJPBQ3dTy1nZ2iJ7a7a6S+55+
 JHmEAwd+LnSY41qitQWG0NJWczmm3qdmwBcmnBbPgJoBrGtp6QUi5j3ik g==;
X-CSE-ConnectionGUID: bgxCrRmdQiCvcIe6S1vOZw==
X-CSE-MsgGUID: Tx8/gB9MRUyTPvmg2PiGkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="47071832"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47071832"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:25:04 -0700
X-CSE-ConnectionGUID: +0Hrx9tUQZeDOHJoOcRGGw==
X-CSE-MsgGUID: em+cUzYDTS2lItRyguNClA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="136306189"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:25:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:25:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:25:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:25:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OxE311dnwg0GMJHTQNTfN74600hBmGhHG1TduV98CVlvNSat0kKmVdKy8m6zts7AiBSXqF95wcIJwY4IAqzzsAimmjs7qw4RzodqpiVb2F5abUtNAc5+CPksam1Zi92movHi5/RN7FrXe+FXPniIG0t1dTP26Dr9K93ttucIlDeZNetHW6YO7LdBLYaNXudWFTOFWK1isfoqnQpiFZLIQRGhEYsOvJyQI+G/0nGeWVgDI03Jp8Ye42lQboeFRpLQFCjwppLjcwep2WYbNouTKLNUEdcTirxPgSosiUfneZjwqFDNhuXYaoLQ4/qeAMSnbyWXOloAbo1s1ONLRk4uCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKzV0s/4zKp1Zv5pmR4CGuiX5YJczEseSh9ungxaSKo=;
 b=q+pv4GTy2xwghQCtFhJNtMFpwKAil2Xtna38Xgnztnza/SMKDb6+p0pgEHlIyVqh5PN4XDwOfi/yozzVJDj2iW+P2c3MHZL3/DsKe7rM152QMJY088R4AwwfHHRiGIlNmo2MMwFDEQq1R3vKZAEm2qeJctWRXUp4zGqPcz3r3E47Kfdf/6HqB8GFOeWgKpXjBp8Jivjg8uajtl+tEO4hVmL1njLELAlR3HjfSfRKVd3hKLIvnUwDQHb8OBHsNuTxipTBNOOH4xckVpZwFp5kOPr34ehCp0PJUA2fVD+9TydUA/MK9VjBC2s18OLUknSDWWVVYTVI2B6L9OEerCqSDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BY1PR11MB8079.namprd11.prod.outlook.com (2603:10b6:a03:52e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 07:24:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:24:47 +0000
Message-ID: <e66ce2ea-f0d4-422d-a3d6-08b95565e188@intel.com>
Date: Wed, 23 Apr 2025 12:54:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/13] drm/i915/vrr: Add state checker for dc balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-12-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-12-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0107.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BY1PR11MB8079:EE_
X-MS-Office365-Filtering-Correlation-Id: 11931944-4c3d-4c4d-f845-08dd8237ecf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0QyUGhhYW1WdnNGck5kaFNYWHg4d0ViZGRLc1ZTTDhnbVYvUlZOKzlQRDNy?=
 =?utf-8?B?TzEzZFNwOU9JNHgyUjY5akQ3MmhnMVpDNkpKWEgwOUxKZmpYY2VNQmxEWXQw?=
 =?utf-8?B?QkNnUzhwTWU2MS8zcURzQlVkYVgzTmRXYUFmVm1jZ0h6Rm95dGh5T0szdUpQ?=
 =?utf-8?B?ZVNUSVh4UjJlU2RBQUMvT2VDRllGRVBzTFhZL3RzU3pqWUxheVFGeEFKR2Vq?=
 =?utf-8?B?SDc4UDlDcDYvU2hsbS95ZHZVcjZ2eEdVWENReEJMWFdHWFVOOUlOdndmV2k5?=
 =?utf-8?B?dTROMnJORUpJRks5WllPTlpJdTYraytkcUUwSzhLM3UvUzBRSnhSTDZIRW92?=
 =?utf-8?B?Lzd6RlQvdzVmSC85V2R6M2RVY2drbzRMeUlHR0I0WTJ6QjN0Z01lT2lIQnhG?=
 =?utf-8?B?a1IrMHYrS0hheHVRTjcvY2NYcWljMDVvTzFCVkVKYkpkZThsRGVUNXNrampM?=
 =?utf-8?B?Y05HRjNMcS9PLzU2cVErSy9lTjEzUzZpZE1YZHpCL0kzYXdBbmFTRTVFbS9i?=
 =?utf-8?B?Sy9SS1V0YmdVV282L0p0Sm5KWWQvcFVsUU9wc1pYUHQ5dzZsVEpxaUgycnYx?=
 =?utf-8?B?U1RUTXh1MnpIQmZKSlg3d0I2eFBFYkJpaERXRFlqZzI4NVVINnRjdzA3UDJv?=
 =?utf-8?B?MUREL2Fpclg4d3hiYWUzYWMrRUFuaUtyQ1NDbCtZdnhZQTh5ZnVkb00vWE9C?=
 =?utf-8?B?UFF3bEFZU3ZCNnh5V3RrQzAyaCthOVlEcHV4TWZSeUNGaC9DTkVlRFpSSzJ0?=
 =?utf-8?B?RWdiSVFsaG1HVUoyNm13MUFJZG1MWnJMd3QvbFBtZ0kvdFRTYTRhUjFtNEJV?=
 =?utf-8?B?SmYvMWhJVU53RCtJRXFhYXZSMTVrK0ZKakgvSHZBRldUVUpya2VyaGxGTWJx?=
 =?utf-8?B?NC96Y0Z3RytLclBHcC9YemVpQTltbG84UVZTV0Y4cTYwd1JOTndXVFVaOC9C?=
 =?utf-8?B?STBCYjZVWVl0RVI4TnNaV0JKMnpjVmN4R0llcGFaR3F6UU90TFpJaVozK2dQ?=
 =?utf-8?B?cUZKaUtpeXVxZjVNa1dISFQxQ1QxTWtOYkkvNURUK2R0aGV6ZFFRR0RERjZE?=
 =?utf-8?B?MG8yRWNoVHNXdmpoNnRtSW44YnJhbFdjajhRRUJRTXVxUVIrYXFFazA0cjU2?=
 =?utf-8?B?dzQwMVloUHpwTTlZYzVnYjBvYndTdVlMbmFVM2ltTEZmWElTQ3FsNlAvem5q?=
 =?utf-8?B?SVZjN2ttSFFSNEZ1SUI2NmVVbENwSnNUSTZsRHlSdVYzbkw2bzBONDNDeGZt?=
 =?utf-8?B?bHhYUUR3Ri90WjE1b1p4UFJPNjloNDBiWGRIZG1Dc0t0bTRpUTZUb01jcm1p?=
 =?utf-8?B?dUJXZDhpZW0rTDIzLzdFdGpteHhJRUljSDcrWTJHS2tDaEZOMloyRUJWbmYy?=
 =?utf-8?B?ZWEzZXNWbXVuOEJxSjVjajJNZG5NNGdlb1NqWkNQaGhoS0ROS21qMUFoVS9l?=
 =?utf-8?B?b0VDbHpROXljM0YwQWhvbkJwd1NTeVUrcG5makE3SW1ZY3ByUFpsbUxSK2lB?=
 =?utf-8?B?MFdUZDlaZWtRSERSSGhDUHFObUF3ZURsOGNlWFpBQzJ1UzU1ZFlxTGdmVjFh?=
 =?utf-8?B?TFZpZkdjSEJmVytwUkhVc0J5TG05VU1jQSs0MUpoNWVNVkJVNUVVR0Y1Rld1?=
 =?utf-8?B?K3htT3lVRmZzNUR2YTl3UUVYZ0E2NVFualp3eFhSU296RTc3RlVkTExYRHVT?=
 =?utf-8?B?eDlicVZWZkViRXl2N29kc0FYN3lNdVhUVG43b3lQS1o3SkF2M0xob1dMZHdJ?=
 =?utf-8?B?THZxSWJOOXJJZTNpUFFVUlZrOFRtc1krb3IyTVc5RnFFYkdXdlM1Y2xKMXBm?=
 =?utf-8?B?ejNOeVJoV1BzNUwrQWpuQVRqZGwvRnp2ZTU0N28zUytCek8rWjQvNU5KTkJX?=
 =?utf-8?B?c2VtbTh2UkM5UHp0clYzTVZMcnBTb29hZWxQdFAwM3R3TjdjM3lBcUtwcmtJ?=
 =?utf-8?Q?MeQ61qgfEN8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0l5emc0UVEza2JqbFZnVWxVdWNqSDVpYmt3WStZUStEeko2UjgyM2ppUkMr?=
 =?utf-8?B?bzJFZmFYZE5pbzVBRTJueDBUeDg1WFpKNWVKVG5TenhFOTNNL1U5ZVdQMHcx?=
 =?utf-8?B?ODZMRTlpdEtqaVUrL092bloxSHdoTDd1RTdwNVowTTBPblJCMXI4cjNwTExq?=
 =?utf-8?B?Q1JQbmRQb21yb3dkdXRuVDhZZTl5M0ZHNHlQVnNkdFF4aFVVaHp4WGR5Mk1a?=
 =?utf-8?B?REpsek9MMEpVY1ZpbjQvMUVQS1JITDNMNEhzb2oyNEZudk1LMmdHelNyd2M1?=
 =?utf-8?B?cVZmRXF3Yjh6cE9YTE44R25ncTNTWnNFaHBkY2F3MlpJS2lrbFVabUdsR1JT?=
 =?utf-8?B?dFNnT3Yvb1ArYmxod0pNR3VzY2JKZUNtci9XUHJYc0NUZjVIMktMcGRiQXhB?=
 =?utf-8?B?RUcvbytybExGZnIvSzhsQkFVQVArbjhmMzY1UkZ0NE5maitEK0h4WjgwbkhH?=
 =?utf-8?B?eGYrcy9yVEkyT1FUeWt1bWVQVi9Sbm5mVldiNnpJM3NubzB4bEZwVzJJWXUx?=
 =?utf-8?B?dHlLcFlpa0ZpYk5uTVNnTzVVbWZObUJmOGNpamZnMjJrNG1oajh6c1hVZnJY?=
 =?utf-8?B?clZvQ0hrc3V4bzBCaTZpMEJ0QW5BVTcrWXRjYmtuMHpXcHBHZlRJbVppNHMw?=
 =?utf-8?B?UHk5blI4WUdPSkUrS013ZXAvN1NMNHlDbmVsc0lOZ2R0aGdjdGMyaGJ0WWlz?=
 =?utf-8?B?eTR5QkRJVE5SY3NsUDFXZDRaQy9CUnhXMTR4VHIveDRVSlJLeDF4WDRVbENp?=
 =?utf-8?B?V1QxK3hhcTlFblMvcGpaRnNyRTlMcDlyeGxONWxqRXJDZVNYWDE4c2NKQkE5?=
 =?utf-8?B?b1puaXpPOUR6YlhnZ3pqbVZzcGcyNHdqdW1uT3VLVThwWVJJQmg2N3NmRkhQ?=
 =?utf-8?B?OWwwSzQrZGtsSGJJdGJPL2htaE1pOWQrSmtsWjY1cG9LcytnaWpoRnNzc3Bl?=
 =?utf-8?B?aFNvKyt5UWl2VmhZcFh4VVgvY0taSXhmVFlodnlVMU0vZ1NFMS84Sk9XdkJ3?=
 =?utf-8?B?MG5KbXl0aEpTS282RGpVUzM1U0o1aDFlalZmVGtmaGRWcUNaaWlwVTYzWlc1?=
 =?utf-8?B?UFRvUWM2WnV5U1JmWTBiY2hXSnZ3Sk1HdGUvNGo5b201NEc5OUk3SWhGSkZF?=
 =?utf-8?B?TEdraExna1F0alpEZThuYlFad1pPeUExcUpOcmg5eWJRZzBObm9nZVJuUWVT?=
 =?utf-8?B?ckxJUDFhUEhzT2RmODZyT0pONUFGNjZGbUJxZWJvOTQ0QUR5dXdtdkttTjN4?=
 =?utf-8?B?VEpIUFdQT0pVSmFKWVBuaHQwQkgzSXl5bE9hbHNrUURoSUZKd3BSY2g2b281?=
 =?utf-8?B?ZFhHTS9uQk5QckV6T0JvazVLRXNXNXlmZ3k4QW1yTmRWUEMrUnZJaHlFUXVE?=
 =?utf-8?B?YXFMZk5uTVVGS0xxNlZ0RFhMSG03WG1SbkZVSTFtZDNtYVV5RndVWUNhRFVK?=
 =?utf-8?B?ZHFma3VBTDlFOXg0MlRJaXdPNVBzQmJFVWZnMkdldGhNSEY4Zy9mVm9pcVhZ?=
 =?utf-8?B?ejJqR01FNkRzNVFNTk9XU3RaYzFVeDRadm4xQWJiY0EzRjBYTFVCMXA2Mnlt?=
 =?utf-8?B?WmhJVm85VWRvdXB6ZmFnN2dTazU1VHFIK0w2TjZaeUcySTVyb0ZhTVJKNmRj?=
 =?utf-8?B?ajdQT0VTRjMrUHFNWk1iOTVFY1F3MHJOeFBYTWpzRlU0ZHlHSkhhRCtVbEpP?=
 =?utf-8?B?aXBuTllabjFUbEg3SU44cmlYVzVQWkxDMDM3V2ZmV3ArbVQxZURKQ2F2OHBW?=
 =?utf-8?B?N2VRZVVlUmMrdy8vUmJzbmhFRVBGam13TDd1SE9oQkU4MUIxU25rNjIrQnNH?=
 =?utf-8?B?UDg2Z2xwbzMySWlrcVB3UThMZ09EeEwzbndtMXhDZXpSVXBodWM0a0RWVDRs?=
 =?utf-8?B?ekZMSEFtZ0NDNjh1UE12M3dVWUZRc2YwMmNwZzNSWkpZZUZSNkRGY0ZwdmxB?=
 =?utf-8?B?V1Fyd0hlZkFnMG5lM3NuM0JLZUszZTlXYndXZUJsNE5GZVFvV2NGa0J0YVk5?=
 =?utf-8?B?M0kwb3RzbXllY2JFUzdYZ0RKckJxL2dHL1NIRUlvTW5NbDlhYzJnVU1nNHly?=
 =?utf-8?B?dlVZTWpEeXVJbWxzSEF6OG15RVpMYmFIMjc5RDEybkJCcTJVNWY3eTdyd3Vz?=
 =?utf-8?B?WlFYbnovRERjYkxwek5OT2dETGkwZVhwbmltdFVqdVVObWpWZE10YTZrKy95?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11931944-4c3d-4c4d-f845-08dd8237ecf0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:24:47.0144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RIODujVzUpKPgiqt9Kr6tjLzuRxORuIadEDlibB0HwmEO7GCHNMitE+hJiRgjIFVn0pDQSNLEyq6j71M876dkQ0gzR8v0/Q/PmXnUvPuHdU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8079
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> Add state checker for dc balance params. Also add macro to
> check source support.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  7 +++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 20 +++++++++++++++++++-
>   2 files changed, 26 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 274d01552ccf..4a21acb88aa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5402,6 +5402,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
Add check for vrr.dc_balance.enable?
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
>   	}
>   
>   	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index fb96d03bbf03..e8802348e5fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -740,7 +740,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	u32 trans_vrr_ctl, trans_vrr_vsync;
> +	u32 trans_vrr_ctl, trans_vrr_vsync, dcb_ctl;
>   	bool vrr_enable;
>   
>   	trans_vrr_ctl = intel_de_read(display,
> @@ -802,6 +802,24 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	else
>   		crtc_state->vrr.enable = vrr_enable;
>   
> +	if (HAS_DC_BALANCE(display)) {
> +		dcb_ctl = intel_de_read(display, PIPEDMC_DCB_CTL(display, cpu_transcoder));

dsb_ctl is not used. Need to use it for vrr.dc_balance.enable.


IMO we can introduce the new members (which is done in Patch#4), readout 
and state checker in one patch.

Regards,

Ankit


> +		crtc_state->vrr.dc_balance.vmin =
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder)) + 1;
> +		crtc_state->vrr.dc_balance.vmax =
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder)) + 1;
> +		crtc_state->vrr.dc_balance.guardband =
> +			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.max_increase =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.slope =
> +			intel_de_read(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.vblank_target =
> +			intel_de_read(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder));
> +	}
> +
>   	/*
>   	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>   	 * Since CMRR is currently disabled, set this flag for VRR for now.
