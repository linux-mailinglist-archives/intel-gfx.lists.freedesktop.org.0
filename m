Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4265698E9BB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 08:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F243910E0E8;
	Thu,  3 Oct 2024 06:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IBJ/1Dq9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB24E10E0E8;
 Thu,  3 Oct 2024 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727937174; x=1759473174;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SGV4nj+y8kK5z/FoPv9FgNdNXnIk8r9OTxUACnVHqzw=;
 b=IBJ/1Dq9ZS6rSV55nLVo8Av84dl4Mw/E+fX6yA6o8VRILweuQyXYO8+p
 do5pkxdqnTlQ2KQ4iomD9vXWTH8FB+KT9956BKURDmAoRcumV9wLVsLxx
 nnNuizrrm642lKi7vgG2R+arX9IM7LpELKHXI+NNe7pL1eKDHmPrSQlH0
 ls2O8ujDWXkKCYnPFc6dRcQjFzosem/hlYLppjO/AT+9JHMNRFAxvVkNF
 yWrvlGA+vVy+0RX7VN0w35j3Ms8GRkyCh/wALDna6QJgXXLvgmiz0hW31
 DnkqTP0HCXkkBJd2bmChzVoRz2B7y670g89oIq5+9g+tZOyVVZGMRlNfh g==;
