Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 364ECC49CD1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 00:43:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5543710E0FE;
	Mon, 10 Nov 2025 23:43:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lbsh+N9W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2720C10E0FE;
 Mon, 10 Nov 2025 23:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762818185; x=1794354185;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=jR7KS7DPjJw2h6gwI7R4mQvCwoWZRYeF+LwL/oJICn0=;
 b=lbsh+N9WE1Qx0gLZlGYpDOd4Fr7rBjD+x1LR/no/3esSXYtExWVx/lHa
 jmJNaNqHctCp0SBZdzq9zYge308yKzxtUKLVwa180IDy+8nAkyVWtNOX8
 qvXtqA2txb8AD7UuYpMBvxQcLVQpvpSLLyYNJXEYvRZ2a6CX8dMNLvCOc
 YC+gUHRGKfW2bx6IqPZw3DFuHgpRqWzCefE4Fxa06u4sXQuTVCAIo+sRb
 fwneah+q5M5QoG7JwxMLcKSsjZZya1/3EOaIneDoegL7vsF2cRUjnbrsH
 plWkszLv27x1xsB7WeC8MmcJDbcD/QEv4LUkNj/zmejk1C4xrMW3x0tNI A==;
X-CSE-ConnectionGUID: 3r6+VaUYRPq+bcxY7JDv/A==
X-CSE-MsgGUID: vblbUxhbTNCtU/+7SBjjyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64576194"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="64576194"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 15:43:04 -0800
X-CSE-ConnectionGUID: SD2pgVPeS32lD9/AaRGYrQ==
X-CSE-MsgGUID: 4RBWZqoSSKePxYK23ZVF2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188066288"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 15:43:05 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 15:43:04 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 15:43:04 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 15:43:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mah4xZOtLBgJesrVgSQhq6msP1DocM2304l6tTWBg7e+GXb+Mo24JORFbhnmmfeK7U7YzgLU42uNCR/4OSecOSqIa9P2DVcgPXa0yatu8AVWXUtnMM68NVQXVkx8xTEG5/TVTNbrr2PoEY6B8pZu6M5Nh/Wkjit4upjAw9GXin9HTJCc/nsdFsXtiUYITW7r/bWVXUnZcHZ++lIe/0MUQ9yo+MRJ8F/lY3xNx4G/LczVORgjVICw9cc19s03MAYby6UYceDh4ScVrk/+LVkxxwbt4IrrTC4jw0A+7kVEc303fWvyCMxduCOyAYf7q4IajcHZfFSqKjOmlM03JsTTZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHdeBba52TlHUeXP9Qe5AYaWw0L8u+pYrM4HxSbr1so=;
 b=uuHmv40oJTPXlaF9yDz4+lcX6edOcFBmqUdRMnda53gsuPmwwE/o5T1tNMzRMrIQr/ZYg4uUd4Fu8+M6vfWPzoDAIz2F3qwDIi2uXFkJKUJuan+mOSRPDSlmmGG4DuiEjTh/bu5aXT3RGWmYhuriaFwifSFEHy1TcOfyV5AOLx3YuWPtVj9vIULLGtyJ2c1BNk9sLqZqrpQAiByGHwQ80Zl15tdfwp4JpOD1JCwgPW7D7CDD5X/9p9Ryg44KwJu9pRqUeGo9AqqvTetJsgGHksVvKAiwXEnCycsxd0m7DDkK/LGHYKAmDIRuoAcCHVuxkRBivY1APJI3ufEXiWIpWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB8090.namprd11.prod.outlook.com (2603:10b6:8:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 23:43:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 23:43:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRIa8HC68K7zJOsJ@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-6-ab3367f65f15@intel.com>
 <aRIa8HC68K7zJOsJ@intel.com>
Subject: Re: [PATCH v4 06/11] drm/i915/xe3p_lpd: Handle underrun debug bits
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 10 Nov 2025 20:42:56 -0300
Message-ID: <176281817663.2999.18350278512501557164@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0183.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB8090:EE_
X-MS-Office365-Filtering-Correlation-Id: f0fc35a6-f436-4ded-e993-08de20b2e311
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVArTXZCTkVtbDhYcCtkMG1kM2p6Y2pFbWg1bEdIQ1RtUmxTQzlRazhHenlJ?=
 =?utf-8?B?TnFiVHc5RTF0azZzdUl2c1grOUNLdHJaREJrczFSelZzT2FSYWE3d1JJMHB0?=
 =?utf-8?B?VlVWWXUwRlFtNzM2QmwydkJ6RXBJOHE0ZUxGb3dMM2c2WDQ4dDlsOE50ai85?=
 =?utf-8?B?TUtXNmVJcEhUdE1vcFBTdFljK3FCTzBDVms3UHdyOEljT2JGY3VPUzRxemVQ?=
 =?utf-8?B?YWd2NE1od2hmSjVCT2EvalNhTGFjTjhZYkZzNnJ5dlhWS0ZhNjJYQ1o2L05H?=
 =?utf-8?B?VkNwcGhxVy8yUzdCa1Q1VUJYOGI2K2FZbkR6eVBwVmhyOGxzMHFGazNtK3ps?=
 =?utf-8?B?QWtxWWgwY1ZOSWhtbjMzZGtSQm9qUjJ5R0d0SVNDU3BoKzhjQ2d3cTJSMEZ6?=
 =?utf-8?B?b3JCWll4dVRJenpMcWovLytHZEh2SW45QzYrd2E2ZlNjaHQwRkVhZmNiWUl2?=
 =?utf-8?B?UzBmcisvSGRQQzk2bWNkRUdySlA5aWxmS0xVRjJmYnBWdi8yZVJycVNXaVhB?=
 =?utf-8?B?ditIRkFKbFdqTmtpUkhXWi9yTnFNNW12RkZUbVVMRmk5Q0xnSm5GdlZGZlZv?=
 =?utf-8?B?ZUVuWDFRb0syRElMZnZMdGt1SGptZDIwb2x4aE14SjFpSTlaRTh0TXRZYVpY?=
 =?utf-8?B?K1FUZ1NTVlFGRWlGZWUrby8yRW1aUy9ibE8wbDdpeG42aVRORkh3UGF4cUVl?=
 =?utf-8?B?M2wxakdZWkp2V2ttYXFLQVp2cnA1WXVuU1hhMjV5SHQvN3lpMUU3bGpvV1Nr?=
 =?utf-8?B?aDNpTVJ2Q0pXQ2pTVU1WZHAzS1pmMDRqWGZqNDRmdm45SWpiYzJiNEE2N05j?=
 =?utf-8?B?Vm9oMkpBL2t1eTlDbnY1WnJSYy9VV1BIQUtIL3NTTXMvaUdmWVE5Wjhhb3Nw?=
 =?utf-8?B?RnRTQXpCTGlTMmEzenJKb085QkVHOWcrK1FpTnd2MnFMMktZNjdIYnIyelJH?=
 =?utf-8?B?M1JaSSsvcEU3T1VMT0ZOeVpEZ2xETjVmdThOT2tjNW5lSjFXUklGWkZqTlNn?=
 =?utf-8?B?U0V2a2V1aWFRYWR1UXllLzFkWnM5ZWZUTkxCWC9ZdkxJZStIYmE0TXowT2Ji?=
 =?utf-8?B?LzNwRDlUTUFCaERCYU1xR0ZYczZlMDdNcEpjdTdsR1NOQzZJRUpINnU3M2lx?=
 =?utf-8?B?UU9tU2dDQTFoTmhhTnN6Z0kyT0ZaSnBVVGozYnQ1L1RnOUJhV2xndkZaQUdD?=
 =?utf-8?B?aGpxaE5jcFY5dzcxVnFrbXlSS1RzSlFTN0tVZHV2dXl1OFBmdXpZNFhEMzNQ?=
 =?utf-8?B?RVNKMVdJUlUwS0JiYi90R3k0U3ltU1BDMlN2V0g1WitjMGJTTnlpZ1JlQ29w?=
 =?utf-8?B?THJ3Y2xjQkdwbFRPUWovNmpweG9ock9rVnV5RkpKeTNSTk1XODN6OGRqV2R0?=
 =?utf-8?B?RTN0TVBHYkdtRTRCTVVRTXhkWVJacitCeUxHdVZiM1dhVGszRDRjdFVUaXBM?=
 =?utf-8?B?dzZSLzNxRjlhTnhsTEhQMFRqb2lIRmcwaVYwb05DTjNUYjRoR040dGNlUUdy?=
 =?utf-8?B?bS9JQ09uNFBxcWYvYnFjdkFPNWdnUHJkK1FtV29lZmE2SDZtcE4vNkZtaWM0?=
 =?utf-8?B?NzBzUEVFVkZROVlvR3ZCdlp2Qy9HN2w0NnBuamdHWlk4TEVPWDVwZjVPN3lB?=
 =?utf-8?B?YjFmNkh6cEpUcktvQ0pIZnZaWFdKTjd3c21sSUJqRjg3RnVQWU9WMnVHam5D?=
 =?utf-8?B?Ry82TVMyYXFLaVQvWDc1clZmcjF2cDB0Ry9EUVFWbzdkMXE1KzI3QzdLc1pw?=
 =?utf-8?B?c1prUm85aitCZ3ExQmxNazBxcTA2RFlUS0pDcUtFdWVleVlFOVpLVGtjdXJK?=
 =?utf-8?B?L2VJUmF3Y1NmYnhwZHM2S1U1OU1uZGZMY21zcGd2dHNCOHBFaFp0ME1EVEhF?=
 =?utf-8?B?TDB3WUhPWXNzYWhFbVJ3bjlNRm1qWHVZaE9tMVlCWElQb3JoTkFseHFoTnBN?=
 =?utf-8?B?MEt1b1RMKzRMb0tYV1Z0WEpjMWs0TEE4STZ2Q0FacGxteVB0S1ZEVXhVUDkx?=
 =?utf-8?B?ZGZHWkJyNE5BPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wm9salcySWl1THFjODZiMTRrczNVRnppVDA1ZWFQKzFIL3EvZHU4ODc3ZlN6?=
 =?utf-8?B?N0V1NkEraGJtL0RVaDVVQXUzNXpLa2NoSWtMY2NGTHlVR1hyaUpLOGdvN2lQ?=
 =?utf-8?B?TlNnMkdHRzVxYVREa1c2Zlp5RWVCWVFmQnU3K29qUlBtUWVDNkpuUDRUekpX?=
 =?utf-8?B?c2E2NG40bHV0VS91Nk9ZQ3d0ZllxZ1Q0V3YwZXFZZU0rQjEwWStrdm5YWEFO?=
 =?utf-8?B?L0loZU5aMWt5R1BNbVBTMUtlc002clRSVkZxL2RFWTVYMzZrNldKUkFERDUw?=
 =?utf-8?B?Q2E0MndVVFpXcDJZRy9Ea09HZVpKa1VDbzJhbFJDTW85MkwrREJPS2pUMW1o?=
 =?utf-8?B?aHAzSGU1Vk1CbkV3a3dpRVRUclRkTkpYQnlpcnl0djJJUitYcU1idU1jckdH?=
 =?utf-8?B?ell5QnZZTTFSazliRWsxTWpIRUFXbUZwcDhuYjZLWnBsNHE2TFNhQUFGZTZC?=
 =?utf-8?B?QXo2WFpqV1lzNzErR1BGUnVtakI3eVpnZDhQSHA0cTJSQnMvNWdab0UyOU4y?=
 =?utf-8?B?azZVK3NEN3JTR2JFVkl4UDFTdkxZUXhQWUYwNkFRODBBSzJlZnFXY0pNRm5t?=
 =?utf-8?B?dUZneWw5QWtPdzJ1K2l2TTgyUFhRN04xVTArS3h6ZFRCMVFheU5SQU1PT1NP?=
 =?utf-8?B?T3FBRjBpY2RFUHRyaWJ0SlZ5SzdwZU4vU3F4a3NqOEkwSEZzNmJhQWtLWEdX?=
 =?utf-8?B?N3ptMmpiSktMYzFHL3dVbnp1cld5MEJxTjBDc3BjZ2V1RjZNMmVBY3hSci9l?=
 =?utf-8?B?SCt0ZVRvMm5sNldSamVpdHdWSXEyTmNISWJEajM4MXA5VW5jU3JueWl5MTI1?=
 =?utf-8?B?TGJETE43UUMzb2lCVTVDbmROdk5VUVdqeDlvN0lxNG5mL3ZGRjI3K01OdGkr?=
 =?utf-8?B?Vm54dzFubUM4emtTNmVWWlVpbmExNUl2bkIyS3FVaGVlVnNwNnlWOXZKbU9O?=
 =?utf-8?B?T0MrRFlPSkFkZE9iVXg0Zi91ZVB6K0d6QjRCeVJUaGVzRVRvcUxNWSs3dFJy?=
 =?utf-8?B?enM3MWtjOCtrR29lUWRqbEZUQ1lIS1ZnL1JFNVNtSm1La1ZWek9NRkZmeTBQ?=
 =?utf-8?B?V05jUHFNL3dBNEY2Q1JoanhoclFTTm5KQ29EbHVjV24yWGlRcFZFVmwrRjdw?=
 =?utf-8?B?dTh6NlFGSWRaY09pWVp6emovWWU4M0RqR29GUWVSWlFFcmE2K3RBQTk0SDMx?=
 =?utf-8?B?RWIxak95enlRQ2xnQ3VLeWxMVHdqYmJYck5ZVkRvanA3SDhaVkZUYzlMS0ta?=
 =?utf-8?B?WlRJNnZLc1k5bGxySm01eGdOZUtVS3NPQ1BrMTBId2NzczNZaVNmUmszR2Yy?=
 =?utf-8?B?aHBSdjBpSUwzeEIxMmpkTGZWZ1BtNFcrUEhlR1R0SnV2a3FIWFI4MTBkL2o0?=
 =?utf-8?B?SVdNRU51N1RRS0JvVmp2RzM1ankvY2ZobHRUREFFazRvYUZLOWdPa3dPVG81?=
 =?utf-8?B?cWpBRWJkZTdLcE9Rcnh1WUYxZkRIZDVabGJvb25HQjAyY0d1dXhDSUY4dGM1?=
 =?utf-8?B?TUVhVFo1eTRudlc3NXB5S1k2eHJHR0F0eUhOQVNEbG9rYTl2MnMxemUwcWxv?=
 =?utf-8?B?aVhiamRBbXJZZ0toTmJLdFNGN2Y1STNDZDMrNEtNRjA2VzlUMWxMZGFYN0tG?=
 =?utf-8?B?YXZpVkh5aWoyMit5UUZ6RXdWZDdDMCtRVXpPaThWVmxzM1VHOEZtYnhxdU0v?=
 =?utf-8?B?eWZBb2ZFVERhMlFTcVJiYldPSXZsSHV5cWp2dmZCaFZBYzB3ODVjWjVHMVhW?=
 =?utf-8?B?SUdHUHQ0eSticWVFaXpyeTRTQ3luL3FwYU91KzlZUHA1cnlRUEtYMzlZVkxy?=
 =?utf-8?B?Wml1ekw1aDJLZUxOUk0zZDBZeUp2NHpMMEFVQzlHVVkrSjhYdm1oeU5FUjlX?=
 =?utf-8?B?MHlINnZORFNLY0o2SVV6UUFLbnNPNC8ycER3SWxYT1VyYU0yTFBwd1VjcERG?=
 =?utf-8?B?K1JNR3RMYTRPRVZpYTNmQ3dIam8velBSZmJSN245R3BqemZWTWN0c2pkdHNY?=
 =?utf-8?B?ZGZ0ZGQzMDFHNHhXWFNtdUVteW15MENjU3lBb1FVTkdtZXZqcDB4bkJwSEgw?=
 =?utf-8?B?dHBEYXNUTmhYK2R1c3dsTWwvL1krdTdMdHMwWU5QaGRJdUdQNUFhekwvbmRo?=
 =?utf-8?B?QkFGdVRSKzB1MitpejYwSy9xQVg0eWJoTWVLTVZvcjgwaWdjNkJkaDJ2N2d3?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0fc35a6-f436-4ded-e993-08de20b2e311
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 23:43:02.1712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5XjGrk/wW0pYca/VlHjr3p14w8YZZDfq3VF7G34ntj1OYhgZ9Gx/+WZISE+qQsgaMgwU6pjgkaClK3HjAYWJlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8090
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-11-10 14:03:44-03:00)
>On Fri, Nov 07, 2025 at 09:05:39PM -0300, Gustavo Sousa wrote:
>> Xe3p_LPD added several bits containing information that can be relevant
>> to debugging FIFO underruns.  Add the logic necessary to handle them
>> when reporting underruns.
>>=20
>> This was adapted from the initial patch[1] from Sai Teja Pottumuttu.
>>=20
>> [1] https://lore.kernel.org/all/20251015-xe3p_lpd-basic-enabling-v1-12-d=
2d1e26520aa@intel.com/
>>=20
>> Bspec: 69111, 69561, 74411, 74412
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>> I tested this by adding a change on top of this series that updates
>> Xe3p_LPD's CDCLK table to use bad values and I got the following
>> messages:
>>=20
>>     [  +0.000237] xe 0000:00:02.0: [drm:intel_modeset_verify_crtc [xe]] =
[CRTC:88:pipe A]
>>     [  +0.000674] xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underru=
n
>>     [  +0.000015] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: DBUF block not valid on planes: [1]
>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: DDB empty on planes: [1]
>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: DBUF below WM0 on planes: [1]
>>     [  +0.000004] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: frame count: 1890, line count: 44
>> ---
>>  .../gpu/drm/i915/display/intel_display_device.h    |   1 +
>>  drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 128 ++++++++++++++=
+++++++
>>  4 files changed, 147 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index b559ef43d547..91d8cfac5eff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -197,6 +197,7 @@ struct intel_display_platforms {
>>  #define HAS_TRANSCODER(__display, trans)        ((DISPLAY_RUNTIME_INFO(=
__display)->cpu_transcoder_mask & \
>>                                                    BIT(trans)) !=3D 0)
>>  #define HAS_UNCOMPRESSED_JOINER(__display)        (DISPLAY_VER(__displa=
y) >=3D 13)
>> +#define HAS_UNDERRUN_DBG_INFO(__display)        (DISPLAY_VER(__display)=
 >=3D 35)
