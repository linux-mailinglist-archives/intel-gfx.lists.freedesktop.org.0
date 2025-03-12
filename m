Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8268CA5DA24
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 11:06:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE1B10E130;
	Wed, 12 Mar 2025 10:06:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZALfsJKO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426A710E130;
 Wed, 12 Mar 2025 10:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741773991; x=1773309991;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lHNBbAEIBR+fAO7jwhKpSDadVqxTJpM2qvVFN9Inp3M=;
 b=ZALfsJKOn7FZX7RW9WzBoyYG6TOh7ARO6Q5BYJBsgcxnVBgBtYMTN2FC
 SEiG0/XeriunxBo9ktPXZJ1axTRz6scX4FrJUR5fzpvdkFgnAwkT0k5CJ
 eTmsMWcP8z/8hJ4uPagoJO7uDg/Zok2GhNczp3qyQQ6VIGdM2Tir7HXoQ
 i+DIH9YIsVFuWKARnq7BVGJ03RbwVtJjelY4/xBN7vX6Zw6QvsPSBOcP9
 bUADCPahgpeiAYUfAFWe7vFG6FtDrmevJQ2kXwC3bqRY+r4ulsW/DqoV2
 AAVvRPwsTYf0sxkvi+19pHcpKfVb53hYM6FtU94Iae5M/UBHGCbsLfOMU g==;
X-CSE-ConnectionGUID: YEEEGe6eQkaMrX5ppXFwaQ==
X-CSE-MsgGUID: R6txpQ/HQW2wSRfjxjy57Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42701851"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="42701851"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 03:06:30 -0700
X-CSE-ConnectionGUID: IgosqfOeQ/ah5OMYkHSTgQ==
X-CSE-MsgGUID: gWha0teCRXyQ3wGV/eSGsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="124758164"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 03:06:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 03:06:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Mar 2025 03:06:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 03:06:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rk0eCZ2ELJRN+E2qcfgL87E/Vpvpc/s5tgp3LjPbhy+w+O/iSBHH49eDsEVcsVm23uXJU+O0QXf4UqLHRJKfldaaqmzN1wK/pPcLhOFmJG5lYG1s0CkzbFcCSTCm4XYpZqvYwqPF5EV3V6jOLm0HJLnRIXgQvmg4eje1z9kb34CwjKS+IFV14nxQMgTOQ7X7YFGMF51WPitaSSMFyeSZs0YetuEr24OAI16dL+ac8hDI8oD9SaIYrLi8ZxpO0FdWfF74WmF8yrJsGeKdE7ljyYSVSUBKv5REjRRCz+h5jN6GeP+0k9j0cSoewYKS2ALGHJ6izaPbVoqi2zcF3CgCIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lHNBbAEIBR+fAO7jwhKpSDadVqxTJpM2qvVFN9Inp3M=;
 b=pCRaQ4gfFZxFYo8881T8NYV/YjNRZT+8arP0URU8g4YC/YVQiUPQekY1y/9yxiIeVIdVcpik3Wk+D1cdzfVFi4gJvySxMY+ghBXnxlGQ8hul531aSqonZAA+jC/MLfcwjcIrD9ENmHeYl4oA5qnHhH4DwK5nQjO6mp/HekLR8VQfbd62xRdKbj2MPIVzCQ3KUJbTo/9owIMi2Ix458CRLh0/9NWzpZhaNwOuXoTRRzeUsjqNQ7yzPy6zCOPOCf6WYipSfYycmaudi+7wkE5e/lCEIaDUxuXooPpO9mA5wt7O5u+69OirM+R4y81wRj+5JbqJjxmkjm0M8SuzvATS6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA2PR11MB4796.namprd11.prod.outlook.com (2603:10b6:806:117::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 10:05:46 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%4]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 10:05:46 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcG06?=
 =?utf-8?Q?_Clean_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wbTogQ2xl?=
 =?utf-8?Q?an_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Index: AQHbktuXpuGOFvYkX0y0ZRqP5FjnJ7NvQ0cAgAAB9nA=
Date: Wed, 12 Mar 2025 10:05:46 +0000
Message-ID: <DM8PR11MB565554EBA1295A921661128EE0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <174173495369.22166.15885117229945257147@18a75f3d1eae>
 <Z9FZailpdSXuyxKv@intel.com>