X-CSE-ConnectionGUID: //IdwWsqRpmL9xTDSDqf6g==
X-CSE-MsgGUID: EpM6nCNkTO+D29TJiLaCNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27213035"
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; d="scan'208";a="27213035"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 23:32:53 -0700
X-CSE-ConnectionGUID: ZdoohV4kSa6ONBWkOV0zbg==
X-CSE-MsgGUID: RfZwyMzeRJaQeDlAItMfxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; d="scan'208";a="79103866"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2024 23:32:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 23:32:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 23:32:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 2 Oct 2024 23:32:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 2 Oct 2024 23:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PenNt0H4quIh/zRR+bMjmoORx7cXN9ua4Nd8ViyClrM0K/sFxy2BnRl80U9DbZruzZ9lGFubTqL60Ai/ijJ8xkxQLVH/lPr0Q+edKOyh0pAoaZeWyGD+g0tDr8rWYc3dqp/csDWltm57Fl+cKOQGbvAZe0ADDf+1Xe+FvTIoA+Sd1AAVpjPxssgw8d44uKbIPONpP2c14wGf4mbKlzOx/XoSwKuOi1aHvhxwYreJf+0CNDZmSnWw2E8WSxiPYQeu2AZ6kr2DN+cEbIUeuLSLw8tSniCcwiEjaP9kTxcc/+F8u9a0QrFMJTHXLOpD3XJNWzTtxqiBDY/pTarVxwP9lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SGV4nj+y8kK5z/FoPv9FgNdNXnIk8r9OTxUACnVHqzw=;
 b=JwaC65PEJPRV1/jQx2Rf9m2i2Bgc9ktIiWCb/sU4AU+Sx2+216CjdldxK8wPO+fU6+8gxAFeH/xy1ZRKT/4ivZGoA9iDfAXI9oqxjCj6UzoLoiaU72kq0hexcnqD77w/wd6uNf8dL6utPIc8wqf3ZFKBgEE9ZqDo652bQZcPbQGwJ281V2kTD4l6xBzDh29U5Jxhp1h/BSbYi3LkgvVgCHNpes7avvqU5Qkzk7nAJQqeKAFatOCE3RX9sGdtLSqi9wMWaCgJqhVBVSPKeXxPQ4o2nuO2VEhm7oEdpRN6jGpmkVFLAvYpzSyigNUHMqai/9oI/x5lVla8IxdJnwPkFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA1PR11MB7774.namprd11.prod.outlook.com (2603:10b6:208:3f2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Thu, 3 Oct
 2024 06:32:50 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 06:32:49 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every
 runtime resume
Thread-Topic: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every
 runtime resume
Thread-Index: AQHbDsJ0mg8iDWKwFUOBpJd0P+vU8bJ0npqA
Date: Thu, 3 Oct 2024 06:32:49 +0000
Message-ID: <ab4194b3d05c77e1ac5ba5f675f27ed55c244c27.camel@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-25-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-25-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA1PR11MB7774:EE_
x-ms-office365-filtering-correlation-id: f29deffd-dc41-4116-2c15-08dce37533b5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZUFnQXpsM3J4Y3Q1dkdqZmNWRGNkWTBXdTIzaHpPcUJtYjdhaUdCdDVKaVhm?=
 =?utf-8?B?SlgxcnRrcE9HVnV2OW9IVjZsNGZEZVczM0RVMkxHektWK0FyekZJZkI1Wjd1?=
 =?utf-8?B?a0pZcG9WbXk5U3ZMT3ZWVGRJZk9Eb1RJdXRKOWc4eEpvZWFhdnAwQisrRXlC?=
 =?utf-8?B?QzlDSkFjcHN1QkVWNTdRRDM1eFV1QzJEMHlzdWwwc2pIOFFxNWJSYUttem4r?=
 =?utf-8?B?WVh5Z2xUYnJoMnZkZ20xdHVPUnZWRnBTNXhVMmRMMmVOY1hMMGl2N2Y3ckg5?=
 =?utf-8?B?dWZQeUFZZnpPUUVJLzlKZ0s2azUyVlFsUUZKWDRtMlVqbHkxT25Eb0VoRFMy?=
 =?utf-8?B?aG5xMElNZHhlTFZBeFJNMGZBTXU2UFE0Q3grUmlWZTAwVDdRc1dCZlY2UW1X?=
 =?utf-8?B?c1g3ZW1wM3NpMHBacmNqL2lEUi9UN1AwL29vclAyS0V0TmxBeEdMaEhyN2o3?=
 =?utf-8?B?SU5vY2V6UjFWQ2tLUDVlZkQ1ZmlEajAvZXJ6YkFzNWx2RVJrSmNvNmVyc01F?=
 =?utf-8?B?anp6QnluSktuZmQ2aFl6SW5paHFHZUoxR1NWMHZqM05Kb1BQZldGTHpUSmVk?=
 =?utf-8?B?cFd3NWxINmFvZ1pVQ1FBNzRiU3BlNlhUSWdOeHNZTk5odXZ2c2k4N1ZucGV1?=
 =?utf-8?B?ZEZxTkRjRVRCakwxb0t5Ni9uaEFELzZtaEM0Vzc1K0h3N1ZZekZlaldvNXov?=
 =?utf-8?B?cjZONVk4WHVnMERHMm5ROW9reFBTSWZKaG5Zelllb1I4VU9OcUpaU04xZFg0?=
 =?utf-8?B?aGc4d212NmV5WDdWQ3Y5QjFzMjJvZ283ZmxzS0lid0VQREErM0RkeGN2Z0Vr?=
 =?utf-8?B?K3NqWUl5S2V4cE1lbkVSSEZHQW1pcGluTWxaTlkwYkowODRjcnJzc2RRRVBl?=
 =?utf-8?B?YXhsUjY1SWlUalZ4L29La0Z4MDl6KzBoNS85bUpRQXpEWVU5SU1BMnlRWXRk?=
 =?utf-8?B?QndVOVFlV04rRytyM1JOSnduWFNiT1RYR21sekdLSzYzTDdOQ0N6TGh0cGRq?=
 =?utf-8?B?WXdNamhjRjF3UWp0M29rMTdza1dPaGN5ZktQYW5FMmN1SEdUY2orZGhjbkJP?=
 =?utf-8?B?YloxbStVWXIrdHc2K0JJaDhtY3dsMWZHT1B5czVVT3g0cjVjRDJSOG1VTWpC?=
 =?utf-8?B?Rkw5M2Fpejh2bkZxOWhnSTBkY3hBNTRvcTZ5c2hMcXJsZ3lMVWxML3hqSmxX?=
 =?utf-8?B?ZkN4YmpiU3liTjRBYWlGcnJQMDBZaTRPT1VwaFk3eXM1WVJQdnMxMW5FMXN6?=
 =?utf-8?B?Z1dVVHJHdG1yUEZibGNCYVRYOUVlaWlkNUFDS0J0SHhVRWdUVzh0UGhJOVl3?=
 =?utf-8?B?UGFZODN6cGZNanNnQXRJNkxleHlTS2lOSzFibzdXMWJqazdXZ1Jacm12NXNh?=
 =?utf-8?B?c1c0Qyt4Zjl5RnErbzJBSUltczM2YUUwQ2JSb1VMNi9KaEdNRENmQVVFd2Jo?=
 =?utf-8?B?SVlGNFNMSHV1RDdrN2N5dUtyYmx0cmpmaFlwODVRcTZSZXNRRGxuZ3NwWlVG?=
 =?utf-8?B?NjB2Ym5JdEJvaGtaZFdwN0d0YjZCd1hlOUp6cGIvK1JuQjFWeWNjeHorYjB1?=
 =?utf-8?B?dUNSU0dQaS9BUXlHTzI2dUhGNzRIdWMvRkk5MVV0SWllTlpFc0xNeFRTM3Zt?=
 =?utf-8?B?WTJ1RkUxQy9MYXY0bHprdkEyMUljcVRxTGZGTUdncXcxYkNabG9sYklKdUw2?=
 =?utf-8?B?Tk44SVJ4ZS9Cc3gvUVZjQkNsbVRhanJPclJwUmE2Uy9YSitjY0x3WWZXeTQr?=
 =?utf-8?B?dVBleEFpRDNBSFZXbGc2d2NaU0U3NDRlVXV1NUZ5NVJOYld2bjB3akQ5ZDhF?=
 =?utf-8?B?RHB1NjMyVkJaVExzWmh4dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmJTUS9NdmNHL1BDTjRmaEVHOFRJQUZ3bzdQbzRQWUpYNS8rRmhEUDlMbmh2?=
 =?utf-8?B?aXAvQmdMNXpsMEZzTmlZbFE1dDhCa2hPWit5UjZXekpESS83ejlzazJXa01X?=
 =?utf-8?B?UTQzWnZEWmRRQzBORWt4dWl1WVFQemxwNlMzSnhqS0hSWUw5MnYrbkQwdCtW?=
 =?utf-8?B?SjZJN0NzbEhndy9iaUFDamRuT3BPV050L29vbnB1cUkydjlad0dWdnYzeG81?=
 =?utf-8?B?VDF3QmVVcTZsTDlqem1TR1o0K3d0YytSMUxRVEVBL09WK3ROcXVXendHRnY2?=
 =?utf-8?B?UXJmVnVFUDhMd1V5M2tNbTRQblRMTFpuamxyL0VRR2k4alBuemM0Skxqd09P?=
 =?utf-8?B?MDA5SzliVUtWU1MyZ3hZVmZzMUJnTktZMjRRYVRpN0dEbDRKR3ZsMjVTUnhh?=
 =?utf-8?B?WHZhSGlxUW1MTkYyT2pOdk9EUG9QRDVDRjlyaUN5VEIybGpvSlZHQXdWcG5w?=
 =?utf-8?B?MmJZUmFENlpLWGtuT1YwTG5nelJhd1luU3drMyt5YVdOa1NDMGJFMjh5Ny80?=
 =?utf-8?B?VTF6UzgrTjUxNTVmQUtRSWhueTd6K1N1bi9OYWhqbXpMUTIwQ3pud2x5WHJj?=
 =?utf-8?B?cmxudXFtUUFZNWFQelNaa0doai84VW4yM2RzOG1WRHZxZWRod2QrZXh5KzRQ?=
 =?utf-8?B?OUFZNXJjS29rdnpQbGxVQktzd1JuREJ6WjdxZzhFQzA4ODVqaHRJa3NPVDVn?=
 =?utf-8?B?akJZUC9aM2tWbFNpKys0VFpuSW84bTJHWThsOE5YV2YrLy9hSU5mN043Wlpw?=
 =?utf-8?B?eE1EQmFNNzNZVlhlNVpnQWgzYm9KSkhQTC9Wdit4eUhRLzIwa0NXSEFQRUdt?=
 =?utf-8?B?MXNtMDZYMUpvNzI2VUZGZVIrS3lGSFpFNWRJMDVDdEk5K1g4UmdwWEU2Tmwy?=
 =?utf-8?B?R045Vm00OURIMThOZDMrQ0FXTXRJeDJYWTNCbTJEZjRRdU1YY2RBUWdSTWc4?=
 =?utf-8?B?Z0M3VHdGa25MUndHMXBZSlViSGxBN2FpZVhuYnc5MlhCWnRmcVlDTjVjZlZP?=
 =?utf-8?B?WWFTRGV2Qy9tRmtjeFhEMEJxanpkTGNzY3NpVmdZOVY0OEl1ZitKNlc5Skpa?=
 =?utf-8?B?bi8zdG56M241Y2ovdVJMVUdwTS90OHlMRU9mMitXM3QxTTdFQ3VKd2h0Zmd0?=
 =?utf-8?B?MnU1Rk9TRVZIR25uNExLejFTMkRWMWRKVFgwb0NFN3h2aGZWMTJ1U1hPSUtR?=
 =?utf-8?B?cXNEaENFZy84M3k5ZFVLRmlTbk1yQ3ZCajdMT1RXVU5ha0dlNC8zRkhWVVdK?=
 =?utf-8?B?UWlLNkg2ekhGK2dVWGtRMzBIa2htYlZPTzFFSHZzT0ZyU0hkOFJKekR5R1RR?=
 =?utf-8?B?d2tQTHFjNE5MNitSeUdzT1cwL1Q3QWdlejZzTFhhZU54cno3U2wrZGVCR0VB?=
 =?utf-8?B?TmZGbkwvMmJhLzJkam5mTitpRVduY3U0NVZjM0pzYjBjRDNadFpKUzlOVFlZ?=
 =?utf-8?B?WkdLN3F4K1dhNnZmaVdQckJQSEdsNllyWkdOaHVkM3R5b01NZHZrbnUrQkxB?=
 =?utf-8?B?WXBPdnBzVGduWmJxc0U2STByYm44UlVyb2RmQjFpcTg5VkFQdU5IOGN0ZmRK?=
 =?utf-8?B?eGxqUzVicDU4d2tkUEphQm5mZWNQbHNSOXdzcXFzNkZEL0VETEl1VDJpSDdY?=
 =?utf-8?B?dGVnNFl0eG55M2VLVlc4K2ZnZHJOZTJ1ZWFoVk5rL2h4enJtdmxSQTVHTk1C?=
 =?utf-8?B?RWc2YS8rSEQ4T3FVQTFPSG9UU3prd3pRRzJGbk9idFpqazQ1QlhSU1YwU1l6?=
 =?utf-8?B?TlZlc0EyZnR5SXJWZXVRZFVxa3pIK1lRVmJHdUt4VjBySk8vdUxGcTl6R0pX?=
 =?utf-8?B?S3R4a3VVNWVkekdraFV3UXU0eDVGM2QwRmdZMUxreVBDOHlLZFBjQkRJNGdJ?=
 =?utf-8?B?WDZEMUJoa1o5VjFxMU4vNjFsOVdyZ0FxR2JPUUg5YThnTk5vdlZwUm9pV01l?=
 =?utf-8?B?UlJhblJFeGM0eWZkZzlSelZkNVdyOWg3UzN6MUx2Z0JVckdGcm9hRzRBSk9X?=
 =?utf-8?B?eFM5S1RUVmFjUk1kVjlXYXVlMCsxbGdwSXpZK204Rm1xclFoT1ROaTM5ZXln?=
 =?utf-8?B?VDRjU29YNjEwbkFZcEtUYmkyUDBRSjgxZzdCdHdNOE9sSHdkNytFMUFOSkhj?=
 =?utf-8?B?WTRLSTg4NW9JTlVhdFNac1ZwSEFSTy8wb1NiQVNHM214Y3F0UHJhY3lPbmVM?=
 =?utf-8?Q?Jp9o4cvfdn9+5Ra2Ykhl6j8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7E1591D6A52218428056FAB9674E8A63@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f29deffd-dc41-4116-2c15-08dce37533b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 06:32:49.7460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d1EHNWD1jMm7ubZ6j/bw6fKmj/L9ozFkIOpqxvG/KtyA0kegizDhk2VwtePKWaTzNszlHUYwEUY2wGSEAguZGQIYk7+FmSvrZJSGuQSPYVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7774
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

T24gVHVlLCAyMDI0LTA5LTI0IGF0IDE2OjM1IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IFdlIG5lZWQgdG8gZW5zdXJlIHRoaXMgaXMgY2FsbGVkIG9uIGV2ZXJ5IGtpbmQgb2YgcnVudGlt
ZQ0KPiByZXN1bWUgYW5kIG5vdCBvbmx5IG9uIGQzY29sZCBpcyBwb3NzaWJsZS4gQWxpZ25pbmcg
d2l0aA0KPiB0aGUgaHBkIHNlcXVlbmNlIGZyb20gaTkxNS4NCj4gDQo+IENjOiBWaW5vZCBHb3Zp
bmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMgfCA0ICsrLS0NCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXkuYw0KPiBpbmRleCAxYWI0ZGQ1MTA5NGYuLjRkMWRk
NTI5NGI4OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlz
cGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXkuYw0K
PiBAQCAtMzMwLDggKzMzMCw2IEBAIHN0YXRpYyB2b2lkIHhlX2Rpc3BsYXlfZnJvbV9kM2NvbGQo
c3RydWN0IHhlX2RldmljZSAqeGUpDQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNw
bGF5X2RyaXZlcl9pbml0X2h3KHhlKTsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfaHBk
X2luaXQoeGUpOw0KPiAtDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9vcHJlZ2lvbl9yZXN1bWUo
ZGlzcGxheSk7DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wb3dlcl9kb21haW5zX2Vu
YWJsZSh4ZSk7DQo+IEBAIC00NzAsNiArNDY4LDggQEAgdm9pZCB4ZV9kaXNwbGF5X3BtX3J1bnRp
bWVfcmVzdW1lKHN0cnVjdCB4ZV9kZXZpY2UgKnhlKQ0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKg
aWYgKHhlLT5kM2NvbGQuYWxsb3dlZCkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB4ZV9kaXNwbGF5X2Zyb21fZDNjb2xkKHhlKTsNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBpbnRl
bF9ocGRfaW5pdCh4ZSk7DQoNCkkgd291bGQgbGlrZSB0byBjbGFyaWZ5LCBpZiB0aGUgb3JkZXIg
b2YgY2FsbGluZyBpbnRlbF9ocGRfaW5pdCgpIGFuZCBpbnRlbF9ocGRfcG9sbF9kaXNhYmxlKHhl
KQ0KbWF0dGVyPyBTaG91bGQgdGhlIGludGVsX2hwZF9pbml0IGJlIGNhbGxlZCBiZWZvcmUgdGhl
IHBvbGwgZGlzYWJsZT8NCg0KT3RoZXJ3aXNlLCB0aGlzIHdhcyBtaXNzZWQgaW4gbXkgZWFybGll
ciBmaXguIFRoYW5rcyBmb3IgZml4aW5nIHRoaXMuDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3Zp
bmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KDQo+IMKgfQ0KPiDC
oA0KPiDCoHN0YXRpYyB2b2lkIGRpc3BsYXlfZGV2aWNlX3JlbW92ZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCB2b2lkICphcmcpDQoNCg==
