Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A57AB963FC5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 11:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D5F10E655;
	Thu, 29 Aug 2024 09:20:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YfHiPFq/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FE610E655
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 09:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724923241; x=1756459241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kXRF7uo/HVZQAPa5mmBNDljd54ig7JnFdOOA3Is+raU=;
 b=YfHiPFq/c1Uv2y1VnIWDD7gjC2TT7tB42a5OfhnuirIZl37STbJkmejj
 t9rri3T4Xu3pWxmvrE4MsCVztmH3xDpu2+r/VackbU/m8QH/9SaiMvOZa
 U3LgT9uu5YR4WWnYyjPm36mbs2mRn+Crzugs/40OA9IOzcTPYzooPppd+
 XMZVBghLJ3pyC3e2xNY3pGb4zHvpeOR4/oSDJKSs1YkJ7FrZcMYznz2ZZ
 hz95vTU0dOjJYm59zSWPzjVZOfWQYacGTbsmR4m4XOMOozKFuFV2uvhJp
 p0s6QBs26GUhzxooG7+z9kTzYWA5YloKhPCH/W2Y7DoZ+GTFQYB/XW97i A==;
X-CSE-ConnectionGUID: VjToxjcjRFC4QyQtUVmRRg==
X-CSE-MsgGUID: /78M49bdSRas5CDe2YHahg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34070664"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="34070664"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 02:20:41 -0700
X-CSE-ConnectionGUID: Io0eSJJrRnWbL5Jj3ipr7A==
X-CSE-MsgGUID: Ag6f54HPT/WmFtseILxkcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="101038797"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 02:20:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 02:20:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 02:20:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 02:20:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 02:20:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q4faXF+J7RoIGD9IkLwDsNdRHc6w9COoZQ0xzlI2zQcpa3ELiR4RYEXSPgglTkkmSwAj46Ym/j5TckdBv0th8M/23+PzJTx+uDdsuvS7tzrretrg1//OOeOAlcolWNH+SZw46qiutdxY77V+fkFp3iL/VZFO6OECF++Y1UhGgNoP9L3WTSwD70VILO7xeUs0HZ86Vj2Hnuz2MU7Kv68ozJaTSkgzFgThO+CAZktl9rwoI8wqzLnyPwE1Pcnv+EKG+7u+YIys6LA5Ym8DT9atEsAGSjtsAwyTZBz4viA+0W2sjLPsZFwuUkaGHWpkThC6UU+18X7zpJNVUCXHolQ9lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXRF7uo/HVZQAPa5mmBNDljd54ig7JnFdOOA3Is+raU=;
 b=klkj/7oYm+31BLULQ4WopxDyQx+nOI1nyjc0b1HJW8NVAObyDkvvlbHSW0QK6E4DTyp+etpCHDtHr045ShTlLSZuHDzcFSajMGi7bQUcpWlQjtigMNgPhmCAK4Cxc1j7/CwOp+sdBs7FJzFvtCoG9qZYiAcrg14AJKbLSCUCIf7C15OeeuNfA/e6WGH1dlMdB5lW2DAt+zr1lgURF5XljVWsXAMGpDYxHB4aYOW0UT9e4Lf/9AuuSlwBk4itW0sd6ITC/Vw6T75eokGZeQNXRNivQnBSXHiYymoJptMAeoZRDAs53bMJHeRu64dnIOLUWF/cjaPrJyXoUP1dEW9z9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5205.namprd11.prod.outlook.com (2603:10b6:510:3d::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.27; Thu, 29 Aug 2024 09:20:37 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7897.021; Thu, 29 Aug 2024
 09:20:36 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915: Fix readout degamma_lut mismatch on ilk/snb
Thread-Topic: [PATCH] drm/i915: Fix readout degamma_lut mismatch on ilk/snb
Thread-Index: AQHa0saKTOi8zj4tQECQg3CRwljXI7I+Q6ig
Date: Thu, 29 Aug 2024 09:20:36 +0000
Message-ID: <DM4PR11MB63604F07DBB7FCDB6E74ED57F4962@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240710124137.16773-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240710124137.16773-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5205:EE_
x-ms-office365-filtering-correlation-id: 0ce44434-2d66-45d4-0070-08dcc80bd7b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dUtmV3FWMVN1U3p0VkJybHMzQjNMR0gxU1dTT005U2NjZ0VDN2F6Qjc3OVVz?=
 =?utf-8?B?Ty9DbDZoL29ZbEMxcWZ0L3Bzd2JTREZrNjZOOUt0MmtHVk1yNmdsaTc3dUht?=
 =?utf-8?B?YUxXSG1WZ3B0c09DVmdqdVp4cmxESWhJT2RTYWJFeWhuaHoxZHNYU3VKcjVC?=
 =?utf-8?B?djRVZExqY3VaWUNBZE4xRkhFa3dOdmpMYUduOFR6YnFoZWhITnlVWE5XTUsy?=
 =?utf-8?B?WlFKNkNVcnFVclRvbTJOeWVCWGxXZkNsT1JCYTFXaFhMYXBqYmNONUpXT05j?=
 =?utf-8?B?K3J1UFp3L3U4eHRETllBS1hMdFQrUmtqRmZJU042R2Rvci9say83b1hBNDhZ?=
 =?utf-8?B?VlMrQkJwQURuQVFDRG5CWmNuVDY3L0FmWWpXaE9KMWE4bUhlUG1UZVdWVHpF?=
 =?utf-8?B?TlRHSEVOMVdWMVJVcGlMUzJ6Q0VPMGpTeWdCcDFjSjVpSElJQkxoWUJEQnFy?=
 =?utf-8?B?dmw3WFEzOFZ4SHFNSU5FUTdsSVU0M2w5NnlVMXBhVXFPdUExOHJCWmlmVmU0?=
 =?utf-8?B?Y21ZNGwxNSs1azc1U2tUamVLSnYyaHlTVjdZRlZCS2tIRE5oeHU0c2RpQnIz?=
 =?utf-8?B?Y0E0OThTZVlHUFloRTNRQ1IyYTN5SXZ1Tytjak5lZUNxb0lqUnNyUms1aEVE?=
 =?utf-8?B?TmlwUnkzWEVmbHNTZEw0bmtwMlRXK1JWU3d0MDM1R3hFZkNsMkhTU2h4RWRP?=
 =?utf-8?B?bFUvQkpPY0tsV0JudGRkMjlHUTFSbXlTSDVqZC9KWGhOZGtHRWRJRE1qa1I1?=
 =?utf-8?B?MnhtTFNxRnVvOEJDRlFKdSttdWhPTyt3azIvTFJ3cTMvaSsvY3lucUpJU2p2?=
 =?utf-8?B?OHkvdU4xcXRQd2ZqS2NJbHNhOW5HSGdqOGRDZmlyUW5Yd1ViZ1UzZVlkc1ph?=
 =?utf-8?B?aHlLTnFDVTUrdDRzb1VnU0FJUUFQNnVvbzQzK21GbjFoUGxta0lKc1lLUmdI?=
 =?utf-8?B?SVVvYm5veHRWZDBPd0tkeWg1ZjJIL3lqZG1FVWRpQUJDbmNHS1RiY1FrZ0w0?=
 =?utf-8?B?M2FvWHZvcWRjTlZPWVF2MnUxWTNMMGhBQTJnS2FDQ2lJMWxwTmMyT2tsQWQy?=
 =?utf-8?B?MXdFOE1iREJZMWc2OHJOZ1pTS2pKWVlhdmduLzBtU2h2dmRuL2ZYVU9yT1N0?=
 =?utf-8?B?eWJtdGZubEdEUGVmbkMzNi8xQjFDaXo4eHJLRzU3OERkUzdPSGNXT3BicXd1?=
 =?utf-8?B?dzA0OUhpS010eFc0eExJZFFSVDhaTmcyU3IzSFlnWUJXTndrTG5wOWJPejVU?=
 =?utf-8?B?VTNMYmd1R09vYVA3RUxqR1pRZzRTUnJLbzFnUTdyci85cWZKcXJUNDFTL3ln?=
 =?utf-8?B?MXUrb3VmNGk3VVJXZURxSTdwUThaQ0tqalJ0eE05MDY3SVdUNm9tTXo4NW41?=
 =?utf-8?B?MVRQczJtVlBMTGRtajhwclJXVkNvRWN0dUNBc3F0RG5pZ3RObjJXRUwvQWJr?=
 =?utf-8?B?b0lnamFFenAvSXJ2dzZESm5RbWZJNDcwUkx5ZFNDbWRzOElwS1R2bUgyMzBq?=
 =?utf-8?B?RW9WVW5jOTF5THhnZEltZjlLWnY5RE9VdHk5RngwNXBGdzJZK2ZQaDA3ZVMx?=
 =?utf-8?B?ZjdqcnpyVjBmamFjL1ZSNzUvdTRRUVk0Vk5HZTVmOUZGVEFUL1JwaVlFYktk?=
 =?utf-8?B?YmVqNk0xTUp2Smx6YnowYStMM09PS2VxU1orL2VhRWllSFExazNOMWphT2RI?=
 =?utf-8?B?RkNTK3BUSWttdzFZSFNCV3JoU3hWT24wVlpucGw3TXlsYTQ5L0J4dGJzem4w?=
 =?utf-8?B?WUJ3OFJUMTQ4dGlyQXE0WTV2Z1ZVQzdGdXhYMWNUbzBxVlFhK3JkbTdsWUlH?=
 =?utf-8?Q?houtgTAb0vk2wl6vggxrZhfVxiYJ0SJJ8ldV4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tk9jazM4bzRXazB1Y2JPZjkxUXYvWTJWRFZ6K2NzL2hKbWVpME1CNXE2aHZ3?=
 =?utf-8?B?ZDQwQ3FGQWx6YUJocnpsaEVXTlJYd09TSmdtODhnYjBNcmt2Q1p2UU1PY0VC?=
 =?utf-8?B?dDZZNG1yc3JTS2owOWhKVHZhNm1pRG9vM2VlV2p2TXFLdHpXVlpLeWxhQjRU?=
 =?utf-8?B?TnJrT2QvQ0NibTBSN1ZCRVpwWU5qMDQ2YTUrdmhPQUFURGI4MDVaQTZsS3M1?=
 =?utf-8?B?NWJBVk5kNFk3SjRYaFcrdC9tWUU5WndpbWcvcVo4dkdsbUU3djNmNERFS1Yz?=
 =?utf-8?B?VGVienhLTmVrVTQ5d0ZlTjF0b1lKY2Z1QTBrTUtXNVcwSTN5c3FqbFNkMlIx?=
 =?utf-8?B?K3M5Z3hzM3ExeS92M3docng3ZTZhanM4SG9PREg0ZGxCS29lTHpyK05Rem5I?=
 =?utf-8?B?RHVQcVFjanBEcTNPVG5oVXMzay9OR1p1R28rWm9vN1lrOVppS0VGc1NlS0lQ?=
 =?utf-8?B?eWpVVUNzdEI5azk1bnFFejFmc2lkZ1BYOTE1Z0xETTFkNmp3VUZ4SUdjQURr?=
 =?utf-8?B?VmwwQy9LdHNlRW9pN3ZNbFFUTVRJemY1cU44ZUliQVExQnIvRzhFdXczcm1T?=
 =?utf-8?B?cXp4b01xR0Q5L2JDRE4yclhpbURaNzNNT0M5ajljdkF0dTlaT0YreUpJNWhJ?=
 =?utf-8?B?aWkvWFZBSWNMU1pGMWdRMkJ1bVRMMjhQQ2dUUy9GYzdUVTVwZEtkREgvcEVP?=
 =?utf-8?B?V2U4U0lTVVZzRGZzQ1JMbE03YXpMcENmaHpGR1JjLytUQVM5dkZ5cUJQMFla?=
 =?utf-8?B?WVJqRUYwMCsvWDZWaDFROTMrQkxtSjQ0ZW1PdXN0TmQzWXVPZFlVdExpeVFo?=
 =?utf-8?B?UnFFZ0FuaHpzZ3IrOEdkbHpMNFRxV3NTKzN0VGoyVnp5WUppV3AzdVp5eUZl?=
 =?utf-8?B?djUvN3E3d2FoYncvUnlZVm9NUEhrVE5weXY0Z0pCV0k3bHRUTUl4c2t4WjQy?=
 =?utf-8?B?ZmNzY01qR2VOVkErSDE1aHowbWVlVGYvMkRndWhiSkhxc0JpNmRkbHVpOUlZ?=
 =?utf-8?B?dVhmamsrNnl5QTdaU2dWWVpLa3luODJOKzJqWENHQ3p4RjE2OWM0RnFqT0Na?=
 =?utf-8?B?SWZ3NUlhdnpSb2FsNEtsRElwYS8zcGsrUkhBYkxueTdmVFNGYnFJWDlscWgx?=
 =?utf-8?B?dFBjaWdJeXp3UEJkOTdjOFIvRjdxcmdNNE5EYTZ5NnV6TXFWMlNCMkF2OE5M?=
 =?utf-8?B?NklkSFhyRTAvKzhXU2I3ME90N1FlM0p6L3VQQVNCRFBia1ZwcEJhSGZqenli?=
 =?utf-8?B?Z0JERWZaZDdLZWZkRUgzdHVSNS9oamV4OFBqejlkSVZVYTlKajhWRHZiMmNF?=
 =?utf-8?B?eTVPOTZLVUxxb0pSQ0JiMHRoM3ZxdnpoUVFjY29pYmN2VXlJbjFqUHNsQSs5?=
 =?utf-8?B?ckVleHp6N01aRWJLcXZEbnJ4ZGg3bkthYzBpQ2lYYVhZckxORzR5VDh3TUFF?=
 =?utf-8?B?SmFBYWMzVm5mQTlxUnZBc3M1Q1pwSzRkc1NrbUlpdTNlVkNIeEQ0VXVTZE0w?=
 =?utf-8?B?OUo0NVlpbjRUeVBISDVKaS9XM1BxRXNtdk12RUZJUGI0OEllVzAxOGxYeVhQ?=
 =?utf-8?B?anp4Sm9JUU01TVo0d2JvSWVaM3Q1ZitEVFZMSFRrdGtkZTVJcTVsdWw0YllP?=
 =?utf-8?B?SU0vTW1JbTFQKzM5WHpKUE9GQSt4SDROL29oSmRWQW5VSjE5YzAydHhXMnd2?=
 =?utf-8?B?NDYvWUMyYzMrd3kzU3hKSE1oaWRqL0MvTzZ5aE5tZUZ0c2ZJNGhIWktoQ3ph?=
 =?utf-8?B?RHhrVHoyOVRRdTJ3NHJJdlNyM2JINE9qZTZKQXB0SngwckFQVHdDY253cFVB?=
 =?utf-8?B?TWNtTlJnT3hZWWJSWjlJRnFtUjdSSnNMVGF0c0JCaEpUVWxNb3NtSmdWckNv?=
 =?utf-8?B?UjFjRzZUeEVjTVgySjFLZCtNMHRwWnpIdS9rVnUvV2doTVhXeWZPWVV6b2RU?=
 =?utf-8?B?WWUwa2VLZng1STdEWWtOWXhsRWc2Q0hyUnpqV3l5VWNEUS9VMmZrdGxHcXpS?=
 =?utf-8?B?QVVVNjd4SXRGMVdOcmZBUGN4RHFJM2UrMENXUlMxRWJWc1E1ZlJwZXNQWHNi?=
 =?utf-8?B?MHA5eGxac1FOMXdGQ1YyeitKOFMzM0o2NVJmbEluR2RhUmc1SitvSjRPenhV?=
 =?utf-8?Q?E9xHgmLD6lbygii3QT7aUnYsr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ce44434-2d66-45d4-0070-08dcc80bd7b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 09:20:36.8607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q3byn8oK2wVqgMJhyPufsWMwFzv9GHOwLv/xIq9b6VP5ps7DVa3bmqg1ELcIcveiEbXqjclnT7wA77sSrVjGZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5205
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAxMCwgMjAyNCA2OjEyIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnDQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTU6IEZpeCByZWFkb3V0IGRlZ2FtbWFf
bHV0IG1pc21hdGNoIG9uIGlsay9zbmINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBPbiBpbGsvc25iIHRoZSBwaXBlIG1h
eSBiZSBjb25maWd1cmVkIHRvIHBsYWNlIHRoZSBMVVQgYmVmb3JlIG9yIGFmdGVyIHRoZSBDU0MN
Cj4gZGVwZW5kaW5nIG9uIHZhcmlvdXMgZmFjdG9ycywgYnV0IGFzIHRoZXJlIGlzIG9ubHkgb25l
IExVVCAobm8gc3BsaXQgbW9kZSBsaWtlIG9uDQo+IElWQispIHdlIG9ubHkgYWR2ZXJ0aXNlIGEg
Z2FtbWFfbHV0IGFuZCBubyBkZWdhbW1hX2x1dCBpbiB0aGUgdWFwaSB0byBhdm9pZA0KPiBjb25m
dXNpbmcgdXNlcnNwYWNlLg0KPiANCj4gVGhpcyBjYW4gY2F1c2UgYSBwcm9ibGVtIGR1cmluZyBy
ZWFkb3V0IGlmIHRoZSBWQklPUy9HT1AgZW5hYmxlZCB0aGUgTFVUIGluIHRoZQ0KPiBwcmUgQ1ND
IGNvbmZpZ3VyYXRpb24uIFRoZSBjdXJyZW50IGNvZGUgYmxpbmRseSBhc3NpZ25zIHRoZSByZXN1
bHRzIG9mIHRoZSByZWFkb3V0DQo+IHRvIHRoZSBkZWdhbW1hX2x1dCwgd2hpY2ggd2lsbCBjYXVz
ZSBhIGZhaWx1cmUgZHVyaW5nIHRoZSBuZXh0IGF0b21pY19jaGVjaygpIGFzDQo+IHdlIGFyZW4n
dCBleHBlY3RpbmcgYW55dGhpbmcgdG8gYmUgaW4gZGVnYW1tYV9sdXQgc2luY2UgaXQncyBub3Qg
dmlzaWJsZSB0bw0KPiB1c2Vyc3BhY2UuDQo+IA0KPiBGaXggdGhlIHByb2JsZW0gYnkgYXNzaWdu
aW5nIHdoYXRldmVyIExVVCB3ZSByZWFkIG91dCBmcm9tIHRoZSBoYXJkd2FyZSBpbnRvDQo+IGdh
bW1hX2x1dC4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+
IEZpeGVzOiBkMjU1OTI5OWQzMzkgKCJkcm0vaTkxNTogTWFrZSBpbGtfcmVhZF9sdXRzKCkgY2Fw
YWJsZSBvZiBkZWdhbW1hDQo+IHJlYWRvdXQiKQ0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTE2MDgNCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMgICAgfCAz
MSArKysrKysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jDQo+IGluZGV4IDc2MDJjYjMwZWJmMS4uZTEy
MTNmM2Q5M2NjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX21vZGVzZXRfc2V0dXAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBAQCAtMzI2LDYgKzMyNiw4IEBAIHN0YXRpYyB2b2lk
DQo+IGludGVsX21vZGVzZXRfdXBkYXRlX2Nvbm5lY3Rvcl9hdG9taWNfc3RhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUNCj4gDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2NvcHlfaHdfdG9f
dWFwaV9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gew0KPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBp
LmNydGMtPmRldik7DQo+ICsNCj4gIAlpZiAoaW50ZWxfY3J0Y19pc19qb2luZXJfc2Vjb25kYXJ5
KGNydGNfc3RhdGUpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiBAQCAtMzM3LDExICszMzksMzAgQEAg
c3RhdGljIHZvaWQgaW50ZWxfY3J0Y19jb3B5X2h3X3RvX3VhcGlfc3RhdGUoc3RydWN0DQo+IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUNCj4gIAljcnRjX3N0YXRlLT51YXBpLmFkanVzdGVk
X21vZGUgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiAgCWNydGNfc3RhdGUtPnVh
cGkuc2NhbGluZ19maWx0ZXIgPSBjcnRjX3N0YXRlLT5ody5zY2FsaW5nX2ZpbHRlcjsNCj4gDQo+
IC0JLyogYXNzdW1lIDE6MSBtYXBwaW5nICovDQo+IC0JZHJtX3Byb3BlcnR5X3JlcGxhY2VfYmxv
YigmY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQsDQo+IC0JCQkJICBjcnRjX3N0YXRlLT5wcmVf
Y3NjX2x1dCk7DQo+IC0JZHJtX3Byb3BlcnR5X3JlcGxhY2VfYmxvYigmY3J0Y19zdGF0ZS0+aHcu
Z2FtbWFfbHV0LA0KPiAtCQkJCSAgY3J0Y19zdGF0ZS0+cG9zdF9jc2NfbHV0KTsNCj4gKwlpZiAo
RElTUExBWV9JTkZPKGk5MTUpLT5jb2xvci5kZWdhbW1hX2x1dF9zaXplKSB7DQo+ICsJCS8qIGFz
c3VtZSAxOjEgbWFwcGluZyAqLw0KPiArCQlkcm1fcHJvcGVydHlfcmVwbGFjZV9ibG9iKCZjcnRj
X3N0YXRlLT5ody5kZWdhbW1hX2x1dCwNCj4gKwkJCQkJICBjcnRjX3N0YXRlLT5wcmVfY3NjX2x1
dCk7DQo+ICsJCWRybV9wcm9wZXJ0eV9yZXBsYWNlX2Jsb2IoJmNydGNfc3RhdGUtPmh3LmdhbW1h
X2x1dCwNCj4gKwkJCQkJICBjcnRjX3N0YXRlLT5wb3N0X2NzY19sdXQpOw0KPiArCX0gZWxzZSB7
DQo+ICsJCS8qDQo+ICsJCSAqIGlsay9zbmIgaHcgbWF5IGJlIGNvbmZpZ3VyZWQgZm9yIGVpdGhl
ciBwcmVfY3NjX2x1dA0KPiArCQkgKiBvciBwb3N0X2NzY19sdXQsIGJ1dCB3ZSBkb24ndCBhZHZl
cnRpc2UgZGVnYW1tYV9sdXQgYXMNCj4gKwkJICogYmVpbmcgYXZhaWxhYmxlIGluIHRoZSB1YXBp
IHNpbmNlIHRoZXJlIGlzIG9ubHkgb25lDQo+ICsJCSAqIGhhcmR3YXJlIExVVC4gQWx3YXlzIGFz
c2lnbiB0aGUgcmVzdWx0IG9mIHRoZSByZWFkb3V0DQo+ICsJCSAqIHRvIGdhbW1hX2x1dCBhcyB0
aGF0IGlzIHRoZSBvbmx5IHZhbGlkIHNvdXJjZSBvZiBMVVRzDQo+ICsJCSAqIGluIHRoZSB1YXBp
Lg0KPiArCQkgKi8NCj4gKwkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgY3J0Y19zdGF0ZS0+cG9z
dF9jc2NfbHV0ICYmDQo+ICsJCQkgICAgY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQpOw0KPiArDQo+
ICsJCWRybV9wcm9wZXJ0eV9yZXBsYWNlX2Jsb2IoJmNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0
LA0KPiArCQkJCQkgIE5VTEwpOw0KPiArCQlkcm1fcHJvcGVydHlfcmVwbGFjZV9ibG9iKCZjcnRj
X3N0YXRlLT5ody5nYW1tYV9sdXQsDQo+ICsJCQkJCSAgY3J0Y19zdGF0ZS0+cG9zdF9jc2NfbHV0
ID86DQo+ICsJCQkJCSAgY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQpOw0KPiArCX0NCj4gDQo+ICAJ
ZHJtX3Byb3BlcnR5X3JlcGxhY2VfYmxvYigmY3J0Y19zdGF0ZS0+dWFwaS5kZWdhbW1hX2x1dCwN
Cj4gIAkJCQkgIGNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0KTsNCj4gLS0NCj4gMi40NC4yDQoN
Cg==
