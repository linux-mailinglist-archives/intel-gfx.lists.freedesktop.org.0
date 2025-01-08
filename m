Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1972A05C45
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 14:01:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DC210E88F;
	Wed,  8 Jan 2025 13:01:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PjKpFBJ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD4D10EBB9;
 Wed,  8 Jan 2025 13:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736341293; x=1767877293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Q5b5UolrZ4/5ouPrLtR/DsjNfCDTSKcEXAzO2bNWuGw=;
 b=PjKpFBJ/Md9XfCqujOaupqWDCvgPD6aE0+F2ORVLJdPOyjz30SdFxp2E
 K3/D7KsQW2H6j+rkco9Hi1HvZZ7yfr5NKBBwbAhNIhn09QuuggfS5+OM2
 cnb4SWRP4zXtn4qoPK58DsCYPEMHDeQSTvqXELyqhn9aEiXFrJXHyZg4z
 mnTBAj5sf4uMYypZY/WPttdFpeVoThTCqHyRVTT0XPDwsmBPmWZSd1aBI
 1SEQyZmyHQoOPO5giWT/QJsLsONeet0MgbMn41a0ILjUBTdMIh/VeCRVq
 QmwfKBPj0ejteIJlZlmvCFFutfEUMiTnNRbJSRb1nlIkZxde6/JFXTk+T Q==;
X-CSE-ConnectionGUID: O6i7xhiSRWiFwywRYg7Uqw==
X-CSE-MsgGUID: adtRL5dqSVyrTWqwOpZN7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40243329"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="40243329"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 05:01:32 -0800
X-CSE-ConnectionGUID: jyQwQdKITiucTaU8qFBiqw==
X-CSE-MsgGUID: D0oJ4nbuQqywdb55Lj3TPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103148651"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 05:01:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 05:01:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 05:01:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 05:01:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kATVB8r62MRstSgyrwWeAB0CVcoQuv+U/l/wsWZnPif7TJdGWo9MKzp9hHGr09gyAX1GdYpGpHgfgS/ihVFjOi3a6zaOR7Wla44YK1CQf6l04osFsrazVpEqC1zu0rCB7rwuSIWPpzF6nPSyfLxUk1Lv9iaMVFx5zdTVh4YqUTuZAxeLH8rWlgJ25ZNhxR3Neq6IbOizXkxVUyS1f43N5gyYi79dslJOBhoWLkBQa5pUz9OwPNOJFBStnUMrsOKnWmaOlYlzw/fXVg7jzyssXVOoPokIYNgPygBDByeuq5vN9TVHgh6SaPeP8OhNwIriE2/sFC9pfPK5Cj+5Xho5qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5b5UolrZ4/5ouPrLtR/DsjNfCDTSKcEXAzO2bNWuGw=;
 b=vU3IxABHSZp2cZG0nIWyN9uW2zJ0RilTo6Tu2i2G+WBNHCXtG0E1WfwHgdw3xUWSGHQq5um6W20CzVodfYQQfYtuFEVH/9DkzCbQ1T/IZLGWh0565sxy5OQKLvEUmhJ1V06pQ6Mdn4Aq/9krYjB03d0hWDBBGgKyRdEBVeY0sDiu83Wu3v8Ug5xU+x6oXWd/O4ZxZh67CZxES+pEOE4626FbmSkBG6zJtx1U3yUlqrAIpPJkErd9bRNE1KRHcw51NhwPR6QSOwcKSGmhu+sIjz7bpx44N0mtVHktrg/D/p2/yY0bQkJnpXoHnMUNQh7OOATev5PehmZKJVcIWcl2ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6994.namprd11.prod.outlook.com (2603:10b6:806:2ad::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Wed, 8 Jan
 2025 13:01:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8335.010; Wed, 8 Jan 2025
 13:01:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v3 4/6] drm/i915/lobf: Add debug interface for lobf
