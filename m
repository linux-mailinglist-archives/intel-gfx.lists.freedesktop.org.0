Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGQaENcvoWnTqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 06:47:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D6A1B2F75
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 06:47:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70D0F10EA3B;
	Fri, 27 Feb 2026 05:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aRosJ6v+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B9A10EA3A;
 Fri, 27 Feb 2026 05:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772171219; x=1803707219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=l9oU2GKiKzqHYS52ujtbjLwln38OWIueQ1TM3zP53OM=;
 b=aRosJ6v+IzsRWVBSQvHieHtLbZqPU2k+PvFz5iZEJ5gVKPi3KCL8X5W2
 2GGKhZ2hWDVTxZieM50Csm7roXhFRdegLNjOPfAjv3JAuWSaMFFWfpMYd
 7ntQJAMEl/b6CfKsccAL5mTUMwNsJsysLSXmXzugWtqfe8cIzRRJTBnvO
 uD4lMZqjwPGV8MZtdTgjt/DCu79k3lTT0WjHOQXUzyGXvX63R/ASnq1XV
 LR2D7IJEmoaDN/++duVQS3xnue3jHZ3PAZ/pfruRs3WTLiLRtVA+qYy/g
 I4ypl6OuDsLiQ9uhV15CquUp2m4rQaEntxWJfng/5fZbi3jT0grEUMtDf A==;
X-CSE-ConnectionGUID: lhntHYmwTWS7DX52XRp+0A==
X-CSE-MsgGUID: v5h0HJfaRQyn08yuthk6fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="77086766"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="77086766"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 21:46:59 -0800
X-CSE-ConnectionGUID: yOohWidlSBKnotD6ycuPzA==
X-CSE-MsgGUID: ZAU1/8MoThuCH3z5pYO1lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="216030807"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 21:46:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 21:46:58 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 21:46:58 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.44) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 21:46:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F8uMqoqHz+jAIZz6y5t7y1O0u4PdM0OAmcxHfJkdYe/OewFlv0vjl+jNWVF05z/pgRbGNjE49jc1EiEhH5BKoCsNUsurc0/iABkSkpvi+9tI57isSfAeQsvGvpFdI46lHwbXX4360E6WEcoUulWmr9buIEOfB+CLO1vwVNR+C3xYIKRdBsB4vPsP3et39LtTx5pekmuehp8T0c9xW9SgcnnYCsmhyk2uFZaTJ5qriRzpKWcT6HHnabpBdVw+O2lkyAl8D1lBBTMKXeq/izrCTUSWzfUFRc4NnZ2ReW3+pn/FFR1tAihLfugim7HcCJp66NINix4rHy71NU+vqODcaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l9oU2GKiKzqHYS52ujtbjLwln38OWIueQ1TM3zP53OM=;
 b=VrMiz+bxYFPhYZDL7HabNxoKRWxDZ0oZdcH6cQhcbL/KE+bN/xDy3SJIzCUT5gYGsoPAlPSNSNZrMt/NP3Jz8nNoOwhijMmt8teeE+C2nuOblC6B5JImidi01BQ12T+RnEJtuifzq206kEe8FSiA80Kk6LtQ/RdQI4ouFA4DozvzNvPY57ypoT5c1aGgvvKIIX/V4lt41rLDttw7e63VhtAZ1BadNtKjM/lMfFLj3M3bgskcGuK0lxxwawh0pD1DQ7x4a3jkWkECAwxyrvLeEN43IQfa+2x7EOfCKBszXxeUOAL7fCfZgMDWhDmF0jzugaHGMVVcxgBScNP0BnstHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6837.namprd11.prod.outlook.com (2603:10b6:303:221::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Fri, 27 Feb
 2026 05:46:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 05:46:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 08/14] drm/i915/dp: Add AS SDP support for PR with link ON
