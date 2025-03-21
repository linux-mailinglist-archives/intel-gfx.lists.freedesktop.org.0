Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA339A6B7E5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 10:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C8510E768;
	Fri, 21 Mar 2025 09:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hvw/mVl2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA12A10E767;
 Fri, 21 Mar 2025 09:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742550291; x=1774086291;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z5feZNzuaEli3MXnKqWC0SIkDmBv6+pIhl974lVko60=;
 b=Hvw/mVl28Q+iBN9uSL+tqhEmS3cuXZBgIJMMXDQvulJvOwQ9IRfMcJG+
 m4rPPurR8LLtOeFpbMHjuhXSSEZf+FqYB29XUPNZQ+JWfoBglA1MKSXLO
 2NlyAGtapkwP23aM+E26+Q+F+TvU9x1+fyhEb+BBf6vp/TDODKpZEcvY6
 iRcqaI67C9aGqQuMW8YjL50/Ssxy1fBcgmglOTUMInMS07M0FF8NHCcb1
 uFyqWf6QQRHMW1xiK8nLj2nmso7R/Ao9s2GXIDcoaTngdRWHjidlavZXN
 QRy6twuXqKBznPcotDrvGsT5aqMF3WskYJlzfbY4XQSNRwcIBoJLyJxbr A==;
X-CSE-ConnectionGUID: tKbDa56lRd+UehliD9sBfg==
X-CSE-MsgGUID: 26Nf7tLvRD2McxDEszrlIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="55191584"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="55191584"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:44:50 -0700
X-CSE-ConnectionGUID: AMubVGDdTv2Zkyxk81I17A==
X-CSE-MsgGUID: U58Zr0YDSXq+rthHc/Wh5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123339864"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:44:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Mar 2025 02:44:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Mar 2025 02:44:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 02:44:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iMLY5JikXxlBBYYPdpVs1aYQH4koZ/QPDrgxrHA9bB8FaquFLFe50aKk487qN91K1ZhRZWpai/TJM7wKnlFYNKJ+x3qX+r2noUG6/LOhuN+rqvYpYD9nxJrfzSuxW/0+FyIiB+hDa9GvHDP8FHiuMzGYgZ1gbe34q2TGdhVqzM6/iNUrQRiXuCoJKog3wxH7T3cjXWuZbVZ1sK9+xBTZlFH5qrn1uE8VQ4IV3I2h6qpx+uhRo3QQ9RGiZGRr/jE9Ob7jlgWWIXjXAN/cRMQVfmNYj9g0HV80Jhh+DRt6bXsZOF97I5lgBR/J7IBDfxGIlOOm+ClR1GljD/1n6ILeQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z5feZNzuaEli3MXnKqWC0SIkDmBv6+pIhl974lVko60=;
 b=pxHORWvSIjjRaLeBVpzb7z1uciWw0cEeXLonCvx1AXmbA/85h3co8AxnRSonFKz6mGZzrCRLobuwtk8+ophabgrIU+usZiFA2RIuo8pNWAZ8khfe1EO8bQCbbTJbrqNJYW4769Qv/WL2XG0ngAZ8EXXG2o8WjWMcKC8aqdpdV0I7eFtoMH30133xoCutsFlz8j0T5Fl9Azc1fIKGkgkdGi3hzM5AQY+bLDUx0thaCvUtxIzfVDWDHgzHZhyxorobi2sDspf3KCQ4rJUPvr9XGCHuK3DPA9k1iff1Tn4Wiu4Sw67MS0FlSaWoSHtA+/FY1xEEyK9w3tc58ZdzzI2M9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DS0PR11MB8208.namprd11.prod.outlook.com (2603:10b6:8:165::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Fri, 21 Mar
 2025 09:44:20 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%5]) with mapi id 15.20.8534.034; Fri, 21 Mar 2025
 09:44:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Topic: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Index: AQHblK1u8aLwISZHqk6cwQxE7Mey+bN9YCuw