Thread-Topic: [PATCH v3 4/6] drm/i915/lobf: Add debug interface for lobf
Thread-Index: AQHbX/SQO+85OjRCe0OsKg7IaPyxmLMM2u2A
Date: Wed, 8 Jan 2025 13:01:25 +0000
Message-ID: <bf625a3b03eb355c37f5b2816c1046e1566aaa85.camel@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
 <20250106041516.924101-5-animesh.manna@intel.com>
In-Reply-To: <20250106041516.924101-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6994:EE_
x-ms-office365-filtering-correlation-id: 27319505-cfd8-46cf-7810-08dd2fe48ee1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZGZRZDdpU2cwOFQ2ZWYwQkQra1RwVnhkZDJyaVZRNHQ3M3F3dkV3SDUxQ0sw?=
 =?utf-8?B?VEMxd0wrR1FLU3l0NEFCMWVCNkF6U1k3SWZMdmRBVU1Xd3F6cHdqaU5QUmJn?=
 =?utf-8?B?dE1LNDlhdk9MVVQraW5WVDVxZFc0RDB6eEx3VXczRTBzRzdYYVJMYzYzWEhE?=
 =?utf-8?B?c3BaaWtnaUtQQjJOVGZydmtadFFzbFlWL2FvWmlTcHUxRzNhMXZacVBHWjlU?=
 =?utf-8?B?amF4cWtwYVF2Um5GK1A3T2VxYWhhRjVadXo2TnBhQ2RkR1Q3WU5tSjJVbFJE?=
 =?utf-8?B?RHh1QmM0QXdBSWpOOXpGb1ZJVXlSWUgzdEdObjZvRXEwTk9yc2wya1lyaGNt?=
 =?utf-8?B?SlFjd1NrZnI4VjBNU05lcFpqMGEvNCs3cElEZjBDbjN0OE9CU3lXN0V5NVRQ?=
 =?utf-8?B?bG5lS2NNYXhIMFNBU2JLcHYvS2VwcSs5dVFOQ0tJNXJIdU9memVKMWZqa0Uw?=
 =?utf-8?B?NXRzalkxeW1aNGNldDhVVysveWpZVnBISlQyaS90Vkd6cjZQZG5OWWp4K3oy?=
 =?utf-8?B?cDJEZmZjSGNjT3FYU0pyVjFHWjhmWHlPRkJ4NVVncURydWFzL05IYWJaaVM4?=
 =?utf-8?B?YlVWYjM5Umd1VkJjSHpTbHAyZWgxQ2NGMVl3LysrbFQ1YnZQb1hSWVlqZlAx?=
 =?utf-8?B?OFpNbG1qTEkxUjVYUklyM010b0hqdkFGSUplRVRCZHB0WUJFQ3dCT1pPSkVz?=
 =?utf-8?B?bVpNZ05RdXdSMzF2aGJHYU5NREdyN1cyckRHN3B6YnBzL3pmdExWdlVHT3NG?=
 =?utf-8?B?TUdMNVRwUTd5NVM3elZZRm5veHFDU0pGZGVkTG1hOXF6dkRCYXltVXBNejcy?=
 =?utf-8?B?QncybWtRSUFQN25PS0h6MkMzNGYwV3g4VnZnbzZMUUFVT3ZuaC92SnU1aHdS?=
 =?utf-8?B?cjVtVE81SGo0bzdvd2dzUzl2YzZBM1NrTUs2K2J6VVg0K0t4cGx6bUYvNWtq?=
 =?utf-8?B?Z0UwaTNOSUkwWE95SkV4dWxqdmt5WHA4dThnejRGN2p3NTh4L3pGMzBYN281?=
 =?utf-8?B?cXpmUjBGTlMwMXJMMTRsdU1uZnBFbDFiaVBndy9UUUcrSnJsOUxjMUhqSFI4?=
 =?utf-8?B?YXExZ3ltM0ZIcWIyeVI1QkdhZjJxM1ZQbUloWjh1UVRzdy8zVWUySVV2bzBQ?=
 =?utf-8?B?dmJvSnRaRVRIc08vUDlwa01XTDViME1kSktRcUxERnZTUTd3MlIxdXpZaG9S?=
 =?utf-8?B?eE44TzNXVzlMZGFuUUw4QW5CTFhWZ0s0RXNQaVVkdGpucnYxOFRLK0UxSVUx?=
 =?utf-8?B?UDRsVDFMWldYL3R5ZGE3eVBQQVI5UlFwbDZ1MlIrR2szTTV3R01jME5BWi8x?=
 =?utf-8?B?cjdMdUl3V3A4SFVzelYwa3d5Q2RmQW1Ia2l5Tkh1ZEY1S1hQRGszeTJpR3A2?=
 =?utf-8?B?d0hxMWtNbmhES2ErOVhPbW5YVnBpckpzOWhxWmRpUjdjOERzRERTZEhqQnZq?=
 =?utf-8?B?YlMzTFlpQ2dnSFhBdVRiLzlMQ2I0VDVQZGVSRytSWk56TEYvOFRIbXNzYmlE?=
 =?utf-8?B?aGhDNHY0T2NtSmUvRmhTMFlzK1NGTDlQMXhmVEJEZjlyUi9aVDRyKy9aN0tU?=
 =?utf-8?B?R2pTaXZlbUNMSWFnOFpoRTQ1U2JmQzA5Vm5PYzA4bFZnVlZIbHoxOEsxM3l3?=
 =?utf-8?B?aWs3dS9iMjZxaVdqbEx6YXJMTXBackhhK0o5NkM3aVM1Q0hwWEhGay9hMHZ5?=
 =?utf-8?B?aWhtOU5VNlp6eUN6NnhqNjZ0MGdDeEdXSkxEOTZBTWNsQkRtTFV6OEZnWUtQ?=
 =?utf-8?B?WC9pZ0d4Y3N3VDcwV3daZjc2Sms0anZZcGZuaVh0VHZWQUE0cERLaHdQa2xh?=
 =?utf-8?B?QnQzdVBXa1BIMjk4K2RmcHlrdVZqMkUyS0d6OHFKVkRLeDVLQnJiaGUwbTBo?=
 =?utf-8?B?QTREUFBYU3I5aFRXSUIyVUk0dlNPbGF2bnNDQy9zMFZ2TjVLUjdjcHBvR05q?=
 =?utf-8?Q?V0p1KA5C5ASjeHRI+QEQCt2aEaLAE70k?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTZJODlEaXRTdENkak9KRFhhK3p6ck5ETjZnL0VzNlJQR05JMDcrSGZvMFNP?=
 =?utf-8?B?dHhuZGhjeU5RY3Y1QnFBaU8raEFSeGVHYTVmRDN4eUx1QUJKazA1bmRBbzhR?=
 =?utf-8?B?MmI4Z0hrVEU3dncvRHViU1JjcnYvdWJpY01BT3Q5T1JUUnJCZXFFaEc4cVhl?=
 =?utf-8?B?Zm5SaDI0aWpUcFluOHFMVmRQYWVHdzMxc2UyMnJWUVZDSGFtRTFpb204VDhO?=
 =?utf-8?B?NXBhYlJpei9OTERWUFVSUEUvcVhaNFJKdzV3dEcrY3RET1JXeU1KQTZXNktk?=
 =?utf-8?B?SW9WUTA0eGk5WUx0TjZzd2tmS05aT2t5OUxlRk1QQllGbk9GS005OU1Jb0dV?=
 =?utf-8?B?WVM1MFFSQ0J2NlNLL2puK2tvbGUwMmp6OWIweXhkb2ZNcHRXdCtNeEZ1TjN1?=
 =?utf-8?B?eFVPN1lmRk05MFVVTm00cFhLSmZkZ2VUNnlEV05GQ0U2YkFUTEFvaGloMzU1?=
 =?utf-8?B?R2loQUJXUlhPYzRtOXBienI5SjJpVXg3ZDF3ODlCUVJ0dklpN2tSNzIzRGFu?=
 =?utf-8?B?SzRtazB4N2x4b2pkWjZWdk9UZGJxTVQ2azU4RWovb1VIWWdsU2t0bUIrSFFL?=
 =?utf-8?B?RCtwVDdLTUw5VEVhMWpVdFBtQ0J1Qk5XalpSdngvK3VBbzhhenJCR05DVkVi?=
 =?utf-8?B?R1hxKzJzNmhsSWpNMUV3eVJCbnphNmZWN1Y1VDk5NWNhVERPWjcvL3RQczFy?=
 =?utf-8?B?QWZGK0pHQzJjZ3lCTVowQ3dWQ0twUHFlWi8yb2VKWTdCaHBtNDQ5WTZRMjVV?=
 =?utf-8?B?MUpxdW5GOEVET1Exa0hsc3UzQjRVR2hYYjB1WEg4eFliQWxYd284TGJQTXZL?=
 =?utf-8?B?V1hhZGVLOWpoWktSUkRtTUMzSHlCUU4xdXIvVjR6NitXcFl3WlNXVkNOWUJR?=
 =?utf-8?B?eEdqRmdxYmVuYW9DQWZFMWIyS0JBMXdHN1NDWTV4VXVHdGttZmoveTBnVURQ?=
 =?utf-8?B?Y0lwclA3NEJRNWk1OXg0NGRlNHRFcXBod2RDZHA0VENhbm90QkdPUXNIRjNa?=
 =?utf-8?B?bWZ2WENiYmkvL0pHRG44eTFwR1I3LzhsRDdWaGlyUGtnc2FYeG4zYkovSStX?=
 =?utf-8?B?U0FlenBuV001NCthMkp1MURyOHdzdmZFcTBmL0NSNXdNWlRySWdsOGdsSVBM?=
 =?utf-8?B?WDZZWHZiWkpYM2l4Q3I4ZnFpMG9heXQ4OWNPVHVMOFZ2cm5KMU96RlB1MUJ3?=
 =?utf-8?B?cnNpczNSN2Q5STZRNTFndytOaU80RTVOTTUvU0NOZjcvbDdVaEFIb3FMQmNG?=
 =?utf-8?B?NnZ5a2NSM0kvRFY2Z0dQN29aOE5PS3hxZ09Rb3FJRldLNmp4WDNQdmhpV2Vo?=
 =?utf-8?B?eTBwS2NlbHFBWXhwN3dRWUQ0MEVSV3dDNnhpYUhvVEwzRXp3MHRGei9KQUNL?=
 =?utf-8?B?blcyaHh4N3F3Q1NUaVhWeHBMUjRhOWJMSGx6blNiaHZzYkxONDlVREhsOElI?=
 =?utf-8?B?UlFOYUxROTgvNnl6NjRTY2RGRDNNYkpoSWhHdlRFeEVNZ241azhteTBPdUhG?=
 =?utf-8?B?dU9DcnRVejl0UWljQ0NCY2Zackh0anRTVWZzYTNUZW9wbkwwbjBZT0g4ZGIx?=
 =?utf-8?B?dUJia0xJUnhVcXRaQlJmQ0xybGtoYUN0Z290cDdiNXRmMTJ1b3UyZXJEcWR4?=
 =?utf-8?B?ZExML0MydlJMNEFsRkk2QWQreEMvTktmVkg0QzhlejdaWjdsRXNNNWVFZXVN?=
 =?utf-8?B?czBFdHZLK3IvUzc1Qm9nOU53M0MrVGxyR2tydEFTa3FQTHRNaVd0WjVhSEhw?=
 =?utf-8?B?dG9FZ0VDdjRlR3d3cVlYa1FJWjk1cnN1YjNSak5DQVMzRmJpTDNRUmFXYXpl?=
 =?utf-8?B?UEVmSnF0TnNlTHZMZFhlTFE2dW4zKzZUSWZaWDNWUloxcys2dDdtMi92a3kw?=
 =?utf-8?B?WEVDdmtWeml0MHh5TUtsTnB6U0UyVmJDYllEUVVrUGorcXlmeWR3QThkcjJq?=
 =?utf-8?B?LzM3bkxkTGtnbk9ObkM2dkJReDljbzd3bTZYQUJpbERLa3pHbWdjYXV5NFQy?=
 =?utf-8?B?dGEzaWR5dktMUmFTRXc3MUhVOFJEVmZVS3BlZHJEaTh4cEI4eWJrYU9OOWVp?=
 =?utf-8?B?U3BEczRuZlJnYWFkdGhsdjl4MFYyQWV5WEJWOXlDN200OThXSFVSUDZ5QjZ4?=
 =?utf-8?B?bGxSY2lWbXZQcUxKbUdtRE9ta0VXU2laSzlQMm9MYU42cEw4SitWTkxSWkFo?=
 =?utf-8?B?cXQvZGxMblc2UVZBY05SN3lPT1lnTXh3dkRpMmhLL1lCS1h0VVV6WjFkNTlS?=
 =?utf-8?B?VU14NjBnaG1uTURnZ3pKVDdHZ0F3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1AEF7BC3A8E26C4185751E6947A05953@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27319505-cfd8-46cf-7810-08dd2fe48ee1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 13:01:25.2032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1ykdhClHXlxcPg5I0zjrizRzEe7L5CirOi6CtjlLqJ1TwbH5sauGQH8TXN49ekhIqxeHXolrGr0Qj/+E6Fwjl0VTCa6aTAa9xXS181TO+hI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6994
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

