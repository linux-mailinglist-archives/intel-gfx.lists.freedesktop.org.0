Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F80C5C1DB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 09:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C7410EA0F;
	Fri, 14 Nov 2025 08:58:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2Jg4/Id";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D487B10E7ED;
 Fri, 14 Nov 2025 08:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763110725; x=1794646725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EBQ11s+mQMEHJfqDog89JI8ybWHAsNljwDI/mlfLUQI=;
 b=m2Jg4/IdkKg5iSUnX1ym0+UfDIR4o20XHBHrxvUTY6EK7i8KT+55shQh
 sqRM8bG8LKYsypJCm9NbqXgad2wNfQ4MJBunONtlyiGpQjvXxfmUciq74
 5zfqaTqLNvHxrwA1gWFTkZp1bhX3SPtZZJEJ2vhyzkI0gPqr6AsSAC2Ev
 u+ZAG2RDXKxHfeZSlQ/awPxYBqr+e/hpFptLB5xwWSau/LEuuLhRoGjUx
 vOobGmJgYvgnpDl212TxQO6KfKy5VdbRo2sQ1lfXd51j2U5siaqA5amf/
 M8Je15xyd1XZ00exCWreLgO4CaHBu6qEkroTrAn8lpljvwIT3IhFcK7pg w==;
