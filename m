Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF2BA50337
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 16:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30AF710E86D;
	Wed,  5 Mar 2025 15:04:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CEwYZRaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4899210E86D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 15:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741187050; x=1772723050;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=O/RBL1t0sv2rG8Jkme3CGxj0KVmeY1NQtVG6wW67wUk=;
 b=CEwYZRaBVB+XytAvWZW5phQXFT6QT33KZNEJI7TyUpd53RGJvl+L/hqH
 rJE66in0qYjV/rKdtx8ESqun7M2zR/NNAcQ1aVAWwiVRovai4FJofSbDr
 bkLYX2RwXaYT1qVyKGm5HAlG89HZCriMMdce1T5nwCJ0EMpGnsecOTXfk
 zG+zyRkzVEJC7wLslMn2TgIdxRazxoRr4CFHZlEbiqxnSyWBhfk0d289z
 nwf61E6Z2MnF/jO6QI4LwjWp2oMMMaesnnHxbICsyj/iikwB3nTjOnt/O
 dZidr70jyDduzEry0Obsh51i9RQ62dEonyFapbH6f2JPuRP30v6Ps2ogI g==;
X-CSE-ConnectionGUID: W2bdja9gQHSYeCM64+jZ+g==
X-CSE-MsgGUID: TGUMP6j9TgSJbCfI444JrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42397795"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42397795"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 07:04:08 -0800
X-CSE-ConnectionGUID: WcR9komRTdScvYg2jPGqsw==
X-CSE-MsgGUID: lyLNZLjwRvqu/OthbyMLWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118634241"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 07:04:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 07:04:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 07:04:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 07:04:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Efys0DvqBRJr0nhnwHzG6lsQQssdcxhol+dVt0gknbxOGFR5sk6j2g8GdCANbkIl02TpWPiRD9X8pIckUmrG9PzseTqOn6W4g4uFARNa9DHMMD9oRPPssB4GNNj5MxFefe5A8nNyd2ea55RJjcKIQvkw2mgpMg7ppQmWhsmaweGwHb3yqBHLdrmwFgd/FeW1pzM57+A6ykBO0iik9cjECsSQKYyfXbj72Pfx7MJ0duQ470iiQMXDFhRQ3MniwJPejh1Mle4tmPD5kllCT13oy2/sJ11eXSApXOTyAl+4agPIATYVDWhZyXitzuCwR41T/NenFyrtUcwtuLK1n5A9Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/RBL1t0sv2rG8Jkme3CGxj0KVmeY1NQtVG6wW67wUk=;
 b=NSqGfLmFFVVR0ZwhvsWam1kqMBXL2QZ/dOUBQpi0MSLkIqN49jW06o6dldJZWaAxsdeKgv8UNG76sHNikbgwj5hNejMWdWlrJ5pLraox/plqOVqIoHNV/dOZY+3ps3YdtlcpaZDEA6dBt8A9aH/eyZiwJTnCyDnPSydNadQspNDNMgEDX8Z/RgNBtrTfvTOPCbHo/Mmpl7V4YC9OAtgLNlBgI0jsSaig398W4oAhuqhlNuShJ7hHBxsucWc3Ibj5cwzF5W66Df4AHhjnK6Mm0OQlf8M/Doe0Qzjl5i9kTt2LK0VkjzhrqFW6RVD1gw5TRaxXWAGJkAppHObkCGWKqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Wed, 5 Mar
 2025 15:03:37 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 15:03:36 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 5 Mar 2025 15:03:32 +0000
Message-ID: <D88FA6QUX1M7.32UD9S4UOYQSI@intel.com>
CC: <andi.shyti@linux.intel.com>, <vidya.srinivas@intel.com>,
 <matthew.d.roper@intel.com>
