Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A56A6A35B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 11:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F1910E092;
	Thu, 20 Mar 2025 10:13:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3ykPbVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFFC89D7C;
 Thu, 20 Mar 2025 10:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742465596; x=1774001596;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nhkLrCaEtGgQZ9XkJQjJWY7O7+Gx2qoqFFIimCt6B2o=;
 b=l3ykPbVJRAq2YWtlrxU0UCGtUDFgIpYSPd3Hnw2A/COaaGeIRrVmX7sA
 aPLDI2Cpu8sP80BGifdCA+Cnucfufwq4Rxz3tZC/CTsPgAQSPX60lfiya
 tEBz1QHvKUyV7g26jr/teTjIc1nqgffEuNxVAzipn+xp29iVjQjFHyDlk
 AGjAwuFr5gP/y9MG2orr0NwgXANoXzJ6aSLJDTTVxUC9TkT9RZqcdbHtX
 HzJj2DhpoRnXalkajRZbJvfPWEHprzY3EO/P5Fglw/Dpv8Sz37KWICtOS
 fNaGvfdAeun5k9FPLXD/9+/PH5dAd3gpogVaFZikd3fD7BIpjjR+R8Dxe Q==;
X-CSE-ConnectionGUID: RVP9AdYXS2uafXyqFH3lww==
X-CSE-MsgGUID: y2PLejG8TbCnNlvQhN+QpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="47568286"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="47568286"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 03:13:16 -0700
X-CSE-ConnectionGUID: i3mefVQaTHKaa8SBo9Owyw==
X-CSE-MsgGUID: pIrMcM5ORJiPFy+9mq7Osg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="123512705"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 03:13:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Mar 2025 03:13:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 03:13:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 03:13:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xbhf2Yp/hoCk2TXzsS/WBqU5QXdJuOlV4hXabjPyH75fsTYvPp+8aPw0saAWZavGjzt8sneXC/MYTLCiod1yQPnoOdw3QSP9HhZkvruG8imEGyB12U8JjQK2yBH2iyfa09ULR2q5/qN1Z6jNK8++VtbwGezKsUyDzAfMUgdCfvyxgioiSFJ+yBPiuct1z3imR9BEVwqBDM3QicQJpYMDtN61DhI8kYlFOPEAm81vYHuHQZVP7c099t9MTUtVmTILI1BikMV2vrPbVwk+KH0/JcnAnGBs8Szc8o2cVWfHSYc/5X8iVOsVcv08Ef0qjtNJSrHjewhkQvv8Cb6wEKD9ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nhkLrCaEtGgQZ9XkJQjJWY7O7+Gx2qoqFFIimCt6B2o=;
 b=il0A1+8epzuh2HQPGm3U4tXzn0Y8qpoIAybKxNxYx5Nbd/r+BQFy4mFjiWb4roNDrUOwJIGxR3yxed3VMEvJiDuo/0IZZ8mF574ElBzuoCrdhlTqXhvQU5QV8cWSSAXYiIHDLtniTl6zJu2/Xx3MYzW1RcXozf/fbXZ9L1zNAl5FdqvfuddweOzc2manrEd+4XbIRLnfVZwfOfmlKq0sQ0UkC3NVtGddP5dqPwna7Oy4XXD08mQFupZqwmnMfOND7viFJ/vDT0it3hPU6RNnm9RfF+XKFtCX04ewgF5XuthduwtuebvPf9dbvQDptGZgGElSnHTGRsQD0VCj6eO+NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL4PR11MB8800.namprd11.prod.outlook.com (2603:10b6:208:5a7::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.36; Thu, 20 Mar 2025 10:12:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 10:12:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>, "B,
 Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915/fbc: remove panel_replay dependency from
 fbc wa checks
Thread-Topic: [PATCH v2 2/2] drm/i915/fbc: remove panel_replay dependency from
 fbc wa checks
Thread-Index: AQHbmNYb+kp8hZLNDUm+Jnq2sByoCLN7z3kA
Date: Thu, 20 Mar 2025 10:12:25 +0000
Message-ID: <9db3c1ce3b61447085248c9dd444dde49a44cfef.camel@intel.com>
References: <20250319135130.122703-1-vinod.govindapillai@intel.com>
 <20250319135130.122703-3-vinod.govindapillai@intel.com>
In-Reply-To: <20250319135130.122703-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL4PR11MB8800:EE_
x-ms-office365-filtering-correlation-id: 8de3e288-00c6-40fc-d2d5-08dd6797b6c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SVVKNmlMN29IMGlmd25wYjBzMythNlVDbm0yaDQzK1ZSQnhxWjRHemVFcWl6?=
 =?utf-8?B?RDRWMUhoeXZpMG5lWGRreDNhUm5hM1NKOSs5TXUxUWFSNXhSekQ2bWErUi9r?=
 =?utf-8?B?ejYwQ29kVGpadUIxbitza2RwOS9MV0t6NHY3QlY2NXkvSU5BTzMycWlNUyt0?=
 =?utf-8?B?bDQ1aFFTZ0k3aGx4ZE5FSUZ6UGlLMWJnclFqWjJGK0Rad3BzNE5nWlUreXJL?=
 =?utf-8?B?TTcvYmg5QkxjUlc0cVhCRUlRWkdwU2l2NG1XcmJ1dHQySzdHcEVYQjJQb01o?=
 =?utf-8?B?RnRFR2h6UFkzSklyMUgyTGF4MmVRNisxd3dHemhZbklDYmtLejRManVTbFdm?=
 =?utf-8?B?UXdVTldEVW0vTXJmS1hnNXZoWVBvUmdEdmtZQWE5TWt2ejJKNWNJOUE1TzFp?=
 =?utf-8?B?bVBSSUt4K1ZnZy84cHRVNk9wN05ZOXo3UXdGVjFreE5tbW1CUHBQcmZWeU9Q?=
 =?utf-8?B?TS9qMEswTG4yMjRLOFFiZm9kbUhJL2hJWGdBSDFQK1I5aXhqMVBYTE53WFp0?=
 =?utf-8?B?VElUcUIxbUVXV0xnVUdIUjRXR0ZseVcva2NoSzhQWTVFYUkwUTdLaEFzWllr?=
 =?utf-8?B?akJmK2ZBa25Jam5ab1IzRzhtQ1JHaTdjbGhKUTJveWlSQ01Ma2w0bHd3VW1s?=
 =?utf-8?B?cGpaaXhqWlJvL04vTW9Wams1K3lxMFcrcWhTREpSTFFBYWZwQU9sRy9HVnVh?=
 =?utf-8?B?NW1pWlMvc3dGRW9CTEFrNXlUVll3YjFqZEpHclB1MDA5ME1Ud0JnYTQyL3ZH?=
 =?utf-8?B?bE9IU0lSK3l5NW9qZnY1Y1ZPU0hldW8vT2FndkhTRWdMZ3VTMUI1RmlQS1dp?=
 =?utf-8?B?MmU5SWVBSzQ4VUsraWpFYVNlb2poM1VGcGx3YWxXOW9rb3JpWXhUUDJDWm1G?=
 =?utf-8?B?anFZRDJib3V3bWZvVGZqVHFUMHhKanRWN1lCb0k5NHYxLzVKZ2RDNzVYSUVn?=
 =?utf-8?B?b3dxSyttMGN0YVBEaEh1UUFkS3ptSENycSt2ZkNkaTlaaFBYekFUbXN0WS82?=
 =?utf-8?B?c2NjdVZRaFlwVGZBcnRQYlY2M2NWWXZ2VE0zZ2tlckcybzdpZkFqamNUWUJO?=
 =?utf-8?B?dFRvZ1ZrZjh3am5EU1p1VjF4NVFZZnBlVjBJSnFVUGwwQ2NXaDR1TUg1Mk1o?=
 =?utf-8?B?bnNnSi9BVlNMcFBLV2FGL09LRy9BRDhmUEU0V0N5NUpwMVpGa0ZiTGdoczFE?=
 =?utf-8?B?NWJ4WFZYMTE5dDBMOENxUVpQMVVsNm56QUZ5aU1hS1dQM0p6UHBvWk5rT3hD?=
 =?utf-8?B?WUVubkhWSXRoYzJ5Q3I0OEJhb0JWbk9VejNoY1VrOHg1czRGNFk5NStiN1Mv?=
 =?utf-8?B?WUpaNFROR1JGZmxMenJTcUtNSHA4N1NYN1VLZUVaaGVlN1l2Mk1WRE1kZVdq?=
 =?utf-8?B?R082bkV2VFc5VWZFdXljbXB5bkFlM1hOdEgrcHhKNFdvVTJ6L0R6bURUeUx3?=
 =?utf-8?B?bU9IbSt6eldXVlhiU2lBU0FobGtXRG01a0psM0ZSMjI0NFFiQWtGVElmVWNE?=
 =?utf-8?B?RGpjdFhRSzkyZXlibzR2RHhzYXdaTXR2QzhUY0daSUU5emQ1V1pZK0tlTjd0?=
 =?utf-8?B?a1ZBWitvZW1RVmdVbTZmdnN1RzZMQkxxa0pieTNCR08vTzVGQlRtb3VOWnVP?=
 =?utf-8?B?MXcrNWV5OE4wTjREOEVqbGVQRjRZOEludEJWeEg1cHlkWnQzNWJscmIzU2E3?=
 =?utf-8?B?ck1DQk90Y1MwVUR4eklkbHJkSDBVTGJzMERFdHhQYktWMmo3OTAzTFI1dzV5?=
 =?utf-8?B?ZU5nM1N4Q2VidUFNbFczTmh1NjltZXFGUTFhYkZ5WGZyak15UEhwaE9TTCty?=
 =?utf-8?B?OWxDNE5IckJEbm9lS3owMjNnYzE0SFFrMGF5bjBvUGJzNUJUdkRqZHhPVC8v?=
 =?utf-8?B?SnRNeWF6TlNLS29FTmY2OXZYbHpuM0RFSCtOelRkRE5ZU0pOU1djRWlzU2RT?=
 =?utf-8?Q?CVjlA9HttMoDw1ticVm6dx2lx7dXTUkt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmFIYTdKMW1wZm9qaVNRSGtGQXo4Sk1ERC9nU09sVTcyKzJ0MzBTaTk1UHJN?=
 =?utf-8?B?UXVlMnNhdGRXNTFjRXduUGdlT1QxZWszZHgxcVFoSW1OejNvZjZPcWdnL0RL?=
 =?utf-8?B?V0drWTgwRGFDOWpDcDYyeTdjWHgwbXN5ckNhQ1NBbU1oWVpaODhnQm1ldERP?=
 =?utf-8?B?V2ZPMC9lYnROYjZnR3BGNkFWSVgwWGdFWGl1S2oxSk9ja2RMZUVGdFVyZDk5?=
 =?utf-8?B?d2ZWNzhucG4xdThjL3A4SnZVVHl6WDMvZEZsQlZ2NVZrVmRyOC8vMjlkbHdS?=
 =?utf-8?B?Rjk5ZVRaUFBtSkVVR0xkazNvZWQvY0U5elRPejYvMTJGTld0TXFGUUJuRjdy?=
 =?utf-8?B?UEhTUG1KSmdFYThDVU5iVWd6aVlWYWhja1VNdGI0ZzljL3ZLZGpRUm5yOHFj?=
 =?utf-8?B?TlgwSnVwbUxicjQ4TDcyRis2UkhNcHdxc25Ibk9RRjVtN3ZibjM0Q1paSlZs?=
 =?utf-8?B?TFFYaFR6RkJmTXdlaFNMbEJjMTluVDlIb3NLUUVqaWRwa0NNMmZUQU1qQ2c3?=
 =?utf-8?B?OFJVRk43cVAxYmx2aXpacmo2WDJUdFVKbnVHWW8reE1aLzhlV2ZpWVZBVFB0?=
 =?utf-8?B?NXRQTzlteEl4VGg0TFNLVS9Dc0xlMUhPaU93Qys2SEU4dzBoTjJvNng1L3dV?=
 =?utf-8?B?bHdmTWRpdjBNZ1VKY1ZmWVprLzlwakRwcE5hQmluWmo0TjhBZ3J6N1BOcTI3?=
 =?utf-8?B?eEE0Mnk5S3VHNFVtbzZlSjg2bkRwMjVQamFrRVRuT2YveXB2ZG5yODBFL05O?=
 =?utf-8?B?M3ZyNGI2ZytxNWJkVnJrOTZSR05ubXBWNi9qRFo5TEE1OTFhbmx2MVFwMU1V?=
 =?utf-8?B?c3BUMmpqSGhiVk03emZBbVloTHJpWWRPaFZZSWpYSlR1bURwZzBFUitkNFNl?=
 =?utf-8?B?OHc4bEJQK0ZJOWpseHMzdU5RckJaWk4rMnVZMjlhSlUycENaOTN1T3JPZkRZ?=
 =?utf-8?B?TE9xZWJydHpMcjhmbEVqb1p3cHVOTFJxVGc4cUJBbzJFeUJwQ3AwY0VZVXlH?=
 =?utf-8?B?RzJodVl5ZUhNTkoybDRMUFFOUi96Z29OTVlNVmhGYlR2dFZ4NjNxK2pWSGhJ?=
 =?utf-8?B?RVdCMXZYK0dRQVBLRjVrSnYxR3FFWXhtajBMUndTK2RnaHh3NWRhejhiTHMy?=
 =?utf-8?B?eEtHSEtEMEFzRUNUU3lodjVDU3F6Vi93RTg0QUJETEErY2xrVnJkTzhSLzJW?=
 =?utf-8?B?TnpJTHFzUFdJS2dkRlVhUVNDNTJXUVR5K1FaNCs4bmQvWFl0N3lEMnA5T255?=
 =?utf-8?B?YUswQmhXWExCZ0F5Wm1WUVlCdnh6akZwRlVZUFZzZWtJRjUvSktmSFloNXFr?=
 =?utf-8?B?TXRxQ1Q0b2Z4U1B1Wm5JNDdBVDU4Y1hackFaTFJiemUrZzI2SHRKdzh1ZEtT?=
 =?utf-8?B?ejZKOWtrRFVhV001MmpDSzNiWEdjWlRIY2FpSWlESTBaYUtVV1VBWDhiZ2Jt?=
 =?utf-8?B?R2N3eDgyQm15QjdkM2dUeDVUWVVpWkVrcW1OL3JPR3FuRGdobEdFM1RNdXZM?=
 =?utf-8?B?SUIvelJwSHBrajNHbng2TEZEb1pSb3d3VFVKNFcxWU5TR0RTZDl3MXhhK3Ew?=
 =?utf-8?B?NmcvamljUy85ZnliVW85a2phQmxzcC94dHVIdVBjcGVkZWZiRzJhdS9seTcw?=
 =?utf-8?B?OS9NV0RHdWUrWjhGK2FDdGQ2NTBjNGx5dXdIZ1VqMVdsVFJuaG16MmVQcnFk?=
 =?utf-8?B?djZSOEU5eTl1RnFHODhGS2pTUi9kOHFJbDhkamxpalkrYXB4U2tFZDVvREJC?=
 =?utf-8?B?UFRpRVo5dkI1MUgzL1M3NG1EUmlnUFNiaUxhWVViOURnMHJuZ3RxT1Y1U3BV?=
 =?utf-8?B?R0hKR1hxejFOekRBc0lGS0tubmFjSUFzeVpnWDgxQmR4dERLTEJOOGQ4YzJT?=
 =?utf-8?B?YUcyVkFocnljZXZGQ2pwTE5iN1crTVV6MjRoZDRIazVOT1dWbWFJUnZwY0tm?=
 =?utf-8?B?aUllUyt4UXJVakp1c2x4RzFYRllDZjRlYThpdWRZVnA2RHFubG5LRU55Mjh6?=
 =?utf-8?B?Z0p5UDB0bVJma2tIWTB4RDJZVGxKYzRpSEZ5SEU2SGJZbFNIYlV0RktKbGNM?=
 =?utf-8?B?TVlCRmUxaU9ZOVQ5TS9KVHovRENsK3NMVWtuczdadkwrcHlFbldDdUNLdlRo?=
 =?utf-8?B?NUREVExpdlI2ZFlnaE5uSmplM0VXWklqUXJuSGxMWlFuQ3J2dHZoR3lxSENO?=
 =?utf-8?B?UHlxWmtocEJqbkpiSlF4SjAzYlYvSWlIUlJFQ05YZFZJM3ZWVERnNmhBWXF5?=
 =?utf-8?B?VVFFN1hEQTRZOVhwSGR0citFVjZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B779E8233F862B42902505D6A49AB160@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8de3e288-00c6-40fc-d2d5-08dd6797b6c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 10:12:26.0003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5/SUqHbRKh/igxbf7MKlcBXFGrMjjsUXoZGx0sAQsMOQ8d7oFCeDj6gf7RXnp7ug1MBKehJgrRnGU47lpufzixFvWSXo5cmp+PNHXKwtMeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8800
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

T24gV2VkLCAyMDI1LTAzLTE5IGF0IDE1OjUxICswMjAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBQYW5lbCByZXBsYXkgaXMgc3VwcG9ydGVkIGZyb20gZGlzcGxheSAxNCBvbndhcmRz
LiBTbyBubyBuZWVkDQo+IHRvIGNoZWNrIHRoZSBwYW5lbCByZXBsYXkgc3RhdHVzIGluIHRoZSBw
cmV2aW91cyBnZW4gd29ya2Fyb3VuZHMuDQo+IEluIHRoZSBuZXdlciBwYW5lbCByZXBsYXksIHNl
bGVjdGl2ZSB1cGRhdGUgaXMgc3VwcG9ydGVkIGFuZCBpdA0KPiBpcyBzdWZmaWNlIHRvIGNoZWNr
IHNlbGVjdGl2ZSB1cGRhdGUgc3RhdHVzIGZvciB0aGUgd29ya2Fyb3VuZHMNCj4gaW4gRkJDIHVz
ZSBjYXNlcy4NCj4gDQo+IEJzcGVjOiA2NjYyNCwgNTA0NDINCj4gU2lnbmVkLW9mZi1ieTogVmlu
b2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IC0tLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA1ICsrLS0tDQo+
IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCA5MmIw
MGRhNGMwYWIuLjJkYzhmZjczNGIxMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0xNDcxLDggKzE0NzEsNyBAQCBzdGF0aWMgaW50IGludGVs
X2ZiY19jaGVja19wbGFuZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
wqAJICogZGlzYWJsaW5nIFBTUjIsIGtlZXAgRkJDIGRpc2FibGVkIGluIGNhc2Ugb2Ygc2VsZWN0
aXZlDQo+IHVwZGF0ZSBpcyBvbg0KPiDCoAkgKiB1bnRpbCB0aGUgc2VsZWN0aW9uIGxvZ2ljIGlz
IGltcGxlbWVudGVkLg0KPiDCoAkgKi8NCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0g
MTIgJiYgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUNCj4gJiYNCj4gLQnCoMKgwqAgIWNydGNf
c3RhdGUtPmhhc19wYW5lbF9yZXBsYXkpIHsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkg
Pj0gMTIgJiYgY3J0Y19zdGF0ZS0NCj4gPmhhc19zZWxfdXBkYXRlKSB7DQo+IMKgCQlwbGFuZV9z
dGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJQU1IyIGVuYWJsZWQiOw0KDQpQcm9iYWJseSB5b3UgYXJl
IHNlbmRpbmcgdXBkYXRlIGFueXdheXMgc28gSSB0aGluayB5b3UgY291bGQgdXBkYXRlDQpub19m
YmNfcmVhc29uLiBFLmcuIFNlbGVjdGl2ZSBmZXRjaC91cGRhdGUgZW5hYmxlZD8NCg0KPiDCoAkJ
cmV0dXJuIDA7DQo+IMKgCX0NCj4gQEAgLTE0ODAsNyArMTQ3OSw3IEBAIHN0YXRpYyBpbnQgaW50
ZWxfZmJjX2NoZWNrX3BsYW5lKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiDCoAkvKiBXYV8xNDAxNjI5MTcxMyAqLw0KPiDCoAlpZiAoKElTX0RJU1BMQVlfVkVSKGRpc3Bs
YXksIDEyLCAxMykgfHwNCj4gwqAJwqDCoMKgwqAgSVNfRElTUExBWV9WRVJ4MTAwX1NURVAoZGlz
cGxheSwgMTQwMCwgU1RFUF9BMCwNCj4gU1RFUF9DMCkpICYmDQo+IC0JwqDCoMKgIGNydGNfc3Rh
dGUtPmhhc19wc3IgJiYgIWNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkpIHsNCj4gKwnCoMKg
wqAgY3J0Y19zdGF0ZS0+aGFzX3Bzcikgew0KDQpJIGRvbid0IHRoaW5rIHRoaXMgaXMgbmVlZGVk
IGZvciBQYW5lbCBSZXBsYXkuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiDCoAkJcGxh
bmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiUFNSMSBlbmFibGVkDQo+IChXYV8xNDAxNjI5MTcx
MykiOw0KPiDCoAkJcmV0dXJuIDA7DQo+IMKgCX0NCg0K