X-CSE-ConnectionGUID: +tsjTOFIRbqXve4zKotZNQ==
X-CSE-MsgGUID: mBTCbP0aSCW63G9QelWAsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76304568"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76304568"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 00:58:44 -0800
X-CSE-ConnectionGUID: Qyv3yVP+RKKYHdUOoIftIA==
X-CSE-MsgGUID: zDGaxVwwRgqKSdZIVBRe5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="194879502"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 00:58:44 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 00:58:43 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 00:58:43 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.18)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 00:58:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0A/QQIdIEEXJv5EKIibxHJ7Qg3QjH54/8QSGJ2t8w2uR0CdV7NDx5jRww3rwlN7mP31E7z6umHBp7f7bk7Yr1btaVN4ex7JUZ/DUJIHG5Fi6yHMI8qazMIOuKMU5VeXIblryVtJA0aUVnGNhyfOkeG+cPCGVJw6L64apj/c7V2KcAWzWLQSXK1zv9ZzoV+FQKfktYi0i8LRysMxatm9prkg/M9bTbRZbwB7C0LzCldoKLNGq+CkszO0oSVPzIt21zhjJtLijWea9n+Bt72lMgmto+k+q8FDJwTclX9tEzj32RjOS9yjZ+pxxDDWO/CjHVYMfW4JMa8iPwPy9oqLmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EBQ11s+mQMEHJfqDog89JI8ybWHAsNljwDI/mlfLUQI=;
 b=rc6OnUQCzOH6SiRyvH5La7TbIKNH1ybksEgNukXdMPdQmGV21WCOz3Fu99KR/383txEPlWbU+hkU8N/Cr5ZkCdBu84rLTgwC66A53AzmRIvjQt1tEaTC6xFvoG1VBgqTba1x4pu1VbCOGrAgmTCWFUqS7Ez0B116fg+AUXLZCCXeGWblnFEUoad3nxmxlrGWMB+Ttpq05fTD/E09BZfueA5kq5m0lLe/QqosKrziLWTGpUFlfirndykh7iGcc1SOSxCDaoDQcw8to2TqairY7RZm49BgTL3FbqAYudNecVR0WkU9Sncs1JO9Av5uPA5u+tbf8fWOvNhZs+aexK1a0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7501.namprd11.prod.outlook.com (2603:10b6:a03:4d2::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.18; Fri, 14 Nov 2025 08:58:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9298.012; Fri, 14 Nov 2025
 08:58:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Dibin
 Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/fbdev: Hold runtime PM ref during fbdev BO
 creation
Thread-Topic: [PATCH v2] drm/i915/fbdev: Hold runtime PM ref during fbdev BO
 creation
Thread-Index: AQHcUxKT2y7TmP76IEGfC77dNSrxfbTx442A
Date: Fri, 14 Nov 2025 08:58:39 +0000
Message-ID: <6e46fb72bd06dc17dbd0ddbc5bff06c014b82be5.camel@intel.com>
References: <20251111135403.3415947-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20251111135403.3415947-1-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7501:EE_
x-ms-office365-filtering-correlation-id: fef33866-d568-447d-85dd-08de235c0180
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VVVqOS9FTXpzSURBVlNibjhLUjJKT2hOQ1ZXNWtlZHJHM3dnclpXY0Q4ZWZY?=
 =?utf-8?B?RmR0QnhSNThvUjZPdEJIZlJ5dGxuZzEvMnh3UlJ3T1dvTFVjSFhFb0pseGx5?=
 =?utf-8?B?cVFWZHpZMjZpaVNwa2duSzhRMTlid3VrT2NGc0dtQjRDYlhDMnJjSUVrS2V0?=
 =?utf-8?B?Z2pJMmdqWUsvcDhxQzd1OEpnemFkdzJ6SXdGV250UTFRWDN6Vi85YnQ0TlYw?=
 =?utf-8?B?QWpZS25hUUhyV3B6U200OG0zaEpvc0NlT0U2T2tuV2d0c2xFOEF0cnhCWGxN?=
 =?utf-8?B?T1QzZUNrNytrZ3dSV21iOVB2VHNVaVFpclUyWjh3OVVnclA2enIvdFpIcU02?=
 =?utf-8?B?Tml4UFdCRHlTRFZ2RWVvYU5mc1hYNitQektVdGpkajNqQnBNTWZJSE5wamxB?=
 =?utf-8?B?cVdYTksza3NDMEtWNzhncXQxSTdrbzVlbzRRVDdSZnlrUmpkNkUvdXFFc0Fm?=
 =?utf-8?B?WEt0M25xZk02S3I2QWJZUHdGY2ViRTVQL2hhUDdZYXJaTzdwN2owb3lYbFoy?=
 =?utf-8?B?L0lTemE5K1h0b1Vsb3RhRFBhbGhYVngrOVVMTWlQNG5XTDBEZHVRc2crMDh1?=
 =?utf-8?B?a3BNZGo4MjgzWC9EK0xjOUJnai9ScEVXN3d0ZW5Mb0VQbGRwWTI3R0RBWElW?=
 =?utf-8?B?VDdZZlNrcGwrU0k4SE5SK0JkeWVRa3R2d3A3Q3pyMmpVMEJnNUFLWm42Q2J4?=
 =?utf-8?B?NWVHcm13UjNMbFhtWVcvb2NFMUpSNno1MVlCZExVcWJYbFhLZWNBcHk0cWZp?=
 =?utf-8?B?a3d1ek9WekQ5MUZ2Mi9CTzBFcWJKaGtXYjFyTm9uSHprdkFHRVFMMXRxU3Ev?=
 =?utf-8?B?OER5QWNpekQ1Mks5TUIrU0taRzI1SHl5dXBHYm42ZDhSK3JZQkM3VUxqL0F3?=
 =?utf-8?B?SWVZb3pKdWkyTk1ZMmZBdEVVVW1FSERTQW5ya2dKWFRYQWt0RnZBSS8zNGIr?=
 =?utf-8?B?NjFqb1hXcXBoL1JtaW12VE44VXc1dExYUTh0cEtDY1BTWGVDaFRFK1RvUVdx?=
 =?utf-8?B?VXY0OEp3NWdKdUVRa0hLaXlQQmFaZUhnSys2ZFc1ZDZnQVNUSFVSTmtGQzBs?=
 =?utf-8?B?VXE4THF1VTNUcUZCdGV2dWhiYWIxVDlNWDNnYllxcTV0R2dQSXNMcElKWUZw?=
 =?utf-8?B?Y3doUEl3TDNDWjFMY1h1Q2U4WUJOazhUMTBBQUdGOGNRMk1UK3Vhc3pMd3ZK?=
 =?utf-8?B?aWM1K3B6a1Zkd2FoL21kaFE1dlFsMHN5c0NMek9zNWJvckh6dUxyMzNXTElG?=
 =?utf-8?B?SDBlWG1ScWxVNldWWGJza1hRa0tuaWNzaGU4TVlibzVwYlVpa3RjOU9zRndJ?=
 =?utf-8?B?VVlnT0dscGpzNkRlUllDNmJBTVVzZTRCMTVMSjRPYUduNUFPVEJFSW1NZWlh?=
 =?utf-8?B?c0RMcndUR1lBOFNOMHkwc1I3RlZpaC9MRGxuNlZjWk1KaEppSGFMOFBWYXZ5?=
 =?utf-8?B?RlowWHpTaHQxKzJPNFUwVUdkQ0trVXloY0xZVWdtSWZ0MGg1UU1lMWpIUmI2?=
 =?utf-8?B?QkFDeTlhdnV4dVpCMk1DQ3BwM1NiQlRrTzdJbHhoL2RsWkFMaHgvWTdMNW0v?=
 =?utf-8?B?b1BpSG9CRWFkZllCMTN1Mjc3bmpFV2pLdnJHaEE0SHU2aHY2RGlpcndTdG1y?=
 =?utf-8?B?c20wRE9yUXhTdmlqekNUbUNLSFBZam5SSk1ET2lzUFQvTjREWENiQzR4TjRN?=
 =?utf-8?B?QVZBSHdMbjBycHp4b0NkOWdEVXFtSGFqUmZYUHIyQ1FoQVdpYUYrc09iSmhK?=
 =?utf-8?B?MHA0WnZFZEpWL2Rsa0VLdWQ3ZXl5WFU4eXBSUzBUTUU0VWNZNGVWS3VaOWtY?=
 =?utf-8?B?RnRBSkJkWStxVmpSRVZIaURkb2RyVmx5dCtkZGVvVlpSQnVRNFFJVEtxN3Nu?=
 =?utf-8?B?YTJQMGRVeWNnOERzUmQ3WlVwYUNFSVNDZHpXZG9TTFJ0ZkRmM0FUaG5xK0FC?=
 =?utf-8?B?M2ROQWlFSlJ2WVB3L0p3bzFZamY0dUN6YVJwdmJuWnlNeU84eVhtNHh0YWxZ?=
 =?utf-8?B?MlN5UE02cXhBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTQyY1hQWWgrM0VtdGJmVTI3ZmluOFh0b0xRVDhTQm1nemdoeTA0Ny9Yb0FH?=
 =?utf-8?B?TGFDY1BKa2o3SllUSi9xcmU2UXE3T1dKTmNqaitpVXJNWnlWem9xQ3hPaTVS?=
 =?utf-8?B?M01QRnNzTTZJb25tQTMvbC8vajNvK0gyT0x6OGpsTmxGazBHVEM1SXdqNEVw?=
 =?utf-8?B?THFOYXNmSzA2bVgyRzdQQ1pUYjBEblMzK0xxUlM1V3Z4Y0Fuamh1K2laU21R?=
 =?utf-8?B?cDVYYnI0ZHh2MDd3S2NnL2c5Vm5yN0YzZUpOYkMxQ1ptVkJOa3ZDZDJlYzhN?=
 =?utf-8?B?aVdDWWJSVVB6TzNRRVFUVHhIalhWUHhSQTRHcm5sWWE2L1VUNXgzNjJybm9N?=
 =?utf-8?B?Z1BoVkc4YXo0NnpnU3A3a002YXZvakYxdUJKdnZnZUFncGJLZTFYM1JpQ0tG?=
 =?utf-8?B?QTdzMVpqU2kvaGtacmE1WnVFQlFQSjRaM0kwTTExaDFyVUhUZ2lMdlA2U3Bz?=
 =?utf-8?B?MWZoVTdhVG9TOTR4WGRGMXZVSFp1UUIwSVphRTUwUXVMOTZUSHJGSUFZT1lv?=
 =?utf-8?B?Mks5V3BCeFFZaHhOMDRaUjl0UmtCUFpRUnRPNm5sZzI1dldGS3NTZW9IRUVP?=
 =?utf-8?B?MXZpKzJ0U2M3MXdiV05razBpNncxQlphSi9ZNHNySVpxaUJQRmJBTXVlT1JR?=
 =?utf-8?B?OElsOVo0THJ1NE81WjhlVTdLcDRkOCtLUHpHaEgza2NvRVE4aUFON0x0Rk44?=
 =?utf-8?B?c1pLYnREd3RvQWg2RW0zRzdIMWZQM2EvaGpFZGlONUtYRWlFRnhuZGJPckpV?=
 =?utf-8?B?TDd4MWx3SktOQ1FpSW9yMkxsay9qOVVQWGpoMW5NU3o4QVIxYjd1Z3MxNjFl?=
 =?utf-8?B?T3l4K2dvRUVkRXlDeVhVa1dxRUF5ZEE3UXBsbjRnNjBiNURSeU1wazRDN2xM?=
 =?utf-8?B?UmVhV1dCUmpEYkh6R1Z1Z1ljakxrMVpUTUhqNk5vbTV6c1hEQ1JFMHIrUkg2?=
 =?utf-8?B?ckZ4U2ZGcmxZYUl6ekhSQzZVVlYzeHplTFphZXJrS2Y4WXlSVTIzY25abFBR?=
 =?utf-8?B?a0d3NHZvT01nQjZ1WGhycVJrTU5OUjZpOEgrYS9ZTS9PdVh4aDV5SzdIeGcw?=
 =?utf-8?B?bFFFR1JaZ0VTOG9nQ1BoOHZDWkQ0RDVNYVNrd1k4QVA2SmR5Q251ZHdpMnEy?=
 =?utf-8?B?T3RvdkU1SitOc0hFVm16WXpDOUxlVDBaRHd6NUh2VEpKVTJRMkhWa3VjN20v?=
 =?utf-8?B?SitLZEhTUVV0UlBtbm5xZFBmc2dIQ1pqZXpUamU3RENCblZyb3l1TU5PYTNG?=
 =?utf-8?B?ZXFIdWVINkNYQmNiSmd1bDkyTVJWTzg2emtJVUJTYitSdFBTdzdKa3VIY3NG?=
 =?utf-8?B?amZtLzlkV3FCcjNtS0NiakgyUlNnQTFWOEgrTkY2MGpCSkI0U2h4RWhsSnp2?=
 =?utf-8?B?ZHI4SnRsU1BuM2Zmb0IxTUlGSkc0ckt2cmt4Vm5ZZXlVd3hnUGxqN0JpOHlH?=
 =?utf-8?B?VDlYYVptZ1g1dmRFZko2cmdwZnNvazFMYkY5aC9jOFY4K3FvdXFxMHh2OFNJ?=
 =?utf-8?B?RG8xYWtzRHlBK0c2Z3N2SFFGakE5Si9pUm5BOHB1L3o4Mmo5UUo2cGkza09Z?=
 =?utf-8?B?MWV5d0lmWnBpTnNYTzlmcjI2STFadWpoVlpYTUNidUZERUEyY0VKeHN0cnp5?=
 =?utf-8?B?cUR3d3ZneGpaN05aR2JBb1QwTzhDZGI1VllwNS9MWllMVlR5M28wQStKME42?=
 =?utf-8?B?c2ZXRUNKS2hDbTlQY1BvcDRmbDhhMGpGS2xHelBUODJ3VkFvNUI5OW9VMlRM?=
 =?utf-8?B?cTZxcHFjenRuWW1xYUloQWMzbDR2ek51Y3VuamRxb1Yvc3M0RHMwU2d0MHND?=
 =?utf-8?B?M29xbVNVK2JwU1VEaVBLdWplcnVaS3pUL1JuZXRYUFRtNlJsakJ3N0kyTTJL?=
 =?utf-8?B?VTMrVm9uZWl3UmsxTmhnSFBRSlNsSXE4U20xRkJoRkNmblJ3eHBMV1pVMkts?=
 =?utf-8?B?N0VFaDRySXp6K1pER0xiMXE4cjBORmNJQ282STZKdXpnelFnNy9HTHRva3ZV?=
 =?utf-8?B?bWxkZkwydVVSNmJHWkhRamVxWVlOR0huc1JIdmR4aUdKYWdERi9BeStZakkz?=
 =?utf-8?B?YkJBd0xKNVhBdXBNQVowZHhuZFFlbWVKamxWV1B1OFFOT0lld3R6aTBYL0lK?=
 =?utf-8?B?WUJMM00vcnZDbXd1WWJla3kxNEtjNEIwQVZMeVZNaG8wemxNTEE4UG9yVnNF?=
 =?utf-8?B?OXhKUEk2VmQvNlJPRGtqTEVUSFBkTWpuVlJiM1F6UkV2RlRKS1hqK2RROUFj?=
 =?utf-8?B?aHVma1FWWm1YZW0yczA1dmZoNTJRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6576216EC132174BB2A5C5051A313505@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fef33866-d568-447d-85dd-08de235c0180
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2025 08:58:40.1860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sswdfW8dau4ii5WKjMcwYxW6I4IW3LEn1/td1y3xNC6Sdh1e8Ixj153Bp7vHu7BK7rhl7g27PP9a/cN1/fK4JGCs10HZxQjo4Ouj377+3HM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7501
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

T24gVHVlLCAyMDI1LTExLTExIGF0IDE5OjI0ICswNTMwLCBEaWJpbiBNb29sYWthZGFuIFN1YnJh
aG1hbmlhbiB3cm90ZToNCj4gRHVyaW5nIGZiZGV2IHByb2JlLCB0aGUgeGUgZHJpdmVyIGFsbG9j
YXRlcyBhbmQgcGlucyBhIGZyYW1lYnVmZmVyDQo+IEJPICh2aWEgeGVfYm9fY3JlYXRlX3Bpbl9t
YXBfbm92bSgpIOKGkiB4ZV9nZ3R0X2luc2VydF9ibygpKS4NCj4gDQo+IFdpdGhvdXQgYSBydW50
aW1lIFBNIHJlZmVyZW5jZSwgeGVfcG1fcnVudGltZV9nZXRfbm9yZXN1bWUoKSB3YXJucw0KPiBh
Ym91dA0KPiBtaXNzaW5nIG91dGVyIFBNIHByb3RlY3Rpb24gYXMgYmVsb3c6DQo+IA0KPiAJeGUg
MDAwMDowMzowMC4wOiBbZHJtXSBNaXNzaW5nIG91dGVyIHJ1bnRpbWUgUE0gcHJvdGVjdGlvbg0K
PiANCj4gQWNxdWlyZSBhIHJ1bnRpbWUgUE0gcmVmZXJlbmNlIGJlZm9yZSBmcmFtZWJ1ZmZlciBh
bGxvY2F0aW9uIHRvDQo+IGVuc3VyZQ0KPiB4ZV9nZ3R0X2luc2VydF9ibygpwqAgZXhlY3V0ZXPC
oCB1bmRlciBhY3RpdmUgcnVudGltZSBQTSBjb250ZXh0Lg0KDQpSZXZpZXdlZC1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gDQo+IENoYW5nZXMgaW4g
djI6DQo+IMKgLSBVcGRhdGUgY29tbWl0IG1lc3NhZ2UgdG8gYWRkIEZpeGVzIHRhZyAoSmFuaSBO
aWt1bGEpDQo+IA0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
eGUva2VybmVsLy0vaXNzdWVzLzYzNTANCj4gRml4ZXM6IDQ0ZTY5NDk1OGI5NSAoImRybS94ZS9k
aXNwbGF5OiBJbXBsZW1lbnQgZGlzcGxheSBzdXBwb3J0IikNCj4gQ2M6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IERpYmluIE1vb2xh
a2FkYW4gU3VicmFobWFuaWFuDQo+IDxkaWJpbi5tb29sYWthZGFuLnN1YnJhaG1hbmlhbkBpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJk
ZXYuYyB8IDExICsrKysrKystLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMNCj4gaW5kZXggZTU0NDljNDFjZmExLi43MTczYmQxY2JmZmQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gQEAgLTI4
OCwxMyArMjg4LDE4IEBAIGludCBpbnRlbF9mYmRldl9kcml2ZXJfZmJkZXZfcHJvYmUoc3RydWN0
DQo+IGRybV9mYl9oZWxwZXIgKmhlbHBlciwNCj4gwqAJCWRybV9mcmFtZWJ1ZmZlcl9wdXQoJmZi
LT5iYXNlKTsNCj4gwqAJCWZiID0gTlVMTDsNCj4gwqAJfQ0KPiArDQo+ICsJd2FrZXJlZiA9IGlu
dGVsX2Rpc3BsYXlfcnBtX2dldChkaXNwbGF5KTsNCj4gKw0KPiDCoAlpZiAoIWZiIHx8IGRybV9X
QVJOX09OKGRpc3BsYXktPmRybSwgIWludGVsX2ZiX2JvKCZmYi0NCj4gPmJhc2UpKSkgew0KPiDC
oAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAibm8gQklPUyBmYiwg
YWxsb2NhdGluZyBhIG5ldyBvbmVcbiIpOw0KPiDCoA0KPiDCoAkJZmIgPSBfX2ludGVsX2ZiZGV2
X2ZiX2FsbG9jKGRpc3BsYXksIHNpemVzKTsNCj4gLQkJaWYgKElTX0VSUihmYikpDQo+IC0JCQly
ZXR1cm4gUFRSX0VSUihmYik7DQo+ICsJCWlmIChJU19FUlIoZmIpKSB7DQo+ICsJCQlyZXQgPSBQ
VFJfRVJSKGZiKTsNCj4gKwkJCWdvdG8gb3V0X3VubG9jazsNCj4gKwkJfQ0KPiDCoAl9IGVsc2Ug
ew0KPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAicmUtdXNpbmcgQklPUyBmYlxuIik7
DQo+IMKgCQlwcmVhbGxvYyA9IHRydWU7DQo+IEBAIC0zMDIsOCArMzA3LDYgQEAgaW50IGludGVs
X2ZiZGV2X2RyaXZlcl9mYmRldl9wcm9iZShzdHJ1Y3QNCj4gZHJtX2ZiX2hlbHBlciAqaGVscGVy
LA0KPiDCoAkJc2l6ZXMtPmZiX2hlaWdodCA9IGZiLT5iYXNlLmhlaWdodDsNCj4gwqAJfQ0KPiDC
oA0KPiAtCXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3JwbV9nZXQoZGlzcGxheSk7DQo+IC0NCj4g
wqAJLyogUGluIHRoZSBHR1RUIHZtYSBmb3Igb3VyIGFjY2VzcyB2aWEgaW5mby0+c2NyZWVuX2Jh
c2UuDQo+IMKgCSAqIFRoaXMgYWxzbyB2YWxpZGF0ZXMgdGhhdCBhbnkgZXhpc3RpbmcgZmIgaW5o
ZXJpdGVkIGZyb20NCj4gdGhlDQo+IMKgCSAqIEJJT1MgaXMgc3VpdGFibGUgZm9yIG93biBhY2Nl
c3MuDQoNCg==
