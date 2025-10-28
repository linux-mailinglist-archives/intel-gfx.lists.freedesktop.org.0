Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3A3C14854
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 13:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBB110E17A;
	Tue, 28 Oct 2025 12:07:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JX0NTR+d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE1E10E3AD;
 Tue, 28 Oct 2025 12:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761653233; x=1793189233;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QpyyFfPzBVi35h/+5CYDmyCp4dLCxEylgqt+tFUkWBo=;
 b=JX0NTR+dJWFP+U8HvqK5SitOKbff/e5c31uyS8ZJl2EQR6R2KfqnmxS6
 Xft5geAjubbctgdXo8wdnDBypfVxiR80HOtt59MARPN3VeSZDi1d6JP6v
 sxOCNnkX47YgwZ+yrQHqIatmk4pcaRlFA8x+Y8T3uRBP5Pmc9s/j/y2ID
 N5mtQ22UPdkHHE/j4DufPkukEmD6x53Nq5Ujl5r3FFBBWVLstJvs4vIwa
 ntQQHsSHHcRB2h3tWS0b+xy1GXZkkQ/8E1j5+BhyAGqXb6O7peOvJ6weX
 pfHJWacH3wmS3zNrJRX/UKbKzpm60FMiLzhZEE7ojGRGsH0pOmlyZGZuM g==;
