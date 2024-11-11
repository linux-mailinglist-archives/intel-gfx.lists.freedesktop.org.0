Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C91E9C3C8B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D2B510E1A3;
	Mon, 11 Nov 2024 10:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CHIOx6it";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F3310E1A3;
 Mon, 11 Nov 2024 10:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731322746; x=1762858746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KXJ0313ddyNwsie0lULzBDXQeubRRXq57BFLzh2aiew=;
 b=CHIOx6it8naCRs3U79uD6UOwPCAeTFJ6LFp+8NgZFpiWOFrDBoXgVgTA
 3ZJ9fql0aSS/2lvmB+x+gIvwtVxJS0pvIrTukfmcPFNjDU1IvcLGsiGQ/
 KhbpmkSva876gGpgFWMISnNdgNBlCAKHq9Bl4YJ5R0zn4AUSWK0vwzg6R
 HBynR5huP+D6Eyqn3tbet0lE3YvTe3Em9rzvadvvv0wUHU3bdUBWlx6bU
 xXJkJ1QRpOBoKvbGxI21/xkUTS4IoxzkQggyDO/WxS7Tlx7CSGl0Xer2i
 MoUrWaCEbURCqmTAgf5rHFQ27UBm/M5zxgUWmT6iNX3FLf27KuAkDvbxN Q==;