T24gTW9uLCAyMDI1LTAxLTA2IGF0IDA5OjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYW4gaW50ZXJmYWNlIGluIGRlYnVnZnMgd2hpY2ggd2lsbCBoZWxwIGluIGRlYnVnZ2lu
ZyBMT0JGDQo+IGZlYXR1cmUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxh
bmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKgwqDCoCB8IDUxDQo+ICsrKysrKysrKysrKysrKysrKysN
Cj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKg
IDYgKysrDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCAxOTdjNjcz
NjNmMGUuLjFjYzBlNWVkM2Y3NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gQEAgLTI3Niw2ICsyNzYsOSBAQCB2b2lkIGludGVsX2FscG1fbG9i
Zl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAlpbnQg
d2FrZXRpbWVfaW5fbGluZXMsIGZpcnN0X3NkcF9wb3NpdGlvbjsNCj4gwqAJaW50IGNvbnRleHRf
bGF0ZW5jeSwgZ3VhcmRiYW5kOw0KPiDCoA0KPiArCWlmIChpbnRlbF9kcC0+YWxwbV9wYXJhbWV0
ZXJzLmxvYmZfZGVidWcgJg0KPiBJOTE1X0xPQkZfREVCVUdfRElTQUJMRSkNCj4gKwkJcmV0dXJu
Ow0KPiArDQo+IMKgCWlmICghaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gwqAJCXJldHVy
bjsNCj4gwqANCj4gQEAgLTQ0OCw2ICs0NTEsNTEgQEAgc3RhdGljIGludCBpOTE1X2VkcF9sb2Jm
X2luZm9fc2hvdyhzdHJ1Y3QNCj4gc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+IMKgDQo+IMKg
REVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVfZWRwX2xvYmZfaW5mbyk7DQo+IMKgDQo+ICtzdGF0
aWMgaW50DQo+ICtpOTE1X2VkcF9sb2JmX2RlYnVnX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkN
Cj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IGRhdGE7DQo+ICsJc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ICsJaW50IHJldCA9IC1FTk9ERVY7DQo+ICsN
Cj4gKwlmb3JfZWFjaF9pbnRlbF9kcChkaXNwbGF5LT5kcm0sIGVuY29kZXIpIHsNCj4gKwkJc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4g
Kw0KPiArCQlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ICsJCQlyZXR1cm4gcmV0
Ow0KPiArDQo+ICsJCS8vIFRPRE86IHNwbGl0IHRvIGVhY2ggZWRwIHRyYW5zY29kZXIuDQo+ICsJ
CSp2YWwgPSBSRUFEX09OQ0UoaW50ZWxfZHAtDQo+ID5hbHBtX3BhcmFtZXRlcnMubG9iZl9kZWJ1
Zyk7DQo+ICsJCXJldCA9IDA7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIHJldDsNCj4gK30NCj4g
Kw0KPiArc3RhdGljIGludA0KPiAraTkxNV9lZHBfbG9iZl9kZWJ1Z19zZXQodm9pZCAqZGF0YSwg
dTY0IHZhbCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IGRhdGE7
DQo+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ICsJaW50IHJldCA9IC1FTk9E
RVY7DQo+ICsNCj4gKwlmb3JfZWFjaF9pbnRlbF9kcChkaXNwbGF5LT5kcm0sIGVuY29kZXIpIHsN
Cj4gKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+IGVuY190b19pbnRlbF9kcChlbmNv
ZGVyKTsNCj4gKw0KPiArCQlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ICsJCQly
ZXR1cm4gcmV0Ow0KPiArDQo+ICsJCS8vIFRPRE86IHNwbGl0IHRvIGVhY2ggZWRwIHRyYW5zY29k
ZXIuDQo+ICsJCWludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9iZl9kZWJ1ZyA9IHZhbDsNCj4g
Kwl9DQo+ICsNCj4gKwlyZXR1cm4gcmV0Ow0KPiArfQ0KPiArDQo+ICtERUZJTkVfU0lNUExFX0FU
VFJJQlVURShpOTE1X2VkcF9sb2JmX2RlYnVnX2ZvcHMsDQo+ICsJCQlpOTE1X2VkcF9sb2JmX2Rl
YnVnX2dldCwNCj4gaTkxNV9lZHBfbG9iZl9kZWJ1Z19zZXQsDQo+ICsJCQkiJWxsdVxuIik7DQo+
ICsNCj4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsNCj4gQEAgLTQ1Nyw2ICs1MDUsOSBA
QCB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QNCj4gaW50ZWxfY29ubmVj
dG9yICpjb25uZWN0b3IpDQo+IMKgCcKgwqDCoCBjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5
cGUgIT0NCj4gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4g
KwlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2VkcF9sb2JmX2RlYnVnIiwgMDY0NCwgcm9vdCwN
Cj4gKwkJCcKgwqDCoCBjb25uZWN0b3IsICZpOTE1X2VkcF9sb2JmX2RlYnVnX2ZvcHMpOw0KPiAr
DQo+IMKgCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfZWRwX2xvYmZfaW5mbyIsIDA0NDQsIHJv
b3QsDQo+IMKgCQkJwqDCoMKgIGNvbm5lY3RvciwgJmk5MTVfZWRwX2xvYmZfaW5mb19mb3BzKTsN
Cj4gwqB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IGYyMzAxNjMyMjZkMS4uMzdmMDYxYWNiMjA0IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiBAQCAtMTgwMCw2ICsxODAwLDEyIEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+IMKg
CQl1OCBhdXhfbGVzc193YWtlX2xpbmVzOw0KPiDCoAkJdTggc2lsZW5jZV9wZXJpb2Rfc3ltX2Ns
b2NrczsNCj4gwqAJCXU4IGxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltczsNCj4gKw0KPiArI2Rl
ZmluZSBJOTE1X0xPQkZfREVCVUdfTU9ERV9NQVNLCQkweDBmDQo+ICsjZGVmaW5lIEk5MTVfTE9C
Rl9ERUJVR19ERUZBVUxUCQkJMHgwMA0KPiArI2RlZmluZSBJOTE1X0xPQkZfREVCVUdfRElTQUJM
RQkJCTB4MDENCj4gKyNkZWZpbmUgSTkxNV9MT0JGX0RFQlVHX0ZPUkNFX0VOCQkweDAyDQoNCkZP
UkNFX0VOIGlzIG5vdCBuZWVkZWQuIFlvdSBjYW4gYWNoaWV2ZSBMT0JGIChpZiBpdCdzIHBvc3Np
YmxlKSBieQ0KZGlzYWJsaW5nIFBTUi9QUi4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
ICsJCWJvb2wgbG9iZl9kZWJ1ZzsNCj4gwqAJfSBhbHBtX3BhcmFtZXRlcnM7DQo+IMKgDQo+IMKg
CXU4IGFscG1fZHBjZDsNCg0K
