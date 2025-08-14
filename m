Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66923B25C8D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 09:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2C710E063;
	Thu, 14 Aug 2025 07:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QwdBjhAj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56EA410E063;
 Thu, 14 Aug 2025 07:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755155066; x=1786691066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ATrtrVfBnCJfa0eo8crDsyFqrGKXbCCYtfYcQM1xrFM=;
 b=QwdBjhAjoXW5e+yjv8B61x/bhTHv7g6Y5NDZ5h3Kk0xRV7uVRd36HDwB
 lkdwHXSAmT/dDR/dEnq8Z4EtDbYKTy7s04fLcA8CsQJZwgiNzhpHSrvq1
 hgMCzBVyA7SXvusBXT4ckNfzMcABAVBbWyKhaeZ92cIASMZzxvJya5ZKG
 U4UzHRhUDl60gN85iVCtB6i7Q7aG52tfBtc1hZ8369XjClZaYrCow7/2h
 1lleej/UyLY2ibshtP7fP2lpNoptmlDd5G1NjZIYRg+jSocnvCc/HwueT
 wsMo97KIIc1QUhCdM3t2WOIKFKgM4uSa+UtAeKdmtq+m673jq8yBxaHhF g==;
X-CSE-ConnectionGUID: ub09350VRISVT4gWdzVmQQ==
X-CSE-MsgGUID: EUAvDyjcQWS00/38de3RlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="68839832"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="68839832"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:04:25 -0700
X-CSE-ConnectionGUID: NWogFVKfQFaYwFW7JZ/XRQ==
X-CSE-MsgGUID: dlGsxjqVTOGDz7/c4I3/Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="165866157"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:04:24 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:04:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 14 Aug 2025 00:04:24 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.81)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:04:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qgy0/Ja1lKC4io5/rf6V4NzCpNfT6oONIvr/d6zNONpM6eBczeExPXQhStASVMRAK5YLDB9h6BBry8caOCk31p13IPYn3NTzZQI1TAxtvc2kij7V3UC/6NvSf4TvqzcU7KoAoOLLuz2oys9Korzw3D/Pb4nj1Fjxl8ic0ySXp99VtNFo9+23GoRTlD6JcxCQyF7l+iU+T2clY3+2AKqUlsW9Zg/+CwB0K1d9mnnaA5Eiur2o3vqBVe1YwZGqpuLMtwmEce86NwINwf1kwlXxmBha03podmOEc3jIEKlPiOz9DseqkOLQ//HVaUulVf6LV5tKHmQU7JbqPNXuFUspAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ATrtrVfBnCJfa0eo8crDsyFqrGKXbCCYtfYcQM1xrFM=;
 b=pm6F3w5ZhP0abtPvfT2ppMPmBP+OfrdwXhCHPqdCwrRdGdrw9a+alYt7A4GrRBu7sq8FOH6z9zLCpMpDVYwubHGcKZpHpL89OButLRvWR+0EqyAKQx72vfBPdyp5mvLcbkIQ04eNflVw35Ag9bxrTWsxMfE12Af+ADZ6GTtxetbAgqts0WDjoR5o70e3pPC9vFS1JxQCv8nLJFQm8zjUgbAwMsi0lbYraMVghaUj2pc3SP9wEOjCUaIyJHW90tbrocJp7csd7zJJpZM3qV5wy2hfCiUtmUJZiM3AW71XSUTW2+nxsigQHWoTMeDwsoA5/1N9pfRDdgYqYaeDAoyVxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7853.namprd11.prod.outlook.com (2603:10b6:208:3f7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.15; Thu, 14 Aug 2025 07:04:21 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9031.014; Thu, 14 Aug 2025
 07:04:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Jason@zx2c4.com"
 <Jason@zx2c4.com>
Subject: Re: [PATCH] drm/i915: silence rpm wakeref asserts on
 GEN11_GU_MISC_IIR access
Thread-Topic: [PATCH] drm/i915: silence rpm wakeref asserts on
 GEN11_GU_MISC_IIR access
Thread-Index: AQHcBgAZbATJq+UJpku49BPLYyA5PbRhx08A
Date: Thu, 14 Aug 2025 07:04:21 +0000
Message-ID: <fbb92a6aad7452188396136faced103614519e98.camel@intel.com>
References: <20250805115656.832235-1-jani.nikula@intel.com>
In-Reply-To: <20250805115656.832235-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7853:EE_
x-ms-office365-filtering-correlation-id: e2e8c0ff-a035-4b5a-77ac-08dddb00cb5e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Z3o5OUpwVzROZy9IVGJLWU95RklHZlRNVFoxQnNTR1JrcG9oZUp5bk1CNkcy?=
 =?utf-8?B?ZmtMSzdpYUVDcGlhbHpQOURjWml3U25QSmhKQkZYUWV2MysxcjR5L1QwQldK?=
 =?utf-8?B?djg5WTlLK3BuMHNHK3Jhd3UwZ2ZzR1pPaDREdTBNckFySENrT05PM011ckN4?=
 =?utf-8?B?OURicDZQRHExMHVMeUV2R2RTa3cwNzR3REIvN3EyUiswVEZvRTJPbUdGVjlL?=
 =?utf-8?B?VmlXV2s3dHdXTWJwc3NEU3VjMERiMk00SUtja3l3bmtJbzl2a2NYNXhFN0x3?=
 =?utf-8?B?U3FXZG1ubUE5dDFud0dCdys3SXM5cHUwUDJuYTRNVkNPek9pSXl3bnJkVzJj?=
 =?utf-8?B?ZjhNZDJZQlV4d3Y5QkpWdCs1RjBzRmhmYXQ0KzFEbXZTVzE0a1NIMGJsMHZq?=
 =?utf-8?B?dWhGTjZmSXhRTjBQMG1BbVBGT3V4NVM3UXNYL1g4SjNaS0xKSjJXb3ExNEYx?=
 =?utf-8?B?R2NWeWdjcWdTM0p6UlMwODU1TGd1S0dDL3NuNHVUQW45WVlZVlUxclZsSFZR?=
 =?utf-8?B?bzRDdDFyLytzZ2pLTEQ1YVh1aWZzSS9lSHhzOXA3ZTI5bHd2Y1VyTkJmY21V?=
 =?utf-8?B?MXJwZk9NMVdKbHVFQmNHVnpXdWhnNDFqS0k2WEgwTndGbkFDUHJGS0pBNi9M?=
 =?utf-8?B?cm90QjVPK1hmYW85aHRvS3UwbjZLS3BxdFJ5enZFTGcyaWdHMWp6ZWk3Y2Mz?=
 =?utf-8?B?RlI2OTZIYlY2Z0xBRW9kR3pIMDA5WG9kTGVJSDV0QUtTaUxRa1YyKzRCWERz?=
 =?utf-8?B?QlppZEo2Rll5TCtTa1JpK1R2bUN0dVRJL1VQU1VaRnJ1azlPazV2MmExeVdy?=
 =?utf-8?B?SWhGMWxGVkNqNEIxVERiYjZFaWhMRmZzZXlaUWI5SG0wMVFFcm1Cei9MazhE?=
 =?utf-8?B?c1pTSmxtaTBoZCszaUdkUisvRm1ueW4wTkx5MTFtNmVXNk5Iei85WmxiVWF4?=
 =?utf-8?B?WDZLaVZnQy81T1dNOWdiZEJETEExMzRXajJhQ1RORkdDZkdjZW1WUk94Qjlj?=
 =?utf-8?B?YkpkUUI2M1gySyt6T0NmS0ErV0d2SDgyWWlYeS9ZNmdnSnVDeEIzbXc5WmJM?=
 =?utf-8?B?RVEzUUZrOVZlYlpmVUphVTcyZi9rZlpocUE3QW9NSnNZdXVYWEpGOHlHVXYr?=
 =?utf-8?B?NzlRek1YSUtrSVh1MXZacmo4bE1GQnNFRDFnSWk2aExZcGJLZ3dIQlFCWDVJ?=
 =?utf-8?B?VXJ5cThFeFVqUTF0bmkzc0pJMnBwaXRNQXVlZUdUeWxVWHZwVktTMGdSZDkw?=
 =?utf-8?B?dmk1U3hhRTU0UzBpVGQxeWpIMWxVTHM5b3E1b1J1K21PTnZ6cjV0WVNNTDBP?=
 =?utf-8?B?K2NMMlY3KzJqNkNhL2pLaHA1bk5PLzZSbWNmK0NJdC9LbXluOTVKMCtxd1RZ?=
 =?utf-8?B?MWxzbkRLMEgzdHNjZmxlaC9OeGZSRDVrcGJVQjVLSGF3R2RUQi94MjFtWlVC?=
 =?utf-8?B?cFh1Vjl5dXpnTXRwL2hzOVZSTzRJc0F0d0tDVFB6c1NaNXMvOEJndDJSZHhJ?=
 =?utf-8?B?ck1LM0lENldBWFRtMGhhck5tWFBISldRTTVlMlhpVFltTkwyL1hHT09RZXlj?=
 =?utf-8?B?NDhXbjF0QWtBVVhWMndTSXBsMUZ3VGkvUnpxbndOV2RMSWFnWkRJR1pmdy8z?=
 =?utf-8?B?NW9EOFVQMEdja1MrVnR6VG9oSUlmT2xYY3VkOGsySmFnQmQ1YW5mYTRRbGlh?=
 =?utf-8?B?ZUZyMW5EdWYvdUxEKy92NGpUSEVBb0xtNC9xWDdiYXZYRjg4UmppSkNZZkVC?=
 =?utf-8?B?eVlNeVQzZDlsYjZSblNiamhIMTVHcWk5bkFkNVI4YkpCRnBRRFMwN0tFS2N2?=
 =?utf-8?B?U3hFT1ROM21CakZzZFp2TkFWL2dHK3R5ZzJHNGt3NnFwR0FySzQxV1llOEtJ?=
 =?utf-8?B?UzhZVUQ1MDVPYy9xekg5dzhTbjVMZUtTL20wZHUvaUs0VEQ0Y2tubXNnZklp?=
 =?utf-8?B?OEtlWmN5VTlWWUZ4ODZkTTJWc3dtQlBoSysxZ3kzeHU1bENxRFAwRmxJRmly?=
 =?utf-8?Q?QBFDU9rq0ylThg+dVU8tztZpFRw244=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ak0xYXErZHpBS1pYUDdIRVgyMm1MenVNRXl5YjZGNDlJQVovQTE3aUNtc2Vo?=
 =?utf-8?B?UnNKeFQzMWJ2VldEV2NicVZhOGo3c2pYaUV4blExS0g5NVQ4Ui9ZazIzcEUy?=
 =?utf-8?B?YUlhSWR5SjRJYWEyQVo2M0c5amxESlFkeStCOWRhZXhxWlJpN1ozWEk1bmRT?=
 =?utf-8?B?UzJPeE1FeTFvOFZvSWxoYWxwV0xENTI1MTJVUEt1YXF2UzZRWTNmbkZTZDIv?=
 =?utf-8?B?NEpvMmVlZm80cWZ4bFFYN3VZVjlHcXN4d0NMVTlvY3F4bGJjdmJUdklOSXly?=
 =?utf-8?B?S2dhbHN0dTJtaTRmM29CYTd4MlBUNEVDNGhjcU5rUnkxSDg2TXlyNmZQdWkw?=
 =?utf-8?B?cEptcWZlUy9rSmVQem9GVTdQWjZaNE8rOGFvV3pzM0NqQndmYTcxeVhtRWtQ?=
 =?utf-8?B?YkxZd1Q2WjZKNi9IbG05QVVVR055NGQ4SW43MVdqK0RZZGRmZSt1WlJrVXdp?=
 =?utf-8?B?Qmxrc3hRMTl4QWJaZDJZZ3RRS2RBaHlrL3FCdWk1dEN6bUtNaks4YXk2akJH?=
 =?utf-8?B?eGdyOHc5WGpMcm5UVWFlY1hHeHhxYkJoWjhWa24veVkzSmlYRmlzWEFyN3Y3?=
 =?utf-8?B?MCtCSjlxSzF5bUhUY1dSOXJ1Qnd0aG80SFFPN3N5WlRpcDhDelRFeUJab2tQ?=
 =?utf-8?B?eEZUdjZDU0s3Vzg3NTVGeXMwZlFaeWtkOUZBSkU0VXhXZW5EWXNnS3B3R0gv?=
 =?utf-8?B?bExLYnZoNnZJK3dYWmRGdDhtTmwzdTNWb1IzUVVNMUVtaFdYaksvYkw3bHVQ?=
 =?utf-8?B?UnRvWkc1SWRjU0RKQy92WlVmSDBHdFZ1OURGR2RBbmo1TWU2eWpnZXNVbUxt?=
 =?utf-8?B?ajNlM0NXekk4d1h3TG1VSzEwaGtZZXhxdkRHRDBCWk0vMEdMZlNFRW9aaDJh?=
 =?utf-8?B?REJkL2VBU0ZhSkFrR2NmWWpaN2tTSVliRVZvdU41SUtQQU1oMkdvS2pvYlJQ?=
 =?utf-8?B?UzNoNHhldkNPS0tNZHRsSVYzTlNMN2FDbVhDMUk1dXNyQWQxbU5EU3YwNFRo?=
 =?utf-8?B?c0F0Q3lTeHUvU1NjQU1zYlFxb1RTeE41U3krS0VxV1NDMjFqZ2dhVXdxQ3BX?=
 =?utf-8?B?aFFud1FpMUtjUE9KQW5BQW1sOUlFMDVIWEhjamZxKzJGZXMySlFiWDlSdENs?=
 =?utf-8?B?WEpLRU5QamZWd05tWDlWNDdzQUlmQVVzRjg3R205c2d0cXU4amIrVWhxazJG?=
 =?utf-8?B?U2RmYmtxa2lVYko1NUlmQU0zZzVXWUx0OW1hVkNpOWxvM0d2WVJabFhWditi?=
 =?utf-8?B?RWRRTW8xdUFDUGg3Nm4zNTFSUldMdTVDWGpNL2pINDBEakhNTEwrQS9mU0pz?=
 =?utf-8?B?SFdLRDhBZC9OaFBwNW1IK0lJY0Z5NFhxbEk0Qk01dDhqTHJTdXNRc0pCRWdo?=
 =?utf-8?B?OXVrSmFyNWE1NERiU1Z2MW9IRTJ5UUl1WnRlWFQ0Mml0dGRrMFA3cWdLYzRp?=
 =?utf-8?B?QTNjN2NucndJUEd1bGZzQXNKRWx6TitRWHZ5MGZrc2ZEbXo1UUUxM0toNkxD?=
 =?utf-8?B?TzJXRWxFMGo4Zm5jQXNRbWF1dXlMSWd0VC9NQktHM0JxdEZaNW5ENWlVRmVG?=
 =?utf-8?B?U3pHQ202dWw4NjNnUFZvelNpdU5oT2dCVDRCRGEvYkxTaWswelI4YXRTUlgy?=
 =?utf-8?B?SGdlcjlEdFFFbWtrcXJ2clJGa2JJWEJuM1gyR09pOTVBdEdZc2kyMVQ0alUr?=
 =?utf-8?B?N2dLQmFGUTlvODhsSU8wUEdGSm1vUlQ2ak0xcEdrLzFrL1lOTkFKSlc5Rm9D?=
 =?utf-8?B?RzdWMXFWSVBadWVqdy9qMDY4bjVmcGMyZ1lQUGpXaUNtbzd3aExrcDIybnFC?=
 =?utf-8?B?aDh1STR2V3kyY1BRU0hYUEVjQUlhME9yWUpJZ2o3RlFCNkhxTVhXVGcyYTJJ?=
 =?utf-8?B?OHpwSlBDcy9JOU5lNjJvQUMxUEZTVlc0V1N2QSs3a2Q1Z1NPQnlxZjFLYlY2?=
 =?utf-8?B?TDN4VXZYN2paK0JXVFBXMkpUQW02QTZjTUErK3REYVFVcTFldXZCeExlVkgr?=
 =?utf-8?B?NmxZVkpNN0x1UGJLeTJxWUx1Uk0xR3pLb0UxR1E0NGNvbjc2ZnhEblNvV0dC?=
 =?utf-8?B?ZWdWV09CcWlhQUh3UXhDZFM3WHpPNXRycXZ3N2lsUXNiWjlWV3NxYTBwVFhz?=
 =?utf-8?B?VTM5ekpNMm1LOEpkbVlTMVl1YlhTSTUwOEs2Q2ZhbUV5V05DTXhJOW4yaTRr?=
 =?utf-8?B?VmNuTmtCN1JnTEdRaU52dDViV2t2QkhKQVZ5bzlXdU5kZ0RmYzNGR24zRVdN?=
 =?utf-8?B?SlRJWk5TcVh4Vmk1c1MwVnFDbmhBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7156285863E3FD4D8DE743A2ADAA9030@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2e8c0ff-a035-4b5a-77ac-08dddb00cb5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2025 07:04:21.4462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQp2Ha4Ev3iYxUFJfO4wcBFRqrfgfd8dFc7oxbVKDYx3Bf0OOZYZ7n1sIxgWojt7Zy30sMtB0MN4c0H5n8y3CjYD174z3k1IKkoU8NHA0eM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7853
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

T24gVHVlLCAyMDI1LTA4LTA1IGF0IDE0OjU2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
Q29tbWl0IDhkOTkwOGU4ZmU5YyAoImRybS9pOTE1L2Rpc3BsYXk6IHJlbW92ZSBzbWFsbCBtaWNy
by0NCj4gb3B0aW1pemF0aW9ucw0KPiBpbiBpcnEgaGFuZGxpbmciKSBub3Qgb25seSByZW1vdmVk
IHRoZSBvcHRpbWl6YXRpb25zLCBpdCBhbHNvIGVuYWJsZWQNCj4gd2FrZXJlZiBhc3NlcnRzIGZv
ciB0aGUgR0VOMTFfR1VfTUlTQ19JSVIgYWNjZXNzLiBTaWxlbmNlIHRoZSBhc3NlcnRzDQo+IGJ5
DQo+IHdyYXBwaW5nIHRoZSBhY2Nlc3MgaW5zaWRlDQo+IGludGVsX2Rpc3BsYXlfcnBtX2Fzc2Vy
dF97YmxvY2ssdW5ibG9ja30oKS4NCj4gDQo+IFJlcG9ydGVkLWJ5OiBKYXNvbiBBLiBEb25lbmZl
bGQgPEphc29uQHp4MmM0LmNvbT4NCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
L2FHMHRXa2ZteFd0eGxfeGNAengyYzQuY29tDQo+IEZpeGVzOiA4ZDk5MDhlOGZlOWMgKCJkcm0v
aTkxNS9kaXNwbGF5OiByZW1vdmUgc21hbGwgbWljcm8tDQo+IG9wdGltaXphdGlvbnMgaW4gaXJx
IGhhbmRsaW5nIikNCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY2LjEzKw0KPiBT
dWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfaXJxLmMgfCA0ICsrKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2lycS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2lycS5jDQo+IGluZGV4IGZiMjVlYzhhZGFlMy4uNjgxNTdmMTc3YjZhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IEBA
IC0xNTA2LDEwICsxNTA2LDE0IEBAIHUzMiBnZW4xMV9ndV9taXNjX2lycV9hY2soc3RydWN0DQo+
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGNvbnN0IHUzMiBtYXN0ZXJfY3RsKQ0KPiDCoAlpZiAo
IShtYXN0ZXJfY3RsICYgR0VOMTFfR1VfTUlTQ19JUlEpKQ0KPiDCoAkJcmV0dXJuIDA7DQo+IMKg
DQo+ICsJaW50ZWxfZGlzcGxheV9ycG1fYXNzZXJ0X2Jsb2NrKGRpc3BsYXkpOw0KPiArDQo+IMKg
CWlpciA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgR0VOMTFfR1VfTUlTQ19JSVIpOw0KPiDCoAlp
ZiAobGlrZWx5KGlpcikpDQo+IMKgCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBHRU4xMV9HVV9N
SVNDX0lJUiwgaWlyKTsNCj4gwqANCj4gKwlpbnRlbF9kaXNwbGF5X3JwbV9hc3NlcnRfdW5ibG9j
ayhkaXNwbGF5KTsNCj4gKw0KPiDCoAlyZXR1cm4gaWlyOw0KPiDCoH0NCj4gwqANCg0K