Date: Fri, 21 Mar 2025 09:44:20 +0000
Message-ID: <BL1PR11MB5979ECA217C60944121BF197F9DB2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250314065015.879143-1-jouni.hogander@intel.com>
In-Reply-To: <20250314065015.879143-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DS0PR11MB8208:EE_
x-ms-office365-filtering-correlation-id: 93d661fb-f81f-4625-fbac-08dd685cf4aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Y0V1YXZRY3lJUjhKYVJwSG1zOE03Tk9vSHBQRm9xMmx0dE5YUkF1MjFiSkRr?=
 =?utf-8?B?bEhKVWZuUndBa3kzdSs0dHpvTThvK292OVVMUWZYZm9KSkVLQnlkS1AzVWJL?=
 =?utf-8?B?NjVNTzN2TnRVTlVwSEYzUnliUFpWZEdwTy9LRkV2OGtZOFNyUXZabk5pdlpr?=
 =?utf-8?B?WC8vRzlpZnNZT3lLRmNkL3Z1UDEwaXlaS0dmY3p3TU1xWmkyZXlDck8rZUEv?=
 =?utf-8?B?ZGZPYmJpdHdIWXRaZXZScm5XV043cjRHK3FUeUQ4cXl0Tk9lb3pPS3hETkh4?=
 =?utf-8?B?VU5PK3htQTljU1NvVUZEMDJkOUJBRUlzdzVDTGd2cEVoS2lmbFpZOUhiN3oz?=
 =?utf-8?B?ays4bHYveEZvVlJST1B3cytRanYyZnIrK2FqMWxjVDBCWmFZaHQ0ODl6d1NZ?=
 =?utf-8?B?eEpHZTJlcDMvVEVRYWxOVzFiWFFDSlBkR3lXRTRKZ3crOWlTMndWd2ZyMUlP?=
 =?utf-8?B?b0UwZzRuQTE4S05sMExtbmxLc3VmOS9nYlhlaWo5RlFJYXgvZVVjSzRncWlL?=
 =?utf-8?B?MHNMYW15L2R6aXhjbDhBTXE4UU1yU2ZyNVQzVzgwV0UwbW11RGRYb1BxZEVp?=
 =?utf-8?B?d2QxcUw5WElrUTNVNEJrWi91REYwYnl2Y3hnYjVRZ1FFUGhOazdqTzZMaG5R?=
 =?utf-8?B?T2FXbUQzaGFsZW9nRDQ0RFMwNTVYTUErbzBqdFplRzExUDFRNWZCVm4raGN2?=
 =?utf-8?B?bnpvbnVyM2hZUGNZbjRXWmpYUnZvclNaK0RObGVwb3hsYndka256MjQyQTBY?=
 =?utf-8?B?S0dHMnNsZEtQejJzdXlqWEZYWERRQnI0WXpDNy83aklmRVRFakVkWnVYU21V?=
 =?utf-8?B?ZU0xempkTkdIbG41RVcyMGZ1T2xaOFl5Sk9GOHFDUElUWFkzRmx4cU9RSUY4?=
 =?utf-8?B?MWsrMnFmN2dBTUNEcmsyeDJWaU9LRlhDMzZYYzZNTTgzWlFldklDT3pRM0ha?=
 =?utf-8?B?TEZOYmtLOXNTOWNmQ2lINzBlL2cxRzdKVGVQTDh0WUFIZTd1Z2NHSHA4NSto?=
 =?utf-8?B?Z1pyZmJZTEdINFZpUU50MVU4emFHTVVXQzN5MkRJKzI4eTNKUENDMy9ldndv?=
 =?utf-8?B?bCtoMThIM1lERUM0QWREUzRVblJlcDFkazB0VXhLeVNzNlB5QTVwQXh0L2ZV?=
 =?utf-8?B?aHk0SDg1b1FTMTdBdXpSWnM2VVR2K0oxemxIdjEwWmtrRm9qRUtWa0V2TXFR?=
 =?utf-8?B?QUZoZHlTdnZSSm9WTWlqWGtRRjdreGU5eDhWUnJZQkpuSWgvcWRLUzZacVNU?=
 =?utf-8?B?U1J5K1FIQklQUmVGeUFPOEpsaW5CdEZsLzJEZWlQdDJ4ZVFSUWFPS0t4N3hm?=
 =?utf-8?B?c1dLckJqcGg4dnIvSThJdUpLQWVndUJOTVFEOVZtWDBHOWRINWFBbmx0N1lN?=
 =?utf-8?B?MngyV3lyYlpqdG5jNUVxQUo3QnVpMmtTS1BGRldLbHNpSXc5MFBsdzQvY2l4?=
 =?utf-8?B?M1ByWU9URDl0WlBLaVhFdWN3cjRKN210enF6QVNFLzVaK1V0WVBGemphM3Uw?=
 =?utf-8?B?WjFncytBd21zRERFUWlBTWNQbyszVEdjekFET3liSWx0d3I3TWtmblk1UUlo?=
 =?utf-8?B?Nm43Y3RuL0U0NGR6dG50amxDa1oxOWZROGl3aFUzb3o5bWRtbzhONzNyQjRs?=
 =?utf-8?B?WStUem5kZTlxaExnRjBhNEIxV29iZWpTNnk4cHhJbVowMXUwTE1oQk5PLzI4?=
 =?utf-8?B?bHJLSHZmTngzQWhqUEdiZWR4TUw4Vm5naTFzY0dDOWVRKzNsejZIUmM2NlRt?=
 =?utf-8?B?MnpGT2xoVHdWQUtQZUpNbk5nZjJHNk8ra3QrL0tvUmZwSUUvYXNicnhOaU01?=
 =?utf-8?B?YWhhQXQzYzFESC9rRG9ydVh3K2U5elpVMjFFR0FnSkVrd3cvM1VoTC9kUG0v?=
 =?utf-8?B?YnFEbVNtaExveGJlenBILzkwUS9FOFpISjdJOWl6U252bGIwZjgzR2xya0lS?=
 =?utf-8?Q?iDgtY/mArjANuBq/HX2C0cVOeJFiQi8F?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDg2SW5Nc0pUTzUrdVdXS3BsMVRKMFJlYWhiRCtGcmtOZms5YUZTaUp5RXZC?=
 =?utf-8?B?SEZhakY0QXI0NnVoOGZSQXI0aEFiZmE1UFVqL2R5aDdnTHBKTVhjeXMzMHNL?=
 =?utf-8?B?MlNBc3BlNFJlL1ZhOGJJM1drMWVsVmlvcE5vR2VVZXBDc3dWeFROSkx3cXN4?=
 =?utf-8?B?R3Z6ck1qTlpMY2Q2M0REM1AxNGlsdStkMzA5alB4L1owQUJkc0xDUTRpMEth?=
 =?utf-8?B?VjBMNWtMYzEyVm1ERHU5TWhqamdJRm5kYnBSZVFCTnJWb3ViT3l4VHdaVlJh?=
 =?utf-8?B?V0RuL04rVzRlMW1KS2xTUDVSc3lKL25uVHRNY3BkVmJSV25EMS9JTzVJbENq?=
 =?utf-8?B?Y3FJdm0rTXdMaytvZ0tjTDhhRzlJTzl3MXJCRDcrYy9QSmxlTVMrNE5TQWdH?=
 =?utf-8?B?bm5vTHExRGE3NnpuYyszWlVsa2srMG1KbUJHVVl2L2JVbGI1R3diMkxsRWYx?=
 =?utf-8?B?QnRhN2xkazR3OHMyQlg3YVZLOFZPcjk4Nyt0NjNqajQ5ZzN1OVRrSUJoZTJE?=
 =?utf-8?B?S1ZiM0F1WEFWb2pMeG1jeWdYeFZwamlzcE9yUEZ2WVpYT1V4Sy9OdUwrZ3BW?=
 =?utf-8?B?Y2tQTVZGemxwMnJETlp5TUFZaTZBaFgzLzZONnBCbEpjV2dnRjArNWFaK2pN?=
 =?utf-8?B?bkZTQVlQcVdIczg0TEZiZ2lRZDFWNXIxREszQkR1SkJLeWNDT01sdHpxdDNz?=
 =?utf-8?B?TlZuaVlXVElZQXZWYmxVZ0djcHhVOUNrQnpwdGM2WGZJY08wUkd5VWRHRmRS?=
 =?utf-8?B?dVRaSS93V3BmNEVkY25IeFo2UGRnaFpNZng3d2JWZC82UHpwekJISlBXUmVw?=
 =?utf-8?B?YVdCbHdvOEtRT0dZa1BLZS9aSDdQL3JmYkZtVnlqMGRrbHdhWFNrc2xUc0xy?=
 =?utf-8?B?a0ZvUTYyZXVpZHRlMjdBTXBKdmJjN1RVWkg0RXBNeW01S09XTGVxMlp6ZzRi?=
 =?utf-8?B?WU42NzZWNkNGWmJPU1FuMW95NUJiOUhzc01wN2p4WFVFeWVuWENkYkhNR3VY?=
 =?utf-8?B?ZkhkUkNxNWZVeFp2bWt5TmEwZTQ4MHU3bU92c1NqQVc1dDdzRzVjb3pCVXF3?=
 =?utf-8?B?S01ycUZSZktlZXNtSGhkWUYwWXFKditEZVRpeU0xYk9yUnNiaGxIZENZeWE1?=
 =?utf-8?B?VzkxSWNQZVBkc29EV1VIcUNVNXpnZzRsV2oxbnRJMW1xczBFTzRrWGM4WDgv?=
 =?utf-8?B?MTUyQVJZQTdDM3N1dVFPamhpeU02K3dENFZzY1hnL29hSjhaYStrUmErdTNl?=
 =?utf-8?B?SWlrVnlaN3lHWnpRSE9qc3U1YUFYL3loRi9hNUFjb1ZjTHd4bmwrWFI2bzEz?=
 =?utf-8?B?RzhrbDFhUzlQUERGUDBsYzMxcWErbWtHc0IxbGFSOE1WdytIcmR3d285U0dk?=
 =?utf-8?B?aDRDbTZZWGx4WS8wWVpPdHRNaWYrYy9vMjJpYmRDQkJ0ZVA1M2dBY1VEM3Ri?=
 =?utf-8?B?ajNOVklsNnlQTGttVTVtQ1hIZytBblg2NEF1RDgwdnI3Y0ZoZHpnaFMvNURC?=
 =?utf-8?B?SUFPL2RQelYxODhpUDZreHhNU0pFVE9PMDZhaG4wdXhoRklaVGEwcWErTnFs?=
 =?utf-8?B?Yk0ycmtZMUN3Q0RwdmN3c0tYRTZRUDNzWVkzRXRiWjhNQzFReHBGSWlUdXpv?=
 =?utf-8?B?U2o4cHVKVHN3N2owcGNoNEFZeXZ2VC9veU53bStJSHVXZlV5WmFPSkhaZjZa?=
 =?utf-8?B?bWoycFFyVkwvZkdsQjRNY0orTzhJWGNRMW9ZZnlZMTR6d1V3d0NoS1lFWEJl?=
 =?utf-8?B?L01WREhrVDZqSVcvYVVkODFwaXZGOHVFM0hyT21GM2JrMmVnRHlYOGluYk9V?=
 =?utf-8?B?L2FMZ1B1aG5rNTRwV1NYaFBaMXhHNWVkYzJHN2N1THc1VDY5R1ZOa241eWds?=
 =?utf-8?B?TmppVDZLbXdVQnQ2NkpoRTErQndHdHAzY0N4MHNqNGt4OUp4VDVQa3cxc0p4?=
 =?utf-8?B?TnJSZklUMGwyTTFlNi9va3A3MStuVzU5ZC9RS0x5RGozRkYrOVNkSklWY1M1?=
 =?utf-8?B?TklzRjVLTEpmNGJWbVBtcCtBUGVSWVVBRUVPUHNHM1E0REkwaXhSeHFDZ1BQ?=
 =?utf-8?B?cjBpelAvSkxiNnU0NTJCK2xVVXk1Yk83QkFsVUtOUCtwYTd3T0hwLzRZNUJw?=
 =?utf-8?Q?KFp09rAGXtF8SdVd1GTe1ASY4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93d661fb-f81f-4625-fbac-08dd685cf4aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2025 09:44:20.7224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MbkHEMqOSyo7wpnRUUyoGIi7JGPzvwKT/T99vcivvlRb3lblsb12IXTcl0AeGBwnbcIOSshTDQO0rt0BofaAZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8208
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogRnJpZGF5LCBNYXJjaCAxNCwgMjAyNSAxMjoyMCBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9wc3I6IEFkZCBQU1IgcGF1c2UvcmVzdW1l
IHJlZmVyZW5jZSBjb3VudA0KPiANCj4gV2UgaGF2ZSBub3cgc2VlbiB0aGlzOg0KPiANCj4gPDQ+
IFsyMTIwLjQzNDE1M10gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dIGRybV9XQVJOX09OKHBzci0+
cGF1c2VkKQ0KPiA8ND4gWzIxMjAuNDM0MTk2XSBXQVJOSU5HOiBDUFU6IDMgUElEOiA0NDMwIGF0
DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM6MjIyNw0KPiBpbnRl
bF9wc3JfcGF1c2UrMHgxNmUvMHgxODAgW2k5MTVdDQo+IA0KPiBDb21tZW50IGZvciBkcm1fV0FS
Tl9PTihkaXNwbGF5LT5kcm0sIHBzci0+cGF1c2VkKSBpbg0KPiBpbnRlbF9wc3JfcGF1c2Ugc2F5
czoNCj4gDQo+ICJJZiB3ZSBldmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5lZWQgdG8gYWRkIHJlZmNv
dW50IHRvIHBhdXNlL3Jlc3VtZSINCj4gDQo+IFRoaXMgcGF0Y2ggaXMgaW1wbGVtZW50aW5nIFBT
UiBwYXVzZS9yZXN1bWUgcmVmY291bnQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMjYgKysrKysrKysrLS0tLS0tLS0t
LQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+IGluZGV4IDk5YTZmZDI5MDBiOWMuLjY1YzgwOGJiYTFjNmMgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+IEBAIC0xNjIwLDcgKzE2MjAsNyBAQCBzdHJ1Y3QgaW50ZWxfcHNyIHsNCj4gIAli
b29sIHNpbmtfc3VwcG9ydDsNCj4gIAlib29sIHNvdXJjZV9zdXBwb3J0Ow0KPiAgCWJvb2wgZW5h
YmxlZDsNCj4gLQlib29sIHBhdXNlZDsNCj4gKwlpbnQgcGF1c2VfY291bnRlcjsNCj4gIAllbnVt
IHBpcGUgcGlwZTsNCj4gIAllbnVtIHRyYW5zY29kZXIgdHJhbnNjb2RlcjsNCj4gIAlib29sIGFj
dGl2ZTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGlu
ZGV4IDRlOTM4YmFkODA4Y2MuLjRkNGVjZjc1NTViNjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjAyNCw3ICsyMDI0LDcgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCwNCj4gDQo+ICAJaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2UoaW50ZWxfZHAsIGNydGNfc3RhdGUp
Ow0KPiAgCWludGVsX2RwLT5wc3IuZW5hYmxlZCA9IHRydWU7DQo+IC0JaW50ZWxfZHAtPnBzci5w
YXVzZWQgPSBmYWxzZTsNCj4gKwlpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIgPSAwOw0KPiAN
Cj4gIAkvKg0KPiAgCSAqIExpbmtfb2sgaXMgc3RpY2t5IGFuZCBzZXQgaGVyZSBvbiBQU1IgZW5h
YmxlLiBXZSBjYW4gYXNzdW1lIGxpbmsNCj4gQEAgLTIyMTAsNyArMjIxMCw2IEBAIHZvaWQgaW50
ZWxfcHNyX2Rpc2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gICAqLw0KPiAgdm9p
ZCBpbnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gLQlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0K
PiAgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiANCj4gIAlpZiAo
IUNBTl9QU1IoaW50ZWxfZHApICYmICFDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkgQEAgLQ0K
PiAyMjIzLDEyICsyMjIyLDEwIEBAIHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0KPiAtCS8qIElmIHdlIGV2ZXIg
aGl0IHRoaXMsIHdlIHdpbGwgbmVlZCB0byBhZGQgcmVmY291bnQgdG8gcGF1c2UvcmVzdW1lDQo+
ICovDQo+IC0JZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBwc3ItPnBhdXNlZCk7DQo+IC0NCj4g
LQlpbnRlbF9wc3JfZXhpdChpbnRlbF9kcCk7DQo+IC0JaW50ZWxfcHNyX3dhaXRfZXhpdF9sb2Nr
ZWQoaW50ZWxfZHApOw0KPiAtCXBzci0+cGF1c2VkID0gdHJ1ZTsNCj4gKwlpZiAoaW50ZWxfZHAt
PnBzci5wYXVzZV9jb3VudGVyKysgPT0gMCkgew0KPiArCQlpbnRlbF9wc3JfZXhpdChpbnRlbF9k
cCk7DQo+ICsJCWludGVsX3Bzcl93YWl0X2V4aXRfbG9ja2VkKGludGVsX2RwKTsNCj4gKwl9DQo+
IA0KPiAgCW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gDQo+IEBAIC0yMjUxLDEzICsyMjQ4
LDE0IEBAIHZvaWQgaW50ZWxfcHNyX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiANCj4gIAltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiANCj4gLQlpZiAoIXBzci0+cGF1c2Vk
KQ0KPiAtCQlnb3RvIHVubG9jazsNCj4gKwlpZiAoIXBzci0+ZW5hYmxlZCkgew0KDQpBbnkgcmVh
c29uIG5vdCB0byBjaGVjayBpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIgaGVyZSwgbWF5YmUg
d2UgY2FuIGNoZWNrIGZvciAhcHNyLT5lbmFibGVkICYmIHBzci0+cGF1c2VfY291bnRlciA+IDAu
DQpPdGhlciBjaGFuZ2VzIGFyZSBMR1RNLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KDQo+ICsJCW11
dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4gDQo+IC0JcHNy
LT5wYXVzZWQgPSBmYWxzZTsNCj4gLQlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOw0KPiAr
CWlmICgtLWludGVsX2RwLT5wc3IucGF1c2VfY291bnRlciA9PSAwKQ0KPiArCQlpbnRlbF9wc3Jf
YWN0aXZhdGUoaW50ZWxfZHApOw0KPiANCj4gLXVubG9jazoNCj4gIAltdXRleF91bmxvY2soJnBz
ci0+bG9jayk7DQo+ICB9DQo+IA0KPiBAQCAtMzMyMiw3ICszMzIwLDcgQEAgdm9pZCBpbnRlbF9w
c3JfZmx1c2goc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICAJCSAqIHdlIGhhdmUg
dG8gZW5zdXJlIHRoYXQgdGhlIFBTUiBpcyBub3QgYWN0aXZhdGVkIHVudGlsDQo+ICAJCSAqIGlu
dGVsX3Bzcl9yZXN1bWUoKSBpcyBjYWxsZWQuDQo+ICAJCSAqLw0KPiAtCQlpZiAoaW50ZWxfZHAt
PnBzci5wYXVzZWQpDQo+ICsJCWlmIChpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIpDQo+ICAJ
CQlnb3RvIHVubG9jazsNCj4gDQo+ICAJCWlmIChvcmlnaW4gPT0gT1JJR0lOX0ZMSVAgfHwNCj4g
LS0NCj4gMi40My4wDQoNCg==