>>  #define HAS_ULTRAJOINER(__display)        (((__display)->platform.dgfx =
&& \
>>                                            DISPLAY_VER(__display) =3D=3D=
 14) && HAS_DSC(__display))
>>  #define HAS_VRR(__display)                (DISPLAY_VER(__display) >=3D =
11)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers=
/gpu/drm/i915/display/intel_display_regs.h
>> index 9d71e26a4fa2..89ea0156ee06 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -882,6 +882,21 @@
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENMAS=
K(2, 0) /* tgl+ */
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PRE=
P(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>> =20
>> +#define _UNDERRUN_DBG1_A                        0x70064
>> +#define _UNDERRUN_DBG1_B                        0x71064
>> +#define UNDERRUN_DBG1(pipe)                        _MMIO_PIPE(pipe, _UN=
DERRUN_DBG1_A, _UNDERRUN_DBG1_B)
>> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK        REG_GENMASK(29, 24)
>> +#define   UNDERRUN_DDB_EMPTY_MASK                REG_GENMASK(21, 16)
>> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                REG_GENMASK(13, =
8)
>> +#define   UNDERRUN_BELOW_WM0_MASK                REG_GENMASK(5, 0)
>> +
>> +#define _UNDERRUN_DBG2_A                        0x70068
>> +#define _UNDERRUN_DBG2_B                        0x71068
>> +#define UNDERRUN_DBG2(pipe)                        _MMIO_PIPE(pipe, _UN=
DERRUN_DBG2_A, _UNDERRUN_DBG2_B)
>> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN        REG_BIT(31)
>> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK        REG_GENMASK(30, 20)
>> +#define   UNDERRUN_LINE_COUNT_MASK                REG_GENMASK(19, 0)
>> +
>>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BASE =
+ 0x7002c) /* VLV/CHV only */
>>  #define   DPINVGTT_EN_MASK_CHV                                REG_GENMA=
SK(27, 16)
>>  #define   DPINVGTT_EN_MASK_VLV                                REG_GENMA=
SK(23, 16)
>> @@ -1416,6 +1431,7 @@
>> =20
>>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x4644=
0)
>>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21)
>> =20
>>  #define FUSE_STRAP                _MMIO(0x42014)
>>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu=
/drm/i915/display/intel_fbc_regs.h
>> index b1d0161a3196..77d8321c4fb3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> @@ -88,6 +88,8 @@
>>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x43218=
, 0x43258)
>>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>> +#define FBC_DEBUG_STATUS(fbc_id)        _MMIO_PIPE((fbc_id), 0x43220, 0=
x43260)
>> +#define   FBC_UNDERRUN_DECMPR                        REG_BIT(27)
>>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224, 0=
x43264)
>>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-ivb =
*/
>>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /* b=
dw+ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/driver=
s/gpu/drm/i915/display/intel_fifo_underrun.c
>> index c2ce8461ac9e..8a05b5c5fccd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> @@ -25,6 +25,8 @@
>>   *
>>   */
>> =20
>> +#include <linux/seq_buf.h>
>> +
>>  #include <drm/drm_print.h>
>> =20
>>  #include "i915_reg.h"
>> @@ -34,6 +36,7 @@
>>  #include "intel_display_trace.h"
>>  #include "intel_display_types.h"
>>  #include "intel_fbc.h"
>> +#include "intel_fbc_regs.h"
>>  #include "intel_fifo_underrun.h"
>>  #include "intel_pch_display.h"
>> =20
>> @@ -57,6 +60,118 @@
>>   * The code also supports underrun detection on the PCH transcoder.
>>   */
>> =20
>> +#define UNDERRUN_DBG1_NUM_PLANES 6
>> +
>> +static void read_underrun_dbg1(struct intel_display *display, enum pipe=
 pipe, bool log)