Subject: Re: [RFC PATCH] Revert "drm/i915: Disable compression tricks on JSL"
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <z6xndjwwwnck67qcv2355v5qejq64qldziqg7saint3eqe6fo2@6sx7xyh5juvc>
In-Reply-To: <z6xndjwwwnck67qcv2355v5qejq64qldziqg7saint3eqe6fo2@6sx7xyh5juvc>
X-ClientProxiedBy: DB9PR06CA0006.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ2PR11MB7573:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dce27c7-b8b2-409e-4ee2-08dd5bf6e790
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TldlUjJuUHNOME83dmN3TFdoR2pmSm1YdGFIYmNaeTl4QWxkOHBCTUlLVzBK?=
 =?utf-8?B?c0hnUGNjLzkxVzlhZ3FvbDJOQVVtZHowbnVOYlFoWXAzMkwwZXdTWGRFdlVs?=
 =?utf-8?B?YlFyVk5YNEVDMmhQRW10dlI2ak9hMXdKUUVPMFFXMnZQcFZ6TThyb2Jvc3Iv?=
 =?utf-8?B?bnVhZEhVMm9WOStpbGo2WEF3aklCNU5BbEwxcytTU21ObUFwL0ZxZzFvNWRh?=
 =?utf-8?B?eCtNUmYvdUtWandXREdiRXFtWFFwZDNmK2hQUVpkeTdpRkMyOFBxa1ZmMmU1?=
 =?utf-8?B?bWxBN2p1TExaUjlWaU9wOFdCVDhrejJoNm1vaGxCbTRvRVpLVE1UN1hzY0dQ?=
 =?utf-8?B?SGcrc2l4ZG13QWlJVWltSEpybkhZT1NrcWRtOTY5RG5CMGNuMDJXazVKSWow?=
 =?utf-8?B?dnVLSkI5bVE1YlU0TDdQclllaGcvUFJhb2dYcHdKMnExemR6eGVxNGRpOUgy?=
 =?utf-8?B?TXd6MWFCNkRackpYU0xVbnFYU2JLS1VsTzZzUFFqeGt4TGFrcXdOZEdlUTI5?=
 =?utf-8?B?VmdDNlA0YTF5ZWpNQ2h1RlY3dVo2Sk1SVm5hR3Y0NXBQdkxzbmRrWHI0dUMv?=
 =?utf-8?B?OUt6MmpEUDdkQnc3SlNkamhFRWZTeExvbno0UlNubFUvZ2ZNSUVPcXVyYi80?=
 =?utf-8?B?MkxVd1pJdWFVcVJ0S2pIOEJ4QkZlSFZ0cmFhYW5HTjJCTjVDT2JMaHF6VSty?=
 =?utf-8?B?ZCt6eGN1N0ExQk5Fd3crUW5lYUtJMkJrRUpZZHNjU2tQczIzcTNzKzh3dDNY?=
 =?utf-8?B?bXk4M2NmMEhaVGdCQ0svOU9YSzFINTU2OEVEOXo5aDZGVytlaW40eGIvNGZq?=
 =?utf-8?B?dHFqVEg4MUU0WEpqQmlwNm91OHQwMXRSb0dPWXRjS1d5VG5wWElVcUVndHJa?=
 =?utf-8?B?c0N4ZituNWVUZ3ZWc2V0MWV5NHVUb0RvOU0vcXA0cXF6b211eWxUdHpSTmJW?=
 =?utf-8?B?eEVmSDNtdjNTenBHblF0Z2hRWXpzMGpKc1BoejUrWWFnYVNjdDcrR3B3TDFJ?=
 =?utf-8?B?dUpJajJFNEFpRzRKTmNRZnB6cExMWkJ1KzZ5OC9NZGdJWWlVWUE3YVY4a0hk?=
 =?utf-8?B?dXE1RWpid2ttM29BRzZUOHJTb25SK05NdWI1am5XR0lVdVVsQkh2bVkraU4v?=
 =?utf-8?B?TGx4UnRxdW5aaHRhWUxXZ1pXRDRuL3NFRlBzOHdqazBYcW9STFBsbnN0Zkdo?=
 =?utf-8?B?Y2luQ3pXY3ZVUDhPQmszOUdobXFXRVA5aWtvM1l5VWh3L3pZYXl1aHNLeFlU?=
 =?utf-8?B?ZFNkOFBkNUVkWHcxMkY3N1NhN3IzWHJseFFnWldoeTQ3b1pGTnJpYm9lV2pJ?=
 =?utf-8?B?akxScEJNdnh3WWUveGVRak9lZElldnhTUTV0THpyTk9PWTRvalhEbkpGZUlW?=
 =?utf-8?B?RGN6RlNkVkFUbWNUeVFEckoremNRSHl3MEJlVkdzRFZ6bVE4OFpkeGE4Rm9C?=
 =?utf-8?B?Z3cvSVZOL3pEcUs2UWFrazc1M25sTW11SnNLUGR3WEpUQ2JYR3dJbUliNnRQ?=
 =?utf-8?B?ZU8zb3ZUQm1CNkRxQWdqWnRkbFE5SVFUdVlpdFNNTkszbHlBcHdLdndyTGFo?=
 =?utf-8?B?czkzVGhqYXQ2TzRNKzJzekYrVUZlaDBab3RJUVhKeTY4VmllUFN6MUFqc1Rm?=
 =?utf-8?B?NUR0N3RSRHFaT1A3WW43YVcyMllqSXdjMEsxUkMwa3BtWUlxMzBrNDE4WERl?=
 =?utf-8?B?N0paaU9OSnFtemNBWi9FQVZuOWhoZlpoS0xTTG5XaElFcTlCWHFTV3U1R3Jh?=
 =?utf-8?B?MUF1Vm1lT0gyWmRIOGdiQW9UU2JZdDZHcFJyc3djeHRPZ2hZZ2JBM1JqcS9a?=
 =?utf-8?B?VktSK05ya2R1VnhEK1kxeTNSNmlFbXpqMlJkNnZ0bVA4cVlqcENEL2RKV2kz?=
 =?utf-8?Q?LUCYe1gj/ZcQX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGQ0bkEzVDBjVUs1aHJmODVFbEFzUTltMmpTWUpnZGYyQlhBbXlSWlpKSHA3?=
 =?utf-8?B?dTNHbzhudzE2bkFKVy9jV25OVlBOeHBhMUpMZ1c0OWQ0K0FIeHptTnNCR1li?=
 =?utf-8?B?MThvQk1SdDNaVE5CZlpkWHUwa1ZtaHlNOENWVU4vaHlQdVR1bE5qZGNGY0dn?=
 =?utf-8?B?MkNMMXlLd0djNFVOWEd0YmExTDdqaFR5MWc0ZlEyYm9CK3dFVTEzc01UV1N3?=
 =?utf-8?B?aG5wdUZERmpOVU9rMm9md0h5ZXB5bVJ6R2diZ3JkQm5nUjNMeEtnSEJDR01O?=
 =?utf-8?B?ZjQxc1JpVVoySWE5bzV5M0lCY1l3TFFSTUhSNmUvaVhhbzk2cE5IbTlwLzJD?=
 =?utf-8?B?SVR2UkF2ZTdaYTJzR0drSUpvWVM1K2FuVE1JeDYzRTZhdVE5YzkwVFZPY0xD?=
 =?utf-8?B?cGtXSzViZm9uMHBWc2FzOUF5bk9PSmNxVUNsRXZza0pKRnl3S1pSc2RjYzV0?=
 =?utf-8?B?MEZQeWdXRkxQOVRxZzJHeDhhdkxVYVdnZGNmN3Raa1E0eXpZQmt6Sjl2ak92?=
 =?utf-8?B?Myt5cjVCYmFubFNIQTFTcXpzRC96Tk16b1pkcmh5OERMVWhONFgydjE0VjVt?=
 =?utf-8?B?emRHbVdSblBDSExtdVRYcWx6N0MwS3RZR1NSZ0ZXOEg3SmF5R1ZwUjNBaUFs?=
 =?utf-8?B?NFVScFAzTDAzNDhLdU5DVldmVi95K1BLQi9zTytDTVd4Z2k0N0JwY1FBR0dN?=
 =?utf-8?B?a3ZZWlFYcmdFLzc3cUdkVndvNnRqaFdISkovVm10YmpETGtva0NBdG0xWk5y?=
 =?utf-8?B?MG9qTkNtcUM3bnBvY0NHeFNMUzNMcjZNTDlJTG5aYUdZcEVLempqZU81ajlp?=
 =?utf-8?B?VG5VUWtzUjIxYUNVZnpVS2FjdHo2SzNxL25hMWZ2K0dtSDE1bE9TcjZVaGtO?=
 =?utf-8?B?TFhkcVJLYjNMM1d6YzQzOG5VQXF6eFg4TlJGNmR0RHVTQjJxMVoxRjBHcmFH?=
 =?utf-8?B?SlVMTzR4N2JReDFTME5UTmNlOWo5TUJLckVDV2dzY1ZscHFLQWludk1UVElt?=
 =?utf-8?B?VFp2akQ3QzlJQk1WL1I2VEZ5RWhjajYwM2dqSEh2eUhFeVZlQldDdkFZM0ZH?=
 =?utf-8?B?YlBrdFROL1ZHTlZjU050c2hITDV2WTM2dWFaYmxjS3dBVFJXT0tySUQ4NVY4?=
 =?utf-8?B?VDhVd3ZOWHlCaGI3VjhsT0w5cThjcWdSS3cxWm9QMTZhcUVNUHZERVBRNEJN?=
 =?utf-8?B?OXNydFdrS0RzOXJPb2w4Ukg0WTkxV0w5dmJnVUowQ3JaWStLQmYwVThpWTkx?=
 =?utf-8?B?TEZLVUl0cTdqR1Uya1FjVzRWdURCRWlPZmRNd05oNW9xT1JZMWpwd1lJVDhI?=
 =?utf-8?B?QnJLOUNBM3gzSVQ5b3B2TUx2VzJGRlZqZndObjFwakdwUTNtWitRenorSkRE?=
 =?utf-8?B?UnRtNElHQXFPWFR5Y1o4QkFaYUZBNnQwaFlZRnZqVk1peXZjenVKTHRjYk5i?=
 =?utf-8?B?VENtWlRFWXRkZ3d3S3cvdkxnbko5c0FTeGNYSTBkVG1JT3lwQVFWcCs1MHFV?=
 =?utf-8?B?UEgrWi80empRaXJwZlpnTTE1NXZ3WE43RlVRM2ZMb0hsa2psUnJDNmp1bHRW?=
 =?utf-8?B?RDVoblRXYXlIYkF5MTBLUmszb3Brd1pmRzJQQ2x1SG01L0swWE5tQjVuS2Zq?=
 =?utf-8?B?WW8rVGpSanpESDI2T01JU2lXQjRhU3g5VlZCeHUxUmR1bkdFdkxrL054NVVp?=
 =?utf-8?B?QjdsTHRmUUdzTnkvb29BME5pdStUeDRnZHBRd1dzSEp5aUREMDBXYUxGYkxp?=
 =?utf-8?B?Zk1mNkh1NnkyYXNlaTdkcmFWK09hUFF1SzlGTTRnYjIwNW5HZHhVL3VqTHA3?=
 =?utf-8?B?TlJidmJRdUdSSXYvSkVWc00za3lqa1EwbGYxMlFOMXFPRU56VWJJSmF1Tkc5?=
 =?utf-8?B?N2xjS3VIZWdnMEpmQ1dwVDlOUkVVSFJIMjBtczNFcEE2OG1DTk5mb011U2gx?=
 =?utf-8?B?TnErTFBPNnZpWVlScndvbkRoMEF2UElUS2ZiK2dMRVBnVXl1cXg2akhLTlM1?=
 =?utf-8?B?cjNRajQzNytqM205dlQrcml3ZjVUUS9mWjN2eU5maUJJSGl5aTA5dHY4V1Nv?=
 =?utf-8?B?cG4zUU1xVENFdkh6eGRQYTgzQUVxZGx4V3BKcHpPNWlzWTY4ODhCWVlpMnVa?=
 =?utf-8?B?UE9nWDRjcUt0RTdGM2dIc1N0eGx0eDY3MkZLVExiVStid3pYclA0MkJOODFS?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dce27c7-b8b2-409e-4ee2-08dd5bf6e790
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 15:03:36.3277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VxL/+Q5dTQCDW5shxmUNgTsPkj54eHE0hvi+IssM7Z+s//OnMDt5p/TZkTamw1+LV7NKDkPSyGpGPegMXJvDa5gagFZK+HsijsvOqyKKuMU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
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

Hi

The bug appeared recently once, and it is possible that it will pop up
from time to times, so it might be better to get rid of this workaround
from the kernel, especially since it's already in Mesa. I would like to
know, what you think about it ?

--=20
Best regards,
Sebastian