Thread-Topic: [PATCH 08/14] drm/i915/dp: Add AS SDP support for PR with link ON
Thread-Index: AQHcpMza+RXV6ObksEqdbMLMtjSFYbWVK0UAgADQuoCAABNUAA==
Date: Fri, 27 Feb 2026 05:46:49 +0000
Message-ID: <2b2697b9c8bc5f74b8ec50468a0388d5136c40dd.camel@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-9-ankit.k.nautiyal@intel.com>
 <aaBwesODSUbEdvjR@intel.com> <aaEfeDSkYNU5M92U@intel.com>
In-Reply-To: <aaEfeDSkYNU5M92U@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6837:EE_
x-ms-office365-filtering-correlation-id: f16960ba-b2f6-4824-d8a2-08de75c39a44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021; 
x-microsoft-antispam-message-info: vvERgnmbjuSa5PwTthGGoAvnwdKNRbB26kaGdAaPMB7DIYsgDYXzQ5qiAF0ANZcn8P3JP4UYCBqLgmEjUZNX8KheV3quy02gTJ+CmxlcscZzAhdBGfWRxt1638RmM/qZY5miDvHv+Obq2viJqYGm1GPMLNtPTGiSC9Erh03sVvC5A64zEp+xdhLkLQvMe1CfpxeGVbz146C5AL5n8mW8fXaga148422wWpeW2ghsr+Fm01zGK2d6khI3UOICCvchYdlvOAcFWfXGVpYZa8giHCkjnBT6AhT/ZlHBf1OqOzRZ6y4pR40BbzxLVAlSF6ZpfFtRg+byYNKkd+pg6NG3CqkfWUon5AsojjCY/86v0pVFDVH2oIc6oIfR2uJRQ5Asmof6as6ZpF3xVLVy+baQIAwtPHhTJjyhF+G4U5cu8kFWngbRH7AvIi/9FrKjlmOHOqk1c3jLnMhjV1R1zeHDjpWbGxXf64qd0BklYVlVYUKi7MvWjOTE/AgFD3X9fRVO1TJRgqGb/JDXh4yyiHhMok0Oj1Gyiqbu1muFPiSYpDk12SuuH+CJ2pVythrVOPewjh6k6CzcgsnpCguQQX3qKaN2d/a2u6abUrX85NmZqh8kRY64nxD+FQME36ck9OLXE0VAu8wDomdbXw9JGTD4wg1IMygKGNiDKoc2FxGCYCMbJdyb5QpcVFjSwhJahDtnQpUjjJeIXolfzyoVtu2wAonf5FLUFi6nimGrgLYByNSlqm/OoPNHA+UVY+PZvoTUc35Djnx744UOMUgAzG+htQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnp0MWloWUdDcGpKTnVyN3I5TmpNa1l0aUZLMEhxem1UQTdIb2xiQmltd0Vu?=
 =?utf-8?B?cUhJMzVuU01Tcm1Xb1NCZHRoYlZjTXV4TVQ2TU9aQW14RjBVMndtZGg4aGlE?=
 =?utf-8?B?Skp5a1pZUStmUSsveUwxUHh5dGhPQTZ0OWRqRUpQeXRNU0dtcGlEWVlWOWxs?=
 =?utf-8?B?ZGRzdlBFeTlzU1J2Z3M3NzRibHluMFpnMUR4dzJOWHI1TzZ2NmI3TThvQlhx?=
 =?utf-8?B?NkcrdDNuQU5TSjZvWklTUXhRSU9LS3Rqd2h2c0Q4aCt1OGhkM1Rja2dMMTAr?=
 =?utf-8?B?U1RwSE1QUVgwL2U0V0FZakFTclhKWkhURDhhS2kzYzlvRDFlLzZIR3huWTVk?=
 =?utf-8?B?OEZ1eE5adnFpQ0MvbmJSaXd5ZzMvcnpoSTZJeVFETVhiTXI5YjJGV2EwdTNh?=
 =?utf-8?B?TjFrdFp5UlpDeDQ4elJzSS9YVUdBc1R5LzlzK3Fod3BqVFN6eEFSVFFtbWE5?=
 =?utf-8?B?UEoycWoyWlBjeGpEbVB0UEZ6bU8za3N3STlRSDFheDUrWGw4NExSWFFmN1Fv?=
 =?utf-8?B?bVMrUW1NSUlaR3gwSCtMVDBiT1BVazVsYWI5QUZLMW9wN3FzUWF2UDloRmNX?=
 =?utf-8?B?emQweTU3Mkp6ZHpubkNYdVU5K2VrR2hZYjEwNjE3UDY4bkxRODBRNHZYQVFk?=
 =?utf-8?B?MGJHWUp5ZHVHVkM2aEs5Zi9iaC9kZnNlcUJ5M0FpTFpHNHlIblQ4bG5WbDlh?=
 =?utf-8?B?UUhKRTJNcnM1UEcrd1NhUFY5UGVHSWZ2dytoZTNiNGdrUkwzOUdOTG1QUnBK?=
 =?utf-8?B?TlRxT3ZZRWhiWldyRW5HZFlkbFYvRm9xbS8vY29DeG9JbWVQdzdSNDNSV1po?=
 =?utf-8?B?Um1VQ0NXSXJVanVuZjhidHNqeEcvNW1ieUpkYUZ5SmZtdHgxT25KRHVzN2Jy?=
 =?utf-8?B?Y3hGYUdLZ2cxNmlKZjUveldaTWtUaEtRVUhOeUxUQ0htZ1BmdG1haFdhVWIv?=
 =?utf-8?B?OHQ3R1ZrV0h4NVgraGRPSUtpYmpJVVZ0MGhSc2ZuekZCUmhwUWQ2cWh0cHVp?=
 =?utf-8?B?ekk1ZmJocERQKzFrd3BCL2Vjek1NcUlPWXJTdDhmMEh6Z3NzVUtCU2gwZmtJ?=
 =?utf-8?B?UUIwWk9WekFqKzdyZUtpejV2ektrdFl2K3VVRkM3WDJMNmRQa201WkxUT09m?=
 =?utf-8?B?N080ZFRTQXk3Q24ySDk5ZlVEM2JQSmIzb1VTeDBKUnFOVDNxOHh3UnNZZHJs?=
 =?utf-8?B?S3VJVVFaU0NUSG85Z3ZUVjB3ZXVaeElwUTMzVE5ES08xdy9kemd1bStlWmsw?=
 =?utf-8?B?ais0NjBJeGxEVFBoTjVQdjdDbXVaT3NhclY2VTZMa3pJMkt4T3BVcGIycGg2?=
 =?utf-8?B?L2s1RkRsWlQ2cGxhWlhLZnNzU3o2bWFNWE1pS0ZKdlJ0ZTdWV0hNbjhjTjhj?=
 =?utf-8?B?ZmRRVUpxZjhlajhiYnFDemloVUg0NkVtZVNGdVg0TS8yc2NBc3hRNDNTLzcz?=
 =?utf-8?B?VVF5dDFBTlNYMXZIRk5pUlRjemtvb3I3VHExY3N0T2I2OUduWnUvVElUcHIr?=
 =?utf-8?B?Z3RzYTI5ak52SkZGOUhWWW5VUXdTTlhzK0ZLOTFRQ2RvYWZzYWlpNG1iQTNu?=
 =?utf-8?B?eDdvcTQ4WGExZWE5aGUzTis0TXNXeUdtNGFxR2dqZ0E4MEhSMkdSYnpaZGM5?=
 =?utf-8?B?ZEwwb2tCcmVreVFEcjdpSDlIalFUVXJNOUlQQVlSY0JMNy8zT3ovZ3hJRVQx?=
 =?utf-8?B?TVVlNEFVQkdkaTFRVWpJNHRHYkZWOXJDNDZFTmc3Y3NheDVxMC9ZdFdwK1k3?=
 =?utf-8?B?cmhrQVdmeE01dkQvU0RLSXZNUHV3d3ZIckFLUFJqWElRMDF3VmkyRzd6VG9x?=
 =?utf-8?B?M01iUEhlVWd3UGZIaFdSemVHR2JRY3EwSUc0clgzWm1ENEtrQ0EreWV2bVFY?=
 =?utf-8?B?NVdqQUxsK2IrUXJ1TitZR1M3MGJYUE8vaXczZHVYUnJvc0dkbDZHY1R6cnN6?=
 =?utf-8?B?WTRJRUR6NVpnQlpFVFBFSlRRcWxSYWhLZnM5aTFRUjNvaVNGUFQwRk9nbXB6?=
 =?utf-8?B?S3k1YTl6UEUwT015YXJkeUh6WmF2Y21HZmxXZU1GSmdzMElrOURRSUIybnIw?=
 =?utf-8?B?R1hiWXEvemkxQXRsNWxoa05pL1JiS0pQRVY1WVBacWNoQmdLUDhRcGYwWEhy?=
 =?utf-8?B?ckJmbDNIQ2RQYUZnaHcwVVlGUTBPdVBaTkk1eFhja05NTHdudm1lYVNEOU10?=
 =?utf-8?B?NFdUSGN5UVl1Q2p1UHVrYnlGRVFnR1JiMjk3a2oxYzl5MjVUcXJJVFI2UFF6?=
 =?utf-8?B?bUJjN2V2Nk84T0pYN1c3Tk4rWmlNT1JQUTI3WHlUZmg1UEtub0hJc1l2Y01Q?=
 =?utf-8?B?VUtGVEhoOGs0eTk2NUZLdXVPQUhrYUJjc1orZTdLZnNpTWpQNG1oQWI3WXl2?=
 =?utf-8?Q?iSLmUju/RWHdJbACJNewYRxLsCkAh3j1nnnXep6aUrqYk?=