>> +{
>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>> +        struct {
>> +                u32 plane_mask;
>> +                const char *info;
>> +        } masks[] =3D {
>> +                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val=
), "DBUF block not valid" },
>> +                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB emp=
ty" },
>> +                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "D=
BUF not completely filled" },
>> +                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF be=
low WM0" },
>> +        };
>> +        DECLARE_SEQ_BUF(planes_desc, 32);
>> +
>> +        if (!val)
>> +                return;
>> +
>> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>> +
>> +        if (!log)
>> +                return;
>> +
>> +        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>> +                if (!masks[i].plane_mask)
>> +                        continue;
>> +
>> +                seq_buf_clear(&planes_desc);
>> +
>> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
>> +                        if (!(masks[i].plane_mask & REG_BIT(j)))
>> +                                continue;
>> +
>> +                        if (j =3D=3D 0)
>> +                                seq_buf_puts(&planes_desc, "[C]");
>> +                        else
>> +                                seq_buf_printf(&planes_desc, "[%d]", j)=
;
>> +                }
>> +
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: %s on planes: %s\n=
",
>> +                        pipe_name(pipe), masks[i].info, seq_buf_str(&pl=
anes_desc));
>> +
>> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&plane=
s_desc));
>> +        }
>> +}
>> +
>> +static void read_underrun_dbg2(struct intel_display *display, enum pipe=
 pipe, bool log)