In-Reply-To: <Z9FZailpdSXuyxKv@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA2PR11MB4796:EE_
x-ms-office365-filtering-correlation-id: cc44e986-12c4-428c-5df8-08dd614d756f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eVRGUnpSd3dpNXA4NWZqSXBnbmtQN05IUGVGbU5lMHcvbC9sVXorZnN6dUNq?=
 =?utf-8?B?YVVPcUM5NXd6Wm5UT2ZKY21ISWQzOWZKVENqMEdPSFFKa2NIYWFVenJvM0tt?=
 =?utf-8?B?NStNMHo3blI0eEMvQzJGLy9MVmRkWkY4UFU3Yit3U2dGNzVHNHFzL3ByWnd4?=
 =?utf-8?B?ZjVBVVlzdzZ4SWM0KzVvYzhHREw5dytEcktPRkhPeGlTaFNiQ2VZTURINmVV?=
 =?utf-8?B?OWhNai9mK1pqZlFEckpCT1pBZWNxM0JYNE5VbHgvZWgrc3dvQzNLRm5SU3h0?=
 =?utf-8?B?T052MWh5a3VvWmdvYmNadVFWRDk0RlFES2lqWDNpSjljWEpyVnArR1pIWXda?=
 =?utf-8?B?VVhEbEs2aWFaSkp0WUZyN0Y2MHRUWEhGQ3VtcWoxYkI1Mk01UjNzVCttV2Ni?=
 =?utf-8?B?UFlHWVhVY1pubXYvUWtjdDFsK1JHKzU0RGd4WkdZdDRMYXlVZkMzakluUHR5?=
 =?utf-8?B?cmoxZEhQMWtxSmhMcnM0eEZmZCtGY1VVNXBFdUprR0FmMEw5OS92MHcvT3Bt?=
 =?utf-8?B?Z1hIVjJXeWM5K0hFYnZKeGRBSDFrOEtRTEoyQmFwSU1mWUxoVkRLZnZOTERO?=
 =?utf-8?B?Z0tkOTFMNmlaLzBLMGFvUE9HRFdJZ1ExWGhtbVZPNVBFNGtjekRKd2dvVmIz?=
 =?utf-8?B?K2RvaGRweElHeUlEcE04SlR2L0pRMzdYbEl0VHNFaUtaK0liNzJrRlNMSDZL?=
 =?utf-8?B?eDJ5Zk5ZeGMzMWc5elJ4SmFISmkyY2NjcEhhUkdqK3VyVVVaTExSNzdwSEZM?=
 =?utf-8?B?RkhzNDdrdUE1Sm1NSUJ2Y2xEdC91blN3TytMZ0NTYndMY1h3cFdpaGRnT29r?=
 =?utf-8?B?R1BGbVRlTnNsU0I4S3BhQlZXVUJKUUowVzR3ZWlRa2xscjVEc2xCQVJqSURn?=
 =?utf-8?B?Y1hJYzBTZGI5eXBSd3Q5VFQrcGpzc0xWejJrcUM4dXoreFl4STgvdk9WT3pq?=
 =?utf-8?B?MGd0V0RkZHVGSTdtM1Y5V0oyZ3FnQVJXSFplSTRHNkxkQm9MSWFqZlAzK2tQ?=
 =?utf-8?B?Q0NGZEsrYkZxaHhpUCs5aWVUZXgvSzVlUnFSci9lZXVySkJ0MjdpWWl0Ny9w?=
 =?utf-8?B?TjhRWFQwVXpERVp4K1F5M2hoOVIrcTYrZHRWKy85ZWpkODJ5d1NhenBrc01K?=
 =?utf-8?B?WklGYWYvcDB6YlB1RU5DczBFNGhYdktyOEVrdDhUQlNxRDBqelRPcHRhRnM1?=
 =?utf-8?B?YkNwbU03Q2l5OVByL2lTTXA0MTFpWk1ISURzTWlxbTRrL1VjY2pSNlFUeFBk?=
 =?utf-8?B?M2lDZk1xOFBndUFFVzlpcmFEMThJWmFkakxPK3ZJTFpSVmVUMnJ2ay9SWHR4?=
 =?utf-8?B?SFpZR2N6WkVtMTgrM3NoeC9nL3FLZlNhbk5HZjZuOUdJTExBTm0wN3JueHJ3?=
 =?utf-8?B?WkJpQ2ZwMFlhcVJoSWlzMEp3MUNXeDMrUE9aeW4yZFhQbDQyOXppWDV2R1Vn?=
 =?utf-8?B?bis5ejQvT3FwRllyQzY1S3pFdlhoU3BjUUtJWm9XNk4xZVM4MDZHcnZyWmpP?=
 =?utf-8?B?YnNFODNHMHgyRXVmL0tTZmlSdnJ0TEhRdWdRU3I4ZVNxS2FzaHU5NmJVYWJO?=
 =?utf-8?B?bGJZVVczTDFEeGRvWHhMQU9SOWZRZWdrQXFMN2tidGFTcm01U0ZpL3dwV2I4?=
 =?utf-8?B?TlJ4b3B2dzZFL0F1Rlp2RkhaajJESzNoRTJwenNtVUxyZW4ySTZKL0dPc0RD?=
 =?utf-8?B?YlBxRjJXV2YyWXBEVklQWVBGUkg1NCsyTjFEcU9sUlcwZ0RvbXY4K2x4WTc4?=
 =?utf-8?B?dTFCeEJ3Z1UwNnYwWUpmVkFqd1UvN0FwTzh2U1Q1SFRTU0xBVTJJb1I1eENB?=
 =?utf-8?B?MUNzdnJnVlBtOUtxWWRWRjh5SG9MYTY1cHlleGFpWlZsdTJWZkdHV0VlRWMy?=
 =?utf-8?Q?KBHYXpAa/NMAR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWhDekRHTENpbkdlZ24xb3FmZWxMWWw2SW11M0xIOC9hR2NZUDloWnNVZVJ2?=
 =?utf-8?B?ay8ySGRSbVl4TVpiN2VWNExDOWh4TEFyVlB0eXVPV1IwNnRPcHIzUHpuU25W?=
 =?utf-8?B?TVhyTHc5UjVWR2tjWm1kRnBpM1F3RHI5cE5DbFpQaGFzRG03dkp6RGRodHdS?=
 =?utf-8?B?L2lmdGhGaC95ZUJsZk0vdytVZ0ozZHJYQUNlVUFIU05HWWNkbDBwRVVLb1B5?=
 =?utf-8?B?WWZnNXgybVhEWDZDQzlaUVdaQ1ZFbnBPTFRFcE5JMkdoVENWV3o0c3QrU3pt?=
 =?utf-8?B?bkpCMFNROGFEc2FyWDRIeXAvUXlLZ2ZuSkFzT0g0cTdycDZEV2UwZXh5Wk41?=
 =?utf-8?B?T3ZkT0tVSWpXakRjTUltazV5bXk0UmxFK0R2N0JkSmJqam9EV21WZHFBTktT?=
 =?utf-8?B?bmR2MWpHSm9qeCt1MGd5emYrSWo2dHpuQ2M1Ujg1V2RyNVh4aHoyUEowb0pJ?=
 =?utf-8?B?bkRJcVVLS1lqSTk3VWVkT1FTRWJublVUMHRMTkdxOFE2bjhNeDBCck9NWURi?=
 =?utf-8?B?UjltZ3FEYVRNdFI0bUNGWVFOVjR6ajBXMGlsdGxHNWJWRHI2RG03MXV3QnRw?=
 =?utf-8?B?dEswNy9kTEhUTWtLQ0VUcUUwRmxZVU5kby80OHNXQ00vdzJra3JFRzlQWXV0?=
 =?utf-8?B?MmJVMWo4cXJOZzlwRC9Td2t2YWdmZUhXMlovWm5jbXFTaERua09jbTRQL2Vl?=
 =?utf-8?B?VytseDA1U0t2QjdHVTB4Wm9JZTJmVVpneWxNaTZjclN3SGdnaHV0WEs5QUpR?=
 =?utf-8?B?SmtaQ3V0QUxEOWo2VE0rYVF2VG5tbHQ2ZEhDcDJnOXpwLzJNMzdxRHpVdTFH?=
 =?utf-8?B?RlpHcUZYVDhkajFVUnQ3bmRkMnlPbGFlbzhOaGdhVTViQzJiVVdLM29kUkcr?=
 =?utf-8?B?aytPeUs5S05PdE1oUTdWa09LZHRyRmFmb0VZUlM2aUk5R3p6MTFBbUJTV1dl?=
 =?utf-8?B?WmhNNHRZNGtTdVBqV3V3OFRVaTF0MHJHSTlKOTIxeWFDVjUwNXVsNUVXYXhN?=
 =?utf-8?B?ZmlIOSs5VXRLbHNtT2ZyVnp5L3VmdUZTTkt2OTJaNUZMRXZRbmVwT0hRYzhj?=
 =?utf-8?B?dG5WQVZDYVdqNHVleDdvWmlVZHhXRWtvUDlsbUFmcFVsNmR2TkFEK2dHUFI5?=
 =?utf-8?B?blJCZXJ2ckpOZWtuOTVhMyt4MERhMGFXMjh1UnNQZGxMWkJzMU9Yd1ZxWFY0?=
 =?utf-8?B?ay82ZTNSQ0lzQlFsa1I5MEZCc3FORkVFOVZta2ozaTFyS21IejVIcGFuVTkv?=
 =?utf-8?B?S2I0ZmxBandTTlhMYWE5Mm5nK3RuOHlOSlFwb1U4cFg2RjlPZ3M0Q3QxUXpo?=
 =?utf-8?B?eXlUVVBKRDNSYitjMU82UXc3WHhTTUFtTHBDNXFML0FqYXhUL3dhR255cXRW?=
 =?utf-8?B?bHpkcnJLQVVBeU43Y1c5VlUzbTA4K3M0OFE4SWU1VnZtTVNuSEkrUnpmY1hz?=
 =?utf-8?B?Wk5zVnZWeXpseTI1OWtXTm5xdWRSMlVJK1IxbWVWK1p0VWVuajEvUUxvNm1r?=
 =?utf-8?B?V1gwemlKTytGc0ZFbmZjcDIrdWVpYVV2MVYzb2xhbS9tcnNGL2d6S3hmMnp2?=
 =?utf-8?B?UW5lNTJjR0VSUmNycTVabTE0MXVpdVFwTjRrOVlXbWQ4UHRkbnpsMU15a05n?=
 =?utf-8?B?ek8xVXFrZlNxN1VOZVhMc2dUTXZ3QklmbjhPcUFHVHZxU2E1dkxRMmsra0Rs?=
 =?utf-8?B?THlUdnIrUHA2TlRmUEpPK1EzR0IrRE1sT25rSVRXVzU5b250TGU5VjdmYkJp?=
 =?utf-8?B?RE5mWW9MVm9oc1BsYTRlSlFNdEJmWWNoRWRyS01jUy9vbjdzSUJxYzN6RXdi?=
 =?utf-8?B?NkRrakl3SEhhWm9TcFFWWjVPRGpNR2xXYjhHVEtrdDRITXVtQWU2ZVlUN1J1?=
 =?utf-8?B?NUdvUHVvd1lwZTdCK0xscUJxb1FRNXRTUnkxREtLcko1UDR0V0VmWlNpdUtS?=
 =?utf-8?B?U1lFaWRRQ3BXMGRtS0QwVHZNSFhLR2p2NEpHOThsZHh0MUFQZGFRWWU0MlVq?=
 =?utf-8?B?a21MZUVrdXRhNDFsR2JjM0NQeXV0anZOcHAzSklEbGF2c3dZTm5hcE1Mbi93?=
 =?utf-8?B?QnF4TzlWcm9udzRNUThUV0lERmNONnNLbndsakZvS2JNTTdHVnFqaXU1T3Ev?=
 =?utf-8?Q?wEObWRKE81ACI0xmM1DM1K1hu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc44e986-12c4-428c-5df8-08dd614d756f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 10:05:46.6541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q4OJO2oa6h6k9H5X0or3YDFZTrEAsk11zvfw1TQDBRH496IuLRu8LhlfZ6QD/wMAhL0K8Gfgum62Fs4QJPcrKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4796
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

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxl
DQo+IFN5cmrDpGzDpA0KPiBTZW50OiBXZWRuZXNkYXksIDEyIE1hcmNoIDIwMjUgMTEuNTMNCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEk5MTUtY2ktaW5mcmFA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiDinJcgaTkxNS5DSS5CQVQ6IGZh
aWx1cmUgZm9yIGRybS9pOTE1L3BtOiBDbGVhbiB1cCB0aGUgaGliZXJuYXRlDQo+IHZzLiBQQ0kg
RDMgcXVpcmsgKHJldjIpDQo+IA0KPiBPbiBUdWUsIE1hciAxMSwgMjAyNSBhdCAxMToxNTo1M1BN
IC0wMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gPg0K
PiA+IFNlcmllczogZHJtL2k5MTUvcG06IENsZWFuIHVwIHRoZSBoaWJlcm5hdGUgdnMuIFBDSSBE
MyBxdWlyayAocmV2MikNCj4gPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvMTM5MDk3Lw0KPiA+IFN0YXRlIDogZmFpbHVyZQ0KPiA+DQo+ID4gPT0gU3Vt
bWFyeSA9PQ0KPiA+DQo+ID4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+ID4gICAq
IGlndEBrbXNfYWRkZmJfYmFzaWNAdG9vLWhpZ2g6DQo+ID4gICAgIC0gZmkta2JsLTg4MDlnOiAg
ICAgICBOT1RSVU4gLT4gW0ZBSUxdWzZdICszIG90aGVyIHRlc3RzIGZhaWwNCj4gPiAgICBbNl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTA5
N3YyL2ZpLWtibC0NCj4gODgwOWcvaWd0QGttc19hZGRmYl9iYXNpY0B0b28taGlnaC5odG1sDQo+
IA0KPiBBIGJ1bmNoIG9mIHN0dWZmIHNlZW1zIHRvIGhhdmUgYnJva2VuIGluIENJOg0KPiAtIHNv
bWV0aGluZyBpcyBub3cgbG9hZGluZyBhbWRncHUgd2hlbiB3ZSBkaWRuJ3Qgd2FudCBpdCBsb2Fk
ZWQNCk9uIGJvb3QgSSBzZWUgDQo8Nj5bICAgIDAuMDAwMDAwXSBDb21tYW5kIGxpbmU6IEJPT1Rf
SU1BR0U9L2Jvb3QvZHJtX2ludGVsIHJvb3Q9L2Rldi9udm1lMG4xcDIgcm9vdHdhaXQgZnNjay5y
ZXBhaXI9eWVzIG5taV93YXRjaGRvZz1wYW5pYyxhdXRvIHBhbmljPTUgc29mdGRvZy5zb2Z0X3Bh
bmljPTUgbG9nX2J1Zl9sZW49MU0gdHJhY2VfY2xvY2s9Z2xvYmFsIHhlLmZvcmNlX3Byb2JlPSog
aTkxNS5mb3JjZV9wcm9iZT0qIGRybS5kZWJ1Zz0weGUgbW9kcHJvYmUuYmxhY2tsaXN0PXhlLGk5
MTUsYXN0IG1vZHByb2JlLmJsYWNrbGlzdD1hbWRncHUgcm8NCg0KSXMgdGhhdCBub3QgZW5vdWdo
PyANCg0KPiAtIHRoZSBmdWxsIGRtZXNnIGhhcyBiZWVuIGxvc3Qgc28gSSBjYW4ndCBldmVuIGZp
bmQgb3V0IHdoZW4gYW1kZ3B1ICBnb3QgbG9hZGVkDQpDSSB0ZWFtLCBjYW4geW91IGdldCBhbGwg
bG9ncyB0cmFuc2ZlcnJlZCA/IA0KT24gZGlnZ2luZyBpbnRlcm5hbGx5IEkgc2VlIGZyb20gZG1l
c2cgKHN0YXJ0IGZyb20gdGhhdCBmaWxlKSANCg0KPDc+WyAgIDM5LjM2NTYyOV0gW0lHVF0gaTkx
NV9tb2R1bGVfbG9hZDogZXhlY3V0aW5nDQo8Nz5bICAgMzkuMzczOTkyXSBbSUdUXSBpOTE1X21v
ZHVsZV9sb2FkOiBzdGFydGluZyBzdWJ0ZXN0IGxvYWQNCjw3PlsgICAzOS4zNzYwOTFdIFtJR1Rd
IGk5MTVfbW9kdWxlX2xvYWQ6IGZpbmlzaGVkIHN1YnRlc3QgbG9hZCwgU0tJUA0KPDc+WyAgIDM5
LjM3NjE5N10gW0lHVF0gaTkxNV9tb2R1bGVfbG9hZDogZXhpdGluZywgcmV0PTc3DQo8Nz5bICAg
MzkuNTUxNzQzXSBbSUdUXSBjb3JlX2F1dGg6IGV4ZWN1dGluZw0KPDY+WyAgIDQyLjE5Njg5Ml0g
W2RybV0gYW1kZ3B1IGtlcm5lbCBtb2Rlc2V0dGluZyBlbmFibGVkLg0KPDc+WyAgIDQyLjE5NzA2
NV0gW2RybTphbWRncHVfYWNwaV9kZXRlY3QgW2FtZGdwdV1dIE5vIG1hdGNoaW5nIGFjcGkgZGV2
aWNlIGZvdW5kIGZvciBBTUQzMDAwDQo8Nj5bICAgNDIuMTk4MDY5XSBhbWRncHU6IFZpcnR1YWwg
Q1JBVCB0YWJsZSBjcmVhdGVkIGZvciBDUFUNCjw2PlsgICA0Mi4xOTg5MzNdIGFtZGdwdTogVG9w
b2xvZ3k6IEFkZCBDUFUgbm9kZQ0KPDY+WyAgIDQyLjIwMDU5NV0gYW1kZ3B1IDAwMDA6MDE6MDAu
MDogZW5hYmxpbmcgZGV2aWNlICgwMDA2IC0+IDAwMDcpDQo8Nj5bICAgNDIuMjAxMzUyXSBbZHJt
XSBpbml0aWFsaXppbmcga2VybmVsIG1vZGVzZXR0aW5nIChWRUdBTSAweDEwMDI6MHg2OTRDIDB4
ODA4NjoweDIwNzMgMHhDMCkuDQo8Nj5bICAgNDIuMjAxNDE4XSBbZHJtXSByZWdpc3RlciBtbWlv
IGJhc2U6IDB4REI1MDAwMDANCjw2PlsgICA0Mi4yMDE0MjBdIFtkcm1dIHJlZ2lzdGVyIG1taW8g
c2l6ZTogMjYyMTQ0DQo8Nj5bICAgNDIuMjAyMzA3XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRn
cHU6IGRldGVjdGVkIGlwIGJsb2NrIG51bWJlciAwIDx2aV9jb21tb24+DQo8Nj5bICAgNDIuMjAy
MzExXSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrIG51bWJl
ciAxIDxnbWNfdjhfMD4NCjw2PlsgICA0Mi4yMDIzMTRdIGFtZGdwdSAwMDAwOjAxOjAwLjA6IGFt
ZGdwdTogZGV0ZWN0ZWQgaXAgYmxvY2sgbnVtYmVyIDIgPHRvbmdhX2loPg0KPDY+WyAgIDQyLjIw
MjMxNl0gYW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1i
ZXIgMyA8Z2Z4X3Y4XzA+DQo8Nj5bICAgNDIuMjAyMzE4XSBhbWRncHUgMDAwMDowMTowMC4wOiBh
bWRncHU6IGRldGVjdGVkIGlwIGJsb2NrIG51bWJlciA0IDxzZG1hX3YzXzA+DQo8Nj5bICAgNDIu
MjAyMzIxXSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrIG51
bWJlciA1IDxwb3dlcnBsYXk+DQo8Nj5bICAgNDIuMjAyMzIzXSBhbWRncHUgMDAwMDowMTowMC4w
OiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrIG51bWJlciA2IDxkbT4NCjw2PlsgICA0Mi4yMDIz
MjVdIGFtZGdwdSAwMDAwOjAxOjAwLjA6IGFtZGdwdTogZGV0ZWN0ZWQgaXAgYmxvY2sgbnVtYmVy
IDcgPHV2ZF92Nl8wPg0KPDY+WyAgIDQyLjIwMjMyN10gYW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1k
Z3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1iZXIgOCA8dmNlX3YzXzA+DQo8Nj5bICAgNDIuMjAy
NDI3XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IEZldGNoZWQgVkJJT1MgZnJvbSBWRkNU
DQo8Nj5bICAgNDIuMjAyNDQ5XSBhbWRncHU6IEFUT00gQklPUzogNDA4NDM1LjE4MDMwMS4wNHMN
Cjw2PlsgICA0Mi4yMjgzNDhdIFtkcm1dIFVWRCBpcyBlbmFibGVkIGluIFZNIG1vZGUNCjw2Plsg
ICA0Mi4yMjgzNTNdIFtkcm1dIFVWRCBFTkMgaXMgZW5hYmxlZCBpbiBWTSBtb2RlDQo8Nj5bICAg
NDIuMjI4MzU2XSBbZHJtXSBWQ0UgZW5hYmxlZCBpbiBWTSBtb2RlDQo8Nj5bICAgNDIuMjI4NzM0
XSBhbWRncHUgMDAwMDowMTowMC4wOiB2Z2FhcmI6IGRlYWN0aXZhdGUgdmdhIGNvbnNvbGUNCg0K
PiANCj4gLS0NCj4gVmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