X-CSE-ConnectionGUID: 7+wAurWJTi69IDzt4xpXSQ==
X-CSE-MsgGUID: xdKVf3suSCmm/BcyKetLHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63653419"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63653419"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 05:07:12 -0700
X-CSE-ConnectionGUID: 4t92ZVsWRQ6f3zXrIGu4vQ==
X-CSE-MsgGUID: J/HK4NCARay3d8iw7k19qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="189684234"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 05:07:11 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 05:07:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 05:07:11 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 05:07:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wVnN+uNdqGBDVuzbnPzpAj0InX5fvL5ZZxfkGpJa8kzG+Za38t91GQtKM7uzD8/qJg6d6Zw86IylXWHPdoc61Bd7s6kzrH/Z4PDoQ9yP3EwxZVu4uiF+Isd5bmW+IuCJILtJtb0IToM7bCHyeZX/G713gxAw6C8vAVcEX3T4sGIhoxVpzELZChLTuVsRg+eyr+AC6GwCs4sJzJZV1Obv5tsmicByFqjpxID2nHZNTMVlMVN3svRgRVbajNOoiH1uLjzJNMWKdfPUuV9Orz1J5uEX8QCr/3MvxpPb+zTv7De5WLr+pbgbfPUGutDrDhgq70P3kelA2G0Zofy1dovffg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QpyyFfPzBVi35h/+5CYDmyCp4dLCxEylgqt+tFUkWBo=;
 b=kFRImoaJsRqNPTomvkQkVPIpAoyLoXiYjfR7vxlY+l6NP5BKIhEAP0le6+zhcejhy8IMwyH3yJuXUckY24q1UOyIjfnz5e564Rl6AUhjvyE3bTn+o4fa4zRFIoWaI2/r13lnEjG5Y6bLR3VHwW+8TD4+zRW+ifdD9pTzaLg8bX08jelp8pc67NDaEy9icVDH0iL6eTcXpg8Tmz0Sd9YBBxu7jopaYuXVO2U2N5jnj4fieaL2QdX2jyLVFg+qxREbT+9jkMjTEla7bwQhTm09+7S9Si53DlX0sP02v7yllfH3aVLgtx05AomHp8v0ysmEz3OVNMeaNxtkSit3siJU5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SN7PR11MB7490.namprd11.prod.outlook.com
 (2603:10b6:806:346::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 12:07:08 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9253.018; Tue, 28 Oct 2025
 12:07:08 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Naladala, Ramanaidu" <ramanaidu.naladala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Naladala, Ramanaidu"
 <ramanaidu.naladala@intel.com>
Subject: RE: [PATCH v2] drm/i915: Add fallback for CDCLK selection when
 min_cdclk is too high
Thread-Topic: [PATCH v2] drm/i915: Add fallback for CDCLK selection when
 min_cdclk is too high
Thread-Index: AQHcP3eQEHF4MZ67NUqxRxLYC7IPJbTXhiAg
Date: Tue, 28 Oct 2025 12:07:08 +0000
Message-ID: <DS4PPF69154114FCDAF27E638E26ED4D423EFFDA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251017114821.780466-1-ramanaidu.naladala@intel.com>
 <20251017150526.781715-1-ramanaidu.naladala@intel.com>
In-Reply-To: <20251017150526.781715-1-ramanaidu.naladala@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SN7PR11MB7490:EE_
x-ms-office365-filtering-correlation-id: 715037a3-2408-4463-c43b-08de161a84de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?YWhHSStrRzNrWXdCN3dnM0h1Y1RtRHFaUFAwNHZPNW5ReW1taWd3NGMwamtM?=
 =?utf-8?B?ZVZkSDVOb3F4ZkxUdkZqdUs5WG9CeVJiNWhaQ0YvUkVMRm4zcHJ1RUJRODhk?=
 =?utf-8?B?MVlDZytqeGpjUkV6UFhLRWFLcml0MzVpQzRjRnd4V0l5UnRsbDRyVkdueHJo?=
 =?utf-8?B?NzZQMGtxMGRIdUIrcWxWaWdMUExjeURua05GOHRGZTZVZjJ5dFBoUFRMdXhT?=
 =?utf-8?B?N1FTYXAvU3J3eDVhblVCb2FyYktaVlhROVlqQ3RNYmMvNjY1ZEovMWIwaFBr?=
 =?utf-8?B?RlJMaFZRZkRvOG9Wc1dRZzhqc3Q2TUhSYUVDazdUN2F2d1gzdk1laHJkVHV5?=
 =?utf-8?B?R1hxaE9UTklPbEgrY1ZaL0lrY1kzS29FNElZTExLTXlLTVE5YWVndXJQRVVa?=
 =?utf-8?B?UG52bW5jYmYrZzBJdXd6VTdnblpITmRQMWVzREZJVjhlaFhMc3lxZDhSZ3JY?=
 =?utf-8?B?aXRjeGJtaXR0dGphOG9QL0l1Y1FIZkZML0ZGQ0tWOEZKd1N3MG5HNk1QL0tk?=
 =?utf-8?B?ZUY3ZG9pYTdNMVNLdmJaR2hqdk5QSzd6MWRjOUhQTER2REd2bjBYUFBPTlNZ?=
 =?utf-8?B?TS93cHJrWE1RSVBpdm5RRkNwa2Zycnhhd3hucGVNS2REejQrcG0vL1FIWGY0?=
 =?utf-8?B?ZU0wc3RWalBkY0xJbWV4U0V0R2hoSnZGV0FOSXF4YTlkS3Baa29YdFk0MlFF?=
 =?utf-8?B?OG5CRjhpVlc1K0dHdWFFN0xwQ0gwS0tQWE4wcHlzai9PdnJhUUhVaFBobnVD?=
 =?utf-8?B?SHlpL1BSbmxWdUpwWE9aUWFLKzFQekRoK2VKOEJJNnJVVldTN1JqbFF5Rzhi?=
 =?utf-8?B?S2dFd1ArZVRud0xHWVJsNkx2SEYzMlBoSWU3dTljMk5wYjRiTWhiT0hicVFJ?=
 =?utf-8?B?TXdpQXo5bnZpRWNLS0pEQTlpRWppWmdXZkplQ0pGWjBqWEhiMGpxRzJhZGkr?=
 =?utf-8?B?SmJwRmVBZDFLbWxmQ1U1SWFKa0FFa1ZDM3VWOFpwQVpRTkZoemFJSTh4SVFo?=
 =?utf-8?B?UzRLUUZPQ3E3eFgzTTlESEhUV2lXNS91UUVDZTRHQkVyNGI0RG5yWFkvd1B1?=
 =?utf-8?B?UjE5eWVoUXdlaExRNG8yWFNnMzNMU1NaaVI4Y0F2STROVlJ5SHovNmpmNGxU?=
 =?utf-8?B?Q0RjZXBXMW8ySU1NMUpzOVhLbzBhTWhTRW1Wa0xSSVlIZ1dBR3N2ZmIyd3RM?=
 =?utf-8?B?UCt0SExLTjluV05IRkt4OXNJNGJsckREOWVMQXVmaXEweVNGMldZVzEvczF0?=
 =?utf-8?B?VE00eWRYNTZtUmNmQm9EMVdTUzBWVmZ5dytSeW02b2pyVmNWTE5rZUZsTnpu?=
 =?utf-8?B?ZFE0Nll4cjhFa2U2TlYzZk9SdlF3cGRmb1dDOEVtMjdmWlpndzMvbk9wQnBa?=
 =?utf-8?B?NjlIaW84MGtBNm1KNFNodUpJQ0dFZkYzS0x2c0RadXVvSHExZGowQVF6eVpa?=
 =?utf-8?B?TzBTeko4RzQxT09sL29XT1FiOFpObjVpV3hST0hlRU43c0ZYZitiZ2NMMUFl?=
 =?utf-8?B?eVRrNzlMb1hHUEVFN2pKaEVuSk4zVEtoK1BOQTNrelMveWxFaGJUTXhJWWs1?=
 =?utf-8?B?YWJkejg2NC9iWUZrek5HRFJ4eUdFZis5RWcxQkNmUGFaSS85aVVPQ2xQMG9i?=
 =?utf-8?B?MURZMzUwaFFtMlV0VlFJTEh6d2xLM3VsZ3ViSTN4dUpWUjd3TmxsZTUxbG5y?=
 =?utf-8?B?dUwvTzVOd0pyM0xyUGM0R1JLdnpuYktwbXhxNHBvYktVUDBoaklLQlh4dXNw?=
 =?utf-8?B?NlVTMU1GQUd6UEVRcWpJeHROVGpDM3VzdVdUbjdZd0lmRVhPMmFpeDYwZTVG?=
 =?utf-8?B?UnA5OWg1Vzd1VXRYWnNHWU1yb3BHQUJrdVc5b0xiN1Vqc2xGWVRCSW5ySEFB?=
 =?utf-8?B?TnNKSTZ0TUVSVjl2b1JDYkIrdVdYZWs4NXF3QUg2Um95WXRZSDQ4ZEs4Yk5U?=
 =?utf-8?B?b1FaZDBtRUh0U0cxazNkU29KN0RBekNjd3BpNWxhc3E4OFNWdTBId2Vmd3Rm?=
 =?utf-8?B?TU5tcHRWVDdzNmhJTzRKU1Y4VVZ4czhJdFI2OC9FcFpNd1VzUWh4ZlRGQmF6?=
 =?utf-8?Q?pmLAWY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mit1QUVWem4rWC85ZDFnaUFXSjNHMFBQbXNNTUc4eUNBQkFGZ3dyanBXUW1h?=
 =?utf-8?B?Q2U0NmZkUmEyYWpzN1FXeTJFaXFzSkMvR0o5dm0wbXBJNk9RYm9yT2R5OER3?=
 =?utf-8?B?UVk1MlplNEk1STM5QzNuQThyc25MSFpMRC9WUEFnaktlSEFybldMVDBVOUc4?=
 =?utf-8?B?LzVsVE1YRmdIUlVMaWQ3VlJqU2x1YStNcWgwK080L0R1ZStCYTVyWGpuYWpU?=
 =?utf-8?B?SnRlcXppcm5MUFVhUzhVUURBZDJDdHlqNGdKRnd4dUxCMDgwQjFPcGU1b3Bk?=
 =?utf-8?B?UHZBdzRFdlREUk1XN3hWakZFVXpjMGdDWG5WMjZBUDQ1dEd3QkRZVW9LT0hB?=
 =?utf-8?B?SEwvbXhsRTlwWWNuOHFBemtibU0vKzZFeVFEMThtSVlDVXA0ZU1zemhZWjRV?=
 =?utf-8?B?R3BLM3BBazFYVXVmK25uMzlieXdsUE1sbDFJdEJBbnlaVDRQWmR1aTJDT3ha?=
 =?utf-8?B?akdHMlFqajJaOEo2UjFlWHg1aDZxQ2ZrSWtKaHdxaXp3SHU0Nm5MQk42UmtM?=
 =?utf-8?B?RmhMRWtvYkIwUy9FRTFjUWtzb2E4Q0wwOVJ5QkZXSHhISFh0bGorTjBjVGJh?=
 =?utf-8?B?akhKSm9tczRZZ083ZUMvSTFRcVNZRk9xUXNGbHo1Y0RQc2h0bzFtdC9tQTlr?=
 =?utf-8?B?b1FZRnBvdU5HWUsyNnUrWlozUEY5SHAvdytVcnIyUkhUbmE1VE5HV3JYMWVi?=
 =?utf-8?B?T0tSb1BaekFDV2liTjUrMXlZRDgxQWQyRUtqaTlTdzdrSjd5dzJac2hhTGpm?=
 =?utf-8?B?TjhSQlIreFdKMnRuQ2ZZeEczcExZcHdKYVYvVllOQkExRHpMQWtvVjRtb1Zp?=
 =?utf-8?B?WElzWWJYMjFQM3BJWXhaWFRPRjRwbkp1ckY5Q28rK3hvRzFVUjVqdFFobzFj?=
 =?utf-8?B?bVVUUHVrNXNkNDRhbXpJR3pFZFN3SzNoNTBIV2tUMzcvRWU5OHFheVBMcUhH?=
 =?utf-8?B?d0MxM3h5Y1VsaXArWDRQUlpIOWp4alRsWGxWK0c0dU0vbFhTTVFMemxOdUVT?=
 =?utf-8?B?blBwZTMzcU9HVnhtT1kzMW56SnBQN2R3UVVSUGoxd0Y5T203UVNmM2F6azYy?=
 =?utf-8?B?TGFscUlXdk5NcjVUUkdJakdJSGJlNEo0dlBhbFBncmkyTmxYcjdSQTAreWtX?=
 =?utf-8?B?c0Z6cm11Tk52dnlGM0hMNytOd0tVVHlpRS85WktpamdrRGNLY2JjNFo2UHhw?=
 =?utf-8?B?YmxpbHhzQjZLV1BMejhtSHJ6WFlIcFlCemEzODRHWU5McWtKUUI5ZWRXT2Fv?=
 =?utf-8?B?aTVZTWg0VktCeG1EWUhrc0pIQ2g1UTkzaTRLQmhNVitRSi9uWGYzNHMveTVj?=
 =?utf-8?B?Y1hRY3RudGVuclFud2lMMkxDQmRjK2RjRTZJaTA3ckFvanlKTTBSRjdhUTVT?=
 =?utf-8?B?MkI5ejR4YXpyU09PUENIemxVY1dRR0JzTGZXL2s5TDQ3NURtK1R5OXZ2MlR1?=
 =?utf-8?B?MWhJSzByVkQ2eG92WEFKR2NqMzBrNGUyZ3UxYlJvMDRuMFFFSGh1WkVOVTh3?=
 =?utf-8?B?RUFuNEVIbDVKSkZyNFQvMXJ2Y0FReXJRaVpQREtyYy9qT0h2VVNrK2YxSjNj?=
 =?utf-8?B?WEo2M3VMZGs0Nm9Mbk1IQ0ZrL0wrcExYL1RmT29mOTZNckFWRS9tTWlvYyti?=
 =?utf-8?B?VHdBQmJxU1JJWWxiU0hmRGkvWENITS9SMDJZeHFOYm9OQ2ppNWpyb09kazlV?=
 =?utf-8?B?MkYxK21YL1FNeTBPR0FZODBaNnJlWEg4dk4yV2lkZ00zaTlrYlBMM09lMkMv?=
 =?utf-8?B?UzVUR2lQYWQxWEZiOHZqS3JtMk10NGlzaVBJNU0vc1U1cmFzOVo4OFhrazEw?=
 =?utf-8?B?bGNoenFDaTdVMUswVFdOR2c3RmFqYnpZVWUrdFYzekxocXVpL3BNZk1Rdk1a?=
 =?utf-8?B?QXhVbG1NUGtiZGtWbXVMY3Q1cHhOZXRQeXJsTi9ITzNqZmJ5UjZtbjBnZElF?=
 =?utf-8?B?YVd5VFRkb3BodThaYzRkOHRFbFloeUtiYW1Pdms3Z0pXMVlXMHpKMmtSQXVO?=
 =?utf-8?B?UGtwb0E1YzN1S0FWN042Z0NiWFF1Vzg1Rm5SWlVVc3h1RWxjSUFDa3lqRUkv?=
 =?utf-8?B?Sk1OalpTZTFvaC9kaVo5amtDaHVzZHFGeGdUNjVWd3JzSzYzZkh1MEhXT1hH?=
 =?utf-8?Q?FqSaeoVLEHBzxLPE7MjWtTYvt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 715037a3-2408-4463-c43b-08de161a84de
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2025 12:07:08.7096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3mr563UxLpHpwuVUTfayl9QyRQVgfDEg2K6yzFnwLJ7xGykpr6pHQJh7ym8d98+ToYsouEGQcq6XkfKZQwLPlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7490
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBOYWxhZGFsYSBSYW1h
bmFpZHUNCj4gU2VudDogRnJpZGF5LCAxNyBPY3RvYmVyIDIwMjUgMTguMDUNCj4gVG86IGludGVs
LXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IE5hdXRpeWFsLCBBbmtpdCBL
IDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IE5hbGFkYWxhLCBSYW1hbmFpZHUNCj4gPHJh
bWFuYWlkdS5uYWxhZGFsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2Ml0gZHJtL2k5
MTU6IEFkZCBmYWxsYmFjayBmb3IgQ0RDTEsgc2VsZWN0aW9uIHdoZW4gbWluX2NkY2xrIGlzIHRv
byBoaWdoDQo+IA0KPiBJbiBjYXNlcyB3aGVyZSB0aGUgcmVxdWVzdGVkIG1pbmltdW0gQ0RDTEsg
ZXhjZWVkcyBhbGwgYXZhaWxhYmxlIHZhbHVlcyBmb3IgdGhlIGN1cnJlbnQgcmVmZXJlbmNlIGNs
b2NrLCB0aGUgQ0RDTEsgc2VsZWN0aW9uDQo+IGxvZ2ljIHByZXZpb3VzbHkgcmV0dXJuZWQgMC4g
VGhpcyBjb3VsZCByZXN1bHQgY292ZXJpdHkgZGl2aXNpb24gb3IgbW9kdWxvIGJ5IHplcm8gaXNz
dWUuDQo+IA0KPiBUaGlzIGNoYW5nZSBpbnRyb2R1Y2VzIGEgZmFsbGJhY2sgbWVjaGFuaXNtIHRo
YXQgcmV0dXJucyB0aGUgcGxhdGZvcm0ncyBtYXhfY2RjbGtfZnJlcSBpbnN0ZWFkIG9mIDAuDQo+
IA0KPiB2MjogVXBkYXRlIHNhZmUgZmFsbGJhY2sgdmFsdWUgdG8gbWF4IGNkY2xrLg0KPiANCj4g
Rml4ZXM6IENvdmVyaXR5IENJRCAyNjI4MDU2DQoNCldlIHNob3VsZG4ndCBtZW50aW9uIHRoZSBz
dGF0aWMgYW5hbHlzaXMgZXJyb3IgaWRzIGFzIG1vc3Qgb2YgdGhlIGF1ZGllbmNlIGNhbm5vdCB0
cmFjZSBpdCBiYWNrLg0KDQpXaXRoIHRoaXMgY2hhbmdlLCB0aGlzIGlzIA0KDQpSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogTmFsYWRhbGEgUmFtYW5haWR1IDxyYW1hbmFpZHUubmFsYWRhbGFAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDIg
Ky0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCBl
OTJlN2ZkOWZkMTMuLmRhOTdjMzhjY2ExNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMTU2MSw3ICsxNTYxLDcgQEAgc3RhdGljIGlu
dCBieHRfY2FsY19jZGNsayhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgaW50IG1pbl9j
ZGNsaykNCj4gIAlkcm1fV0FSTihkaXNwbGF5LT5kcm0sIDEsDQo+ICAJCSAiQ2Fubm90IHNhdGlz
ZnkgbWluaW11bSBjZGNsayAlZCB3aXRoIHJlZmNsayAldVxuIiwNCj4gIAkJIG1pbl9jZGNsaywg
ZGlzcGxheS0+Y2RjbGsuaHcucmVmKTsNCj4gLQlyZXR1cm4gMDsNCj4gKwlyZXR1cm4gZGlzcGxh
eS0+Y2RjbGsubWF4X2NkY2xrX2ZyZXE7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGludCBieHRfY2Fs
Y19jZGNsa19wbGxfdmNvKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBpbnQgY2RjbGsp
DQo+IC0tDQo+IDIuNDMuMA0KDQo=