>> +{
>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>> +
>> +        if (!(val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN))
>> +                return;
>> +
>> +        intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LIN=
E_COUNTERS_FROZEN);
>> +
>> +        if (log)
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: frame count: %u, l=
ine count: %u\n",
>> +                        pipe_name(pipe),
>> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, v=
al),
>> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
>> +}
>> +
>> +static void read_underrun_dbg_fbc(struct intel_display *display, enum p=
ipe pipe, bool log)
>> +{
>> +        enum intel_fbc_id fbc_id =3D intel_fbc_id_for_pipe(pipe);
>> +        u32 val =3D intel_de_read(display, FBC_DEBUG_STATUS(fbc_id));
>> +
>> +        if (!(val & FBC_UNDERRUN_DECMPR))
>> +                return;
>> +
>> +        intel_de_write(display, FBC_DEBUG_STATUS(fbc_id), FBC_UNDERRUN_=
DECMPR);
>> +
>> +        if (log)
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: FBC decompressing\=
n",
>> +                        pipe_name(pipe));
>> +}
>
>FBC code belongs in intel_fbc.c

Alright.  Moving this to intel_fbc.c, then.

Thanks!

--
Gustavo Sousa

>
>> +
>> +static void read_underrun_dbg_pkgc(struct intel_display *display, bool =
log)
>> +{
>> +        u32 val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>> +
>> +        if (!(val & XE3P_UNDERRUN_PKGC))
>> +                return;
>> +
>> +        /*
>> +         * Note: If there are multiple pipes enabled, only one of them =
will see
>> +         * XE3P_UNDERRUN_PKGC set.
>> +         */
>> +        intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC=
);
>> +
>> +        if (log)
>> +                drm_err(display->drm,
>> +                        "General FIFO underrun info: Package C-state bl=
ocking memory\n");
>> +}
>> +
>> +static void read_underrun_dbg_info(struct intel_display *display,
>> +                                   enum pipe pipe,
>> +                                   bool log)
>> +{
>> +        if (!HAS_UNDERRUN_DBG_INFO(display))
>> +                return;
>> +
>> +        read_underrun_dbg1(display, pipe, log);
>> +        read_underrun_dbg2(display, pipe, log);
>> +        read_underrun_dbg_fbc(display, pipe, log);
>> +        read_underrun_dbg_pkgc(display, log);
>> +}
>> +
>>  static bool ivb_can_enable_err_int(struct intel_display *display)
>>  {
>>          struct intel_crtc *crtc;
>> @@ -262,6 +377,17 @@ static bool __intel_set_cpu_fifo_underrun_reporting=
(struct intel_display *displa
>>          old =3D !crtc->cpu_fifo_underrun_disabled;
>>          crtc->cpu_fifo_underrun_disabled =3D !enable;
>> =20
>> +        /*
>> +         * The debug bits get latched at the time of the FIFO underrun =
ISR bit
>> +         * getting set.  That means that any existing debug bit that is=
 set when
>> +         * handling a FIFO underrun interrupt has the potential to belo=
ng to
>> +         * another underrun event (past or future).  To alleviate this =
problem,
>> +         * let's clear existing bits before enabling the interrupt, so =
that at
>> +         * least we don't get information that is too out-of-date.
>> +         */
>> +        if (enable && !old)
>> +                read_underrun_dbg_info(display, pipe, false);
>> +
>>          if (HAS_GMCH(display))
>>                  i9xx_set_fifo_underrun_reporting(display, pipe, enable,=
 old);
>>          else if (display->platform.ironlake || display->platform.sandyb=
ridge)
>> @@ -379,6 +505,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct inte=
l_display *display,
>>                  trace_intel_cpu_fifo_underrun(display, pipe);
>> =20
>>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pi=
pe_name(pipe));
>> +
>> +                read_underrun_dbg_info(display, pipe, true);
>>          }
>> =20
>>          intel_fbc_handle_fifo_underrun_irq(display);
>>=20
>> --=20
>> 2.51.0
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