X-CSE-ConnectionGUID: vg7Ph9tTSqeSfomMVEwUpQ==
X-CSE-MsgGUID: taJPMkh5TiKzyDsHzmYDXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41684197"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41684197"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:59:06 -0800
X-CSE-ConnectionGUID: Aw6hBS9LRm2WD1bYZCVHog==
X-CSE-MsgGUID: mTl0yjO0RkeiI0TKuKF4+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="110132377"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 02:59:06 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 02:59:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 02:59:05 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 02:59:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sdQ/YmUvCZjP1xaP/z2KLdgiqrVpAuMc8mfLl2hd5YwjPHpfswzXvuuusntMDHl1kInlPszGWww5hgL4CrVhKlUbNmu/8+U0tU8fPAl+Io964dPaI6BVgVdja/6N01zgNwKND/PcmfqHsoop3HM9NUBOGQzP92KAH4JPUILgj10Pff/0THzaLu6TcuHppGJFcZBLrUuWdiyPOxLhZk9W2Q9/wPVmqZH3u6eBBYbuW5a5KRh3hhUSaSunwkAhk3eO+OVO9rGu1CwEqIJJlKodpfknrW1ibY2l5brKO78t5iDS3ZVjYGTp352/0JMGv65SR77a5ZGpEJxrO70/MPUtAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KXJ0313ddyNwsie0lULzBDXQeubRRXq57BFLzh2aiew=;
 b=yO6FPbOUur8VZwd8ho2/ha77CnEacDHVoTRQ2oNMm3VbeyPWXUoj5FNbVwCgAlFkv4OJsO8hN94Mih3V9ecil3cnkMl3jVe3q1MUe94Md9QxiAnbjCBta+xVIU5NTgXoOOSMi/FdFSmoP8fw8d8AIWHCU2S6oBJp+JG3QiZsiHmbEb6sfcmQgx/Ve+/zY4zzgIS/eE8XsnjhAKeoXlaIGTdMnsL7C8T2bO+p30C34X+mRGPmLq3tG3UpXsfm02lbZtmU+SHkXEx+vgcFOc15nShVi5QzT8qNsR4dl+GoBwtZ7KUNpzFL68avhimwx1MmzW7ghLbi10Hjmxg1EoBwMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB5923.namprd11.prod.outlook.com (2603:10b6:806:23a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Mon, 11 Nov
 2024 10:58:57 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 10:58:57 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbMbtnBGwzgwC6lk6bYjYfz4fN2bKx7e+A
Date: Mon, 11 Nov 2024 10:58:57 +0000
Message-ID: <1dd485801be63c9ccce0800db1ffc3fa70f23746.camel@intel.com>
References: <20241108085048.919665-1-suraj.kandpal@intel.com>
In-Reply-To: <20241108085048.919665-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB5923:EE_
x-ms-office365-filtering-correlation-id: c9eab350-a8eb-41e4-6051-08dd023fd759
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cTFKVElvWHI5NGVBbVR0Y3NKMnl1Tlg5NEJXbG5TNitnSlV3VTdMdUdjUzZp?=
 =?utf-8?B?bTF6N3dXY3loT2g2akpOSUVUa1BCNy9SWFk2RHpsd1o4SmRsUml2YjJiVWxn?=
 =?utf-8?B?aGZvcWh1Sy8zT05oQkpUUWhmb2pBeVhVbmJyVStlM0lPdzNvV2wwUi9xUlR0?=
 =?utf-8?B?cGVVRXNZeGVXdFJleElGWHBrWnM3R3JPaE1pSTljVzU3M0hIVC80bUk5Tmky?=
 =?utf-8?B?WW1mdysreCtOdXU1VTBDWWVmT0NtNU9zbFV4dW03RWQ1M1RZeXhwSExaQWkx?=
 =?utf-8?B?V0ZFdzlmc2tzSnA0aDRXaTJSSUZyQjdNOUFUdVJPWGVqUzhKa3ZGL0F4RjFX?=
 =?utf-8?B?OHRqOEFRbWpHVk1uTlFDVkphV3d0eWNQVDFjMWxDV2Q4aDRWNVNnK0JEYU8z?=
 =?utf-8?B?RENWckMvcGF6aGZ3OVJPVXQ5M3Jvdk5CSzUxWXB4QWpJWTBuWVBFUituV3ZU?=
 =?utf-8?B?bEhmVWJac3lVcDluaWhKME1XQnFHVHkrRUpvbUxQSGRnenFleVU2ekxrUGVH?=
 =?utf-8?B?MFRQTGVHT3dQS1NXd21HV2c3WE9pOCsxN0o1Z3lFSnY4N2NQdHM0UWgxdEh5?=
 =?utf-8?B?S3huUlJObnMzQm9yVnBYdm5lUDZkVWd6cXA4UURjbkpzK0Z2bzZBdWhhTXN2?=
 =?utf-8?B?b2JmOWdoTkhDSDdFMFJWMG0rUG9TeHZtYkVkRHdydnNCZitEVWRPNXorTnZN?=
 =?utf-8?B?TzFudDVLSDJDSVlOZkkzRHhxQllLb1Q0bEdkNUtVRHdBcWhIaGNkWVlLbDI4?=
 =?utf-8?B?eDZxWWk0SFhBYldXWjFrTFhtWDVOUzYyTWFncUxQa213Sm02VFh2eXFUQmNU?=
 =?utf-8?B?UzVCK0VVM1Arak5VQmFmZkFVaHVlbTU5cU52R2hhcEluYkJZcTM0TFJRanhp?=
 =?utf-8?B?QXVaekd0L1JjRUJmeHlYZFNENXZrSzQ1bnZIS3BwUElwR04xMUlXcGovSGxX?=
 =?utf-8?B?WjI3RU1EaFRXWjIrdi90dzcvT05XZk5BYkgvSWh3cU5PNmpQTTRPa3dGMW40?=
 =?utf-8?B?YTlQSko3UEJsYnNPeWxaayt2ZFg5VFZIVEpaUDFjMWNwN0l0ZXNKdVBLWXlX?=
 =?utf-8?B?Wm12a0FySytmOWJRYlY1WTdIbDZxa01wYTJvY2Q3N204SnNyLzZtNU9GSTN1?=
 =?utf-8?B?Q1BoUFgxWkVVTUpHM1lDKzROSEFKQ2JEMlBoVE15blY0d0JHSXE4ZlVDZnFB?=
 =?utf-8?B?d2gydWZOT0JEUUtsRUpsRlgveTlYU2JyUjQ4WVJkdGlNS2t3K25vRmo1bWJB?=
 =?utf-8?B?cUMxKy9xaDRKQjdYbXUyU2RkbFFDUDh1YnU1NVdsV3dsZDBhZjVNUW0zSDZ5?=
 =?utf-8?B?c2xJWmlITWJwd2QwNXF3MWpqbVV3SHJqa0x0UVQxRmt1SjNyL3duYUlZM3V3?=
 =?utf-8?B?ek4weS9LSkxoRXlDOEpVMThiZDhEYSs2NnpJTWJWMkdxM3VZb0ZNZTNwRjlJ?=
 =?utf-8?B?RFIxL2FDTk5FWkMveE1hbzI1d1JtbWVISk9iZDU0ZHZtbGZXRDBjeHlKMHAr?=
 =?utf-8?B?SkZqZHVOKy9PbWwxWVdneCtlTHN3eHpFbi9JM2p3S0ZJWUR6U1dMMGN4RUpV?=
 =?utf-8?B?SUs0eWlQL3djMTV3NURMVTFqbmdFSUxPTzU4WmJmVWwydVdKOWw4ZFg2cGk3?=
 =?utf-8?B?SU9XOUw2ZW5Ed0dtM2kyN0p1U1pETCthUzh1cmNSeVQrd1VuaVB1TEtHUzZG?=
 =?utf-8?B?MjFrVDZ5c0RqZ0ZNWHh3VEEwdWw2eDAvc3BGSTA3MXZpKzNzclRpSzZiQ1pI?=
 =?utf-8?B?VGdLUGlJbTlqNTZVaXVocDV4Z0xNdnlJWGVTWDZPOUlROXoycUI2TGtxeTJq?=
 =?utf-8?Q?qCo3gXwHd1k6NLPj/XzEqZO1Kd29xUeP55+hs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjY0YmVZbmVEeEF1TVg5RlFyaGFFdFNoZ1gzN3pUeFNvZjUxYnpmZmdrcjdy?=
 =?utf-8?B?QmZJRU5keVFwWm5GeHZ3YXdqeHF0TTNsYXhtTk5MQzlKNmJWaUNseTJ0S1V6?=
 =?utf-8?B?MStwZjZjVEhTeFg0OC9yWWh0ajNaZFBMdXU0Umt3SFJhZWthS2VoUll2aHlL?=
 =?utf-8?B?TUREU3JjOXpJL09BU0FnOUVVREJNaWxKV0ZYaFA1MUZ6RGxNSjRDYmR6QjBI?=
 =?utf-8?B?UVh6Y0hlS1VocGp0VUYvOXRFbXdwbXJSNzdnMDJnRU9DdG11aC9reHJrQXBB?=
 =?utf-8?B?RmNaSkdDR3B2WlY3QkZuWGk4Tng2VUVCL0dzWlUvNHF5cEJxZFdYSXZ3ZDlm?=
 =?utf-8?B?eVlGeWRzc25XRlhhcjJJVmR0WU9UdG5XZ0l2SFliM1ZBMnpVRHpoZFNVbXN4?=
 =?utf-8?B?K3Z5U2M2S3dRZHk0UkJNSVFJa0NqSEQ1U0dZQ1RIMUw1NUx5VmVRbmRHdzVF?=
 =?utf-8?B?cm9VeEtPUmNCZ2s5WlA5Z3QrNWlTTDJObXBPSW9YMkdlUGpYVURHUHZ6NkZ4?=
 =?utf-8?B?U3Q5c0FYMExZZGh2SUdzNU5aVjM2ZVFWWGo4MUZhMElnOVdUMjJzMUdkdkxH?=
 =?utf-8?B?SGhGT2pBYmkzb05rRDQ1a2w0SHRiNGIwRlo2ZDlxdHIrOXNDVVVxSFhCOWlu?=
 =?utf-8?B?VUxjbkJGNXZ4T2pHUUlibHVFckxFZGlTTWx5Wi94cHlNb3gyb05xRzcwSEwz?=
 =?utf-8?B?VkNzdG1PNlNoSnZVN3B2NG9zTFZwR1Q3aUQ5WENaMVU3RFN4dkFWdFd3MFZQ?=
 =?utf-8?B?cmFjbnllTFh1K0lrS0hCOEw2SzVLWkU3dnhuUmlodzl6c0d4Ympla2ZVZ3Vx?=
 =?utf-8?B?Z1VlT2xpWWRPaEZ0WU92a21rdjdVd2tGeG9IVUZpRkdhMllOaGEwRjZWd3Rl?=
 =?utf-8?B?M2R3OUNqS2ZVcy9jeXpZNTRQaUNxYkNzUXRUK2lHdE9ocGNPeTRFQnZuQUt0?=
 =?utf-8?B?bURRTWlEMDZTdXluRXk4cnQwbEEyNHE5UGpBdnBUMXlSMGZuNkpacE1SV3hu?=
 =?utf-8?B?TlBpbHNXNlpSMFc5cVgzU0p0ZGczMFRhQjlSQXJjSWdpNFlEYlB2OTF5aHdh?=
 =?utf-8?B?QzFqWXE5SmYyTEZ0NjdXeGI5Tzc1MExuUXVnczR3RFFzN2RUZUR0bHlLcE5y?=
 =?utf-8?B?RUpjVEh5aWUycVo2SDA3bkNiV3hZN3Arc1BNekZNMCtDeDlIdDcrT2FEbjds?=
 =?utf-8?B?R0hDN0U1NE1TdWwzNGZKYlc3MDB4NWlGU2k1SitZZHkyeG1Jekc3QWFpYzdH?=
 =?utf-8?B?YXppZjFsRjZBN0Y1eSswNW5Tb25VRUh5dmZPMi8xeWFMTm1Sb2dWc1RiR0Ir?=
 =?utf-8?B?Ly9aVjV0R29BSU8rdWh4b201ODg5RGRVYkVTSFIxL1BEbzVzVUNUY0lmNEZn?=
 =?utf-8?B?RUVuQ3lDN285aWJzK24wTGVxL2lpWTVZWGtCNUhaMWFUdWhvelc4T3dpWDd5?=
 =?utf-8?B?V1c2VFdhcWJvUHo3S1gyODVrTEcxL0c0eGpaQ2Z6RVBJeWk2cnFraTVQT01I?=
 =?utf-8?B?ZllQVWhTSVNaK0ptUkNlcFFaSHN1K3RIMjJKYXBhZzRPclYzYVRYOWRvYmE5?=
 =?utf-8?B?Q3g5V3BYenJkVXN4YVlrVEQ2WCs5NUZYZERLRXZxUGU1NDB6TC9CR0NjRWx2?=
 =?utf-8?B?eDl4bXBudTNsMFVUTlZxWS9kaGpvNmpzZHdZMXM2czF4aHZnVHNOeWZ3WlF6?=
 =?utf-8?B?NTdMZUE3NG1XZTFDaEdrMzliL05CM3hJc2ZUamswbDN4WCswM1phYnMvdDdy?=
 =?utf-8?B?S0lMUUtnVHlUTFVic2pXd29ZZzRCb3NIMmxxR3V4eUN4RXdvbU5JQVovNVFP?=
 =?utf-8?B?c05OazdWbHY2ZVNETE5lN0d1bkVFc1BMUm9UYm4zeE90ZzdqYWI5eFIxKy96?=
 =?utf-8?B?K1lGTmE2RURiYW45a0JnOEt5a081SWR3L0k2Wkk1dlRlTUFZTk4rRUtNczd0?=
 =?utf-8?B?SDJIK2tRTjR2dmVId2pnb3hMSjVNKzNiT1BsWHdxUXRNNnhGd1B5WEd2Wkpq?=
 =?utf-8?B?RlRzTWtQK0hibVZOd2RBQkxkVXVXaUJZT2hURll5bEJ3TjdjclVObnJzU1VV?=
 =?utf-8?B?SzdHRTUwUXFWVEZTL1dSdy9LNFd5Zi9MMHYrTExjWUFzVkZzRno0bzM2RzRU?=
 =?utf-8?B?UzNQRXlCUmxsd0pqTnRMRFk3Z01mWWZ4eThhSmdrdHgyMnBxUTIwaWxKZXhp?=
 =?utf-8?Q?kzdqPwTJzwuu6dmpRY3sWXA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <052D31161275E94A89DE317CE66F9065@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9eab350-a8eb-41e4-6051-08dd023fd759
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 10:58:57.5246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RHo62cV4mZmjJZLch6snlHlhbGGs6M4waU/myi9Mv9YXNZBa3QBBzAX0jVhS/Nzw76kbjpzO43EOdQMAKHf2HXbVgJ+cuQHm0EMHLJjT06c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5923
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

SGkgU3VyYWosCgpTb21lIGNvbW1lbnRzLCBwbGVhc2UgaGF2ZSBhIGxvb2suLgoKT24gRnJpLCAy
MDI0LTExLTA4IGF0IDE0OjIwICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOgo+ID4gSW5jcmVh
c2UgdGhlIGxhdGVuY3kgcHJvZ3JhbW1lZCBpbnRvIFBLR19DX0xBVEVOQ1kgbGF0ZW5jeSB0byBi
ZQo+ID4gYSBtdWx0aXBsZSBvZiBsaW5lIHRpbWUgd2hpY2ggaXMgd3JpdHRlbiBpbnRvIFdNX0xJ
TkVUSU1FLgo+ID4gCj4gPiAtLXYyCj4gPiAtRml4IGNvbW1pdCBzdWJqZWN0IGxpbmUgW1NhaSBU
ZWphXQo+ID4gLVVzZSBpbmRpdmlkdWFsIERJU1BMQVlfVkVSIGNoZWNrcyBpbnN0ZWFkIG9mIHJh
bmdlIFtTYWkgVGVqYV0KPiA+IC1Jbml0aWFsaXplIG1heF9saW5ldGltZSBbU2FpIFRlamFdCj4g
PiAKPiA+IFdBOiAyMjAyMDI5OTYwMQo+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8
c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgfCAyNiArKysrKysrKysrKysrKy0tLS0tLQo+ID4g
wqAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFy
ay5jID4KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMK
PiA+IGluZGV4IGQzYmJmMzM1Yzc0OS4uOWUyMDhkYjU1YWJiIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jCj4gPiBAQCAtMjg0OCw5ICsy
ODQ4LDExIEBAIHN0YXRpYyBpbnQgc2tsX3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiDCoCAqIFByb2dyYW0gUEtHX0NfTEFURU5DWSBB
ZGRlZCBXYWtlIFRpbWUgPSAwCj4gPiDCoCAqLwo+ID4gwqBzdGF0aWMgdm9pZAo+ID4gLXNrbF9w
cm9ncmFtX2Rwa2djX2xhdGVuY3koc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wg
ZW5hYmxlX2Rwa2djKQo+ID4gK3NrbF9wcm9ncmFtX2Rwa2djX2xhdGVuY3koc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJvb2wgZW5hYmxlX2Rwa2djLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1MzIgbWF4X2xpbmV0aW1lKQo+ID4gwqB7
Cj4gPiAtwqDCoMKgwqDCoMKgwqB1MzIgbWF4X2xhdGVuY3kgPSAwOwo+ID4gK8KgwqDCoMKgwqDC
oMKgdTMyIGFkanVzdGVkX2xhdGVuY3kgPSAwOwpJIGd1ZXNzLCBpZiB5b3UgaW5pdGlhbGl6ZSBh
ZGp1c3RlZF9sYXRlbmN5IHRvIExOTF9QS0dfQ19MQVRFTkNZX01BU0ssIHlvdSBjb3VsZCBnZXQg
cmlkIG9mIHRoZSBlbHNlCmJyYW5jaCBiZWxvdy4gTWF5IGJlIHlvdSBjb3VsZCBoYXZlIGEgcHJl
cGFyYXRvcnkgcGF0Y2ggd2hpY2ggZ2V0IHJpZCBvZiB0aGlzIGVsc2UgYnJhbmNoPwoKPiA+IMKg
wqDCoMKgwqDCoMKgwqB1MzIgY2xlYXIgPSAwLCB2YWwgPSAwOwo+ID4gwqDCoMKgwqDCoMKgwqDC
oHUzMiBhZGRlZF93YWtlX3RpbWUgPSAwOwo+ID4gwqAKPiA+IEBAIC0yODU4LDE4ICsyODYwLDIz
IEBAIHNrbF9wcm9ncmFtX2Rwa2djX2xhdGVuY3koc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIGJvb2wgPgo+ID4gZW5hYmxlX2Rwa2djKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm47Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChlbmFibGVfZHBr
Z2MpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGF0ZW5jeSA9IHNr
bF93YXRlcm1hcmtfbWF4X2xhdGVuY3koaTkxNSwgMSk7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKG1heF9sYXRlbmN5ID09IDApCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9sYXRlbmN5ID0gTE5MX1BLR19DX0xBVEVO
Q1lfTUFTSzsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGp1c3RlZF9sYXRl
bmN5ID0gc2tsX3dhdGVybWFya19tYXhfbGF0ZW5jeShpOTE1LCAxKTsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoYWRqdXN0ZWRfbGF0ZW5jeSA9PSAwKQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGp1c3RlZF9sYXRlbmN5
ID0gTE5MX1BLR19DX0xBVEVOQ1lfTUFTSzsKPiA+ICsKQWxzbywgaGVyZSBJIGd1ZXNzIHlvdSBu
ZWVkIHRvIGF2b2lkIHRoaXMgV0EgaWYgYWRqdXN0ZWRfbGF0ZW5jeSBpcyAwIGllLiBpbnZhbGlk
IGxldmVsIDEgbGF0ZW5jeS4KCkFsc28gdXNlIGludGVsX2Rpc3BsYXkgaW5zdGVhZCBvZiBpOTE1
IHdoZXJldmVyIHBvc3NpYmxlIHJlbGF0ZWQgdG8gdGhpcyBjaGFuZ2UuwqAKCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMjIwMjAyOTk2MDEgKi8KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMjAgfHwgRElT
UExBWV9WRVIoaTkxNSkgPT0gMzApCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGFkanVzdGVkX2xhdGVuY3kgPSBtYXhfbGluZXRpbWUgKgo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgRElWX1JPVU5EX1VQKGFkanVzdGVkX2xhdGVuY3ksIG1heF9saW5ldGltZSk7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkZGVkX3dha2VfdGltZSA9IERTQl9FWEVfVElN
RSArCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
OTE1LT5kaXNwbGF5LnNhZ3YuYmxvY2tfdGltZV91czsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGVs
c2Ugewo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9sYXRlbmN5ID0gTE5M
X1BLR19DX0xBVEVOQ1lfTUFTSzsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBh
ZGp1c3RlZF9sYXRlbmN5ID0gTE5MX1BLR19DX0xBVEVOQ1lfTUFTSzsKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRkZWRfd2FrZV90aW1lID0gMDsKPiA+IMKgwqDCoMKgwqDC
oMKgwqB9Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGNsZWFyIHw9IExOTF9BRERFRF9XQUtF
X1RJTUVfTUFTSyB8IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7Cj4gPiAtwqDCoMKgwqDCoMKgwqB2
YWwgfD0gUkVHX0ZJRUxEX1BSRVAoTE5MX1BLR19DX0xBVEVOQ1lfTUFTSywgbWF4X2xhdGVuY3kp
Owo+ID4gK8KgwqDCoMKgwqDCoMKgdmFsIHw9IFJFR19GSUVMRF9QUkVQKExOTF9QS0dfQ19MQVRF
TkNZX01BU0ssIGFkanVzdGVkX2xhdGVuY3kpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBS
RUdfRklFTERfUFJFUChMTkxfQURERURfV0FLRV9USU1FX01BU0ssIGFkZGVkX3dha2VfdGltZSk7
Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3VuY29yZV9ybXcoJmk5MTUtPnVuY29y
ZSwgTE5MX1BLR19DX0xBVEVOQ1ksIGNsZWFyLCB2YWwpOwo+ID4gQEAgLTI4ODIsNiArMjg4OSw3
IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ID4g
wqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIF9fbWF5YmVfdW51c2VkICpu
ZXdfY3J0Y19zdGF0ZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0LCBpOwo+ID4gwqDCoMKg
wqDCoMKgwqDCoGJvb2wgZW5hYmxlX2Rwa2djID0gZmFsc2U7Cj4gPiArwqDCoMKgwqDCoMKgwqB1
MzIgbWF4X2xpbmV0aW1lID0gMDsKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IHNrbF9idWlsZF9waXBl
X3dtKHN0YXRlLCBjcnRjKTsKPiA+IEBAIC0yOTExLDkgKzI5MTksMTEgQEAgc2tsX2NvbXB1dGVf
d20oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ld19jcnRjX3N0YXRlLT52cnIudm1pbiA9PSBuZXdf
Y3J0Y19zdGF0ZS0+dnJyLmZsaXBsaW5lKSB8fAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgIW5ld19jcnRjX3N0YXRlLT52cnIuZW5hYmxlKQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZW5hYmxlX2Rwa2djID0gdHJ1
ZTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGluZXRpbWUg
PSBtYXgobmV3X2NydGNfc3RhdGUtPmxpbmV0aW1lLCBtYXhfbGluZXRpbWUpOwo+ID4gwqDCoMKg
wqDCoMKgwqDCoH0KPiA+IMKgCj4gPiAtwqDCoMKgwqDCoMKgwqBza2xfcHJvZ3JhbV9kcGtnY19s
YXRlbmN5KHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KSwgZW5hYmxlX2Rwa2djKTsKPiA+ICvCoMKg
wqDCoMKgwqDCoHNrbF9wcm9ncmFtX2Rwa2djX2xhdGVuY3kodG9faTkxNShzdGF0ZS0+YmFzZS5k
ZXYpLCBlbmFibGVfZHBrZ2MsIG1heF9saW5ldGltZSk7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKg
wqDCoHNrbF9wcmludF93bV9jaGFuZ2VzKHN0YXRlKTsKPiA+IMKgCgo=