x-ms-exchange-antispam-messagedata-1: rmSchQcQGFW8zk84lPR6yE/C9i6cF8oswRs=
Content-Type: text/plain; charset="utf-8"
Content-ID: <96578A28F6C4DF45A057F911652A71EE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f16960ba-b2f6-4824-d8a2-08de75c39a44
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 05:46:50.0048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RAFhOHhveWoZ20ySDoF1mkP+nYUxqt0nbHaBZBDKZuXzZX0/z7eBNy2pLKRhR+MQ2n1JqDMeNV1oFx3S43mQrrbPEUSpjylcwGIpuuZ0NWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6837
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A5D6A1B2F75
X-Rspamd-Action: no action

T24gRnJpLCAyMDI2LTAyLTI3IGF0IDA2OjM3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgRmViIDI2LCAyMDI2IGF0IDA2OjEwOjM0UE0gKzAyMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToNCj4gPiBPbiBNb24sIEZlYiAyMywgMjAyNiBhdCAwNzoxNDoyNVBNICswNTMw
LCBBbmtpdCBOYXV0aXlhbCB3cm90ZToNCj4gPiA+IEFkYXB0aXZlIFN5bmMgU0RQIChBUyBTRFAp
IGlzIGFsc28gdXNlZCBmb3IgUGFuZWwgUmVwbGF5IChQUikuDQo+ID4gPiBGb3IgUFIgd2l0aCBM
aW5rIE9OLCB0aGUgQVMgU0RQIHZlcnNpb24gVjEgaXMgdXNlZC4gV2hlbiB1c2luZw0KPiA+ID4g
QVMgU0RQIFZlcnNpb24gMSwgQVMgU0RQIHBheWxvYWQgYW5kIHBhcml0eSBieXRlcyBhcmUgYWxs
IHNldCB0bw0KPiA+ID4gemVyb2VzLg0KPiA+IA0KPiA+IEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxk
IG5lZWQgdG8gdHJhbnNtaXQgYW55IEFTIFNEUCBpbiBsaW5rIE9ODQo+ID4gbW9kZS4NCj4gDQo+
IEhtbSwgbWF5YmUgd2UgZG8uIFdoaWxlIHRoZSBEUCBzcGVjIGlzIGlzIGV4dHJlbWVseSBjb25m
dXNpbmcgaGVyZQ0KPiAobW9zdGx5IGp1c3QgdGFsa2luZyBhYm91dCB0aGUgQUxQTStBUyBTRFAg
Y29tYm8gYW5kIGlnbm9yaW5nIHRoZQ0KPiBsaW5rIE9OIGNhc2UpLCBJIHRoaW5rIHdoYXQgaXQg
bWlnaHQgYmUgaGludGluZyBhdCBpcyB0aGF0IHRoZSBzaW5rDQo+IHRlbGxzIHVzIHdoZXRoZXIg
aXQgbmVlZHMgdGhlIEFTIFNEUCwgdmlhDQo+IEFTWU5DX1ZJREVPX1RJTUlOR19OT1RfU1VQUE9S
VEVEX0lOX1BSLg0KDQpUaGlzIHNvdW5kcyByZWFzb25hYmxlLiBJdCBzZWVtcyBJIGhhdmUgYmVl
biByZWFkaW5nIG9ubHkgdGhlIG1lbnRpb24NCiJTb3VyY2UgZGV2aWNlIG1heSBjaG9vc2UgdG8g
ZGlzYWJsZSBBZGFwdGl2ZS1TeW5jIFNEUCB0cmFuc21pc3Npb24NCmR1cmluZyBhIFBSIEFjdGl2
ZSBzdGF0ZS4iIFRoZXJlIGlzIGFsc28gYSBub3RlIHNheWluZyBpbiBjYXNlIG9mIGVEUA0KdGhp
cyBzaG91bGQgYmUgMCBhbHdheXMuDQoNCk1heWJlIGluc3RlYWQgb2YganVzdCBjaGVja2luZyBQ
YW5lbCBSZXBsYXkgd2UgY291bGQgYWRkIGEgaGVscGVyDQpjaGVja2luZyB0aGlzIGJpdCBhbmQg
dXNlIHRoYXQgYXMgYSBlbmFibGVyIGZvciBBUyBTRFA/IFVubGVzcyB3ZSBhcmUNCmVuYWJsaW5n
IEFTIFNEUCBhbHdheXMgd2hlbiBzdXBwb3J0ZWQuDQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoN
Cj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IEJzcGVjOiA3NTYzOQ0KPiA+ID4gU2lnbmVkLW9mZi1i
eTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiA+ID4gLS0t
DQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDE3ICsr
KysrKysrKysrKysrKystDQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiBpbmRleCBkMDhkYjQ5Mzg2MzguLjU5NTJkYjYxOTdj
ZiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gPiBAQCAtMzExNSw3ICszMTE1LDggQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfbmVlZHNf
YXNfc2RwKHN0cnVjdA0KPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gwqAJCQkJwqAg
c3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKQ0KPiA+ID4gwqB7DQo+
ID4gPiDCoAlyZXR1cm4gY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSB8fA0KPiA+ID4gLQnCoMKgwqDC
oMKgwqAgY3J0Y19zdGF0ZS0+Y21yci5lbmFibGU7DQo+ID4gPiArCcKgwqDCoMKgwqDCoCBjcnRj
X3N0YXRlLT5jbXJyLmVuYWJsZSB8fA0KPiA+ID4gKwnCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+
aGFzX3BhbmVsX3JlcGxheTsNCj4gPiA+IMKgfQ0KPiA+ID4gwqANCj4gPiA+IMKgc3RhdGljIHZv
aWQgaW50ZWxfZHBfY29tcHV0ZV9hc19zZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4g
PiA+IEBAIC0zMTM3LDYgKzMxMzgsMTYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfY29tcHV0ZV9h
c19zZHAoc3RydWN0DQo+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiDCoAlhc19zZHAt
Pmxlbmd0aCA9IDB4OTsNCj4gPiA+IMKgCWFzX3NkcC0+ZHVyYXRpb25faW5jcl9tcyA9IDA7DQo+
ID4gPiDCoAlhc19zZHAtPnZlcnNpb24gPSAweDI7DQo+ID4gPiArDQo+ID4gPiArCWlmIChjcnRj
X3N0YXRlLT52cnIuZW5hYmxlKQ0KPiA+ID4gKwkJYXNfc2RwLT52ZXJzaW9uID0gMHgyOw0KPiA+
IA0KPiA+IEkgdGhpbmsgd2UgcmF0aGVyIG5lZWQgc29tZSB2ZXJzaW9ucyBjaGVja3Mgb3Igc29t
ZXRoaW5nIHRvDQo+ID4gbWFrZSBzdXJlIHRoZSBkZXZpY2UgYWN0dWFsbHkgc3VwcG9ydHMgdjIu
IFZSUiBpdHNlbGYgc2hvdWxkbid0DQo+ID4gbmVlZCB2MiBzaW5jZSB0aGUgdjEgd2FzIG9yaWdp
bmFsbHkgYWRkZWQgZXhhY3RseSBmb3IgVlJSK1BDT04NCj4gPiB1c2UgY2FzZXMuIFBSK0FMUE0g
ZGVmaW5pdGVseSBkb2VzIG5lZWQgdjIsIGJ1dCBub3Qgc3VyZSBhbnl0aGluZw0KPiA+IGVsc2Ug
YWN0dWFsbHkgbmVlZHMgaXQuDQo+ID4gDQo+ID4gPiArCWVsc2UNCj4gPiA+ICsJCWFzX3NkcC0+
dmVyc2lvbiA9IDB4MTsNCj4gPiA+ICsNCj4gPiA+ICsJLyogTm8gcGF5bG9hZCBkYXRhIGJ5dGVz
IGZvciBWZXJzaW9uIDEgKi8NCj4gPiA+ICsJaWYgKGFzX3NkcC0+dmVyc2lvbiA9PSAweDEpDQo+
ID4gPiArCQlyZXR1cm47DQo+ID4gPiArDQo+ID4gPiDCoAlhc19zZHAtPnZ0b3RhbCA9IGludGVs
X3Zycl92bWluX3Z0b3RhbChjcnRjX3N0YXRlKTsNCj4gPiA+IMKgDQo+ID4gPiDCoAlpZiAoY3J0
Y19zdGF0ZS0+Y21yci5lbmFibGUpIHsNCj4gPiA+IEBAIC01MDA1LDYgKzUwMTYsMTAgQEAgc3Rh
dGljIHNzaXplX3QgaW50ZWxfZHBfYXNfc2RwX3BhY2soY29uc3QNCj4gPiA+IHN0cnVjdCBkcm1f
ZHBfYXNfc2RwICphc19zZHAsDQo+ID4gPiDCoAlzZHAtPnNkcF9oZWFkZXIuSEIyID0gYXNfc2Rw
LT52ZXJzaW9uOw0KPiA+ID4gwqAJc2RwLT5zZHBfaGVhZGVyLkhCMyA9IGFzX3NkcC0+bGVuZ3Ro
Ow0KPiA+ID4gwqANCj4gPiA+ICsJLyogTm8gUGF5bG9hZCBEYXRhIGJ5dGVzIGZvciBWZXJzaW9u
IDEgKi8NCj4gPiA+ICsJaWYgKGFzX3NkcC0+dmVyc2lvbiA9PSAweDEpDQo+ID4gPiArCQlyZXR1
cm4gbGVuZ3RoOw0KPiA+ID4gKw0KPiA+ID4gwqAJLyogRmlsbCBBUyAoQWRhcHRpdmUgU3luYykg
U0RQIFBheWxvYWQgKi8NCj4gPiA+IMKgCXNkcC0+ZGJbMF0gPSBhc19zZHAtPm1vZGU7DQo+ID4g
PiDCoAlzZHAtPmRiWzFdID0gYXNfc2RwLT52dG90YWwgJiAweEZGOw0KPiA+ID4gLS0gDQo+ID4g
PiAyLjQ1LjINCj4gPiANCj4gPiAtLSANCj4gPiBWaWxsZSBTeXJqw6Rsw6QNCj4gPiBJbnRlbA0K
PiANCg0K
