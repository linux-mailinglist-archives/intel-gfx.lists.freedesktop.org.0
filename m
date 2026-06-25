Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N0bQOBI4PWpHzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:15:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C8C6C67E5
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:15:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=G4V68iNp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1A410F2D9;
	Thu, 25 Jun 2026 14:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A2910F2D0;
 Thu, 25 Jun 2026 14:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782396943; x=1813932943;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=xbi7f+cHlbht1Suy2ysGuwy/+KG7dntlsmwHLA8cP5c=;
 b=G4V68iNpfcKypH+s5MN322ZPgP5mRfKIyx/mqXAruU6TISKw8Sy9fDXH
 NZYXy6rTp39D+MD8IN2avJBX458f+hUTFtKfwaWSM2i9zQBWzCKgQx0AH
 XCCYPeX6R5wMPpX1QG7IoWhrOIjQG/4wF4yGn1H8J49u4UdGHHVpCrjF2
 Tph2sW2kuwjyEezS69ElCk7ykIcX7kmYIgkawTCqhALsIM8HyZ+5W2MiZ
 8VSSP2GaZezdBWrWGtvunc6UPhXxit3eGS6SUWVb0Qv/M8nVWxlyrCDGM
 B2sKfaYDRLGETwK9ljYUdHPpl3YLwMNgnpXvs4CjIB6vxYrxwLSLbCX40 A==;
X-CSE-ConnectionGUID: TJOo1M/qQwS13pVS73Kf4A==
X-CSE-MsgGUID: B0M7awc5R22qwEJ28KedgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="82294388"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="82294388"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:15:43 -0700
X-CSE-ConnectionGUID: FYDSHhaFTnOef1yfJQPGgg==
X-CSE-MsgGUID: +M18ip1mT+2qiCzdHkN1oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="274101498"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:15:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 07:15:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 07:15:42 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 07:15:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aLfFOYTg5dIEtNkgNSlK8M0koPR7o08eRVS/tg5yhrKKkDRmAhguOuxUF0i3jFAazClrT63GhhVVoRqAT2OWlC/u0tacOpAuPxzN8j1bGg7M/gRdNVafWV/rONuelfxRzb51U+DWPpwqo53XDjIVw4h73NErNzaA3sZ0SQnZlnMgUG5FQ3pZn1rwEdoi2R2TQ+T0CY0Q3ZxzM5PeFheQPXuwG8+FXZdzB3/gNF0CwZrW+c1wpDbssHp9n4vg9qzXFfs6wkeeEEBOCmvuPZgQkElE4ZnScNk15kXXTDAmnxqKXyKViW36CDWZ/Q3bF7Ki0jKkz/5M+5glcZpXQs5kcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=quwoVJBJM4QeDREMWo1nK+JgA4NPEwwnJ2Pw4r82Fyc=;
 b=Dxv8DR89jGnVF5mkpJjnE6vCzfPVUpH+lax4SWh3Z/TuIfskoipCaCYy//Ve6U2zDvUhGBQ7BCN0qzX3Ji4tnvGERIMIVqIct0it+FqNcrbrM6t4BLzZ1te+cLhDO3vtR3Mp22aW5iyxjU0e8KnwqXP6XAd3e+D3FxhmrZb2zc1ah7XgFksMx/M3z70AP/iKh+KSmefec/cZUOpXM8FcOdkrv2hJ2+LHI8d0qsYMYeSR5V470p0tzbbJPEYk6izBHYfi0Bfg+YFK9xinVQrj7CFr2B/todPrMqrtjKhR8mRK3jBnTsQ1VrmBtMXb2GMCI0u8nhzmktqOGTKM7BsDhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA0PR11MB4606.namprd11.prod.outlook.com (2603:10b6:806:71::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Thu, 25 Jun
 2026 14:15:38 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.012; Thu, 25 Jun 2026
 14:15:38 +0000
Date: Thu, 25 Jun 2026 17:15:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Mika
 Kahola" <mika.kahola@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v1 30/30] drm/i915/dp: return -EINVAL on failure
Message-ID: <aj04BaDXwD9dRLCF@ideak-desk.lan>
References: <20260623224619.1949975-1-michal.grzelak@intel.com>
 <20260623224619.1949975-31-michal.grzelak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260623224619.1949975-31-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0094.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::17) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA0PR11MB4606:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a44c38d-5cc1-4dfc-f8dc-08ded2c43b22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|22082099003|18002099003|6133799003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: MqbO78vHwe0cE0/9DkQB/uIvlVzgX7klAtEOatnM2YCB86hpYcXHHtXFm05bII5ZljKNf0THspuSVu0vL/dRC0a0F1AlFv+iNcSNd8BS9+yb2KMtaKnWLXFv+G9c4K33k2ZZAKPlriT50rBKDL2O/Q0JbqGM1YUj+mpupM4EPwMymU57nl/Xx6cWxcWsTv6BZPYoLNmdshTNTbX4CRcvdMSg7PZx8aD4w72ubYYoAEfnJzBa1YX7+yFfS70hSyO2wg2Vlrn2NwhFo2MUjyqkiSbw+2Po4dWrDI7IfIpFtP9DVAOY4oRliXguMG0IbuCKzwlL1bk44OCoqqMlU7g1nX5LSlrfeUVEay4mjGvol/GjelUp911YXzUJjd+QyEtHeHSYqzqSgGDr4vrEKcnPxe3bN8wbDGjB74z82HRQjDaz0cJD6OLLg+oepjsnbj4QSMsxNO1D5Y8GfWkQIsNZrBBEa5Sv5eeDcTIQ9cXLsYSEWlBNi9tSUGvR5bTMGXD/+ZHN1gsQo6t0T89iiZ6a3LlmF9P3qMp6vTUCCEIiDQ72BLp5QoLh+Ysso7vERFP1IwMZKQ5fddFnQHYlnX0sDjHg5GTdBAIOxmaCyd7I3FTJe+kKbsIJPH969wd9KMWoIcjHbe1HQwZbKZ+rvoCsnN/eLJl27t/+6byNZUcDIQ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(22082099003)(18002099003)(6133799003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUlDYkh5cVBpNUJCOWZBbGxON09zS0xLYW1EcUdLKzhGWVRJajkrRDlqNy9Q?=
 =?utf-8?B?WmsxaUhlelNOODE1M1dsOTg4WTlpSGxxajloZUp1dElBbWtZaGFMK09oNkEx?=
 =?utf-8?B?SW5GNXZUckgzSDQ0SW9CNzd4dGZpTmJtUTJLNVNVaCtQbDJkRk1YaVZNbHJW?=
 =?utf-8?B?RDJwd0JBOUYwNDRYY3MyWHF2ZWFFRDdFWTFLWWlpTmRxdFJtaE9WNk1BYkhM?=
 =?utf-8?B?VTQyeU40bit4aVk4U3R5R2l4L3g0cHZobUs0dHdTaDZObnM1NVV6MGFxdTIx?=
 =?utf-8?B?eE96Q3U3dTR6UzlHTjEwUWwxUnBqenNZaEw2cVA0ZWp0V2lxT1BtR0RNbWhT?=
 =?utf-8?B?OU5veTd4U0VDNWRnM095dDFvN3JFVTUwc2kxcWVzbnRwMVVIZ3ZqV2thTDR1?=
 =?utf-8?B?ME5EQ2R3TEhhZndwRzBacUNONWFPVDZOdUQzSkZsZklYanQzeVc0RitJeEpJ?=
 =?utf-8?B?ZVVXeDlXNjNGMHROQ1JlYzY0SlI3UGIvSHBicXp1MUFpdFhMdkliUlFZSWpG?=
 =?utf-8?B?TG9OWGpBaFJTeUw4NTZYbVY3aWRVeVZLWHJGMHVuUWxvdVhPVzFvOGVlaVlP?=
 =?utf-8?B?QUtWQTM0eFNOMmQwbXVLRWVORGEwNTNnSDB5dVYvUnNBUHM2WFVVVktNM0hP?=
 =?utf-8?B?bnArWFRHRlpRNE9IcGs0amNvTEJtdGJxRXBuTExSN3p0NDY5TlNsSXpwQ2Jt?=
 =?utf-8?B?MEhWdGpYOTJPQis1QjhGUEtlNldlNFRac0d3UGFibElFUXF2K1l4TkhVUXps?=
 =?utf-8?B?enFCNmFNWXcxVXlmVGF0akJybVI2YnVSZjRNNGc5NTluenBnN1ZVUk12UGF5?=
 =?utf-8?B?OE9BeXczMjZncVNTT1lyWUhCeXFaS3R0Nm56cXdEQnE1aXhmeFdlMWRQTCtl?=
 =?utf-8?B?ekJjVTVJYWRBZm1pcVVuM01pOWtwWVQrR0xnYzgxaCtHUUxISVltRm0weExi?=
 =?utf-8?B?ODZrYzFVK2FyMml2Z0ZjWFh3SUJSWUhhR0lmZFpOQ3AxUWVSQ3pQeDd2Z2Ix?=
 =?utf-8?B?U25CZ01MMFQ2eWRLL3BXdHdvS3BlQzFqLzNIZWc4UFl6aTcvQUdNNGNYS1U4?=
 =?utf-8?B?SWE0VVhpMmV1MWVPaTNueUtZLzRLQ2FVMk1Jc252bW5GQXhMMXFOTk4xTkJz?=
 =?utf-8?B?OWVQbkRSb1dvdTJ3TFJseVErQlBEeklEZHBGVFQwZHkwVE9JYUZuMjlqQkJH?=
 =?utf-8?B?YW5rL3YyY3BWdzV5blFqV0duaGF6cTVOVVduZk1WU2x0ZHRRRFl0MFZITTlD?=
 =?utf-8?B?OWJIUTZMOHdWalVvRk82RFZXQ3F6TnB0ckJmbHArU2h5bmpIMjdQVFJXVlVh?=
 =?utf-8?B?RHh5Wml6NjVNNUt5QmRzSEM2WnpwcC9GbU8ydjlSMitCRC80b0MxOUxaTnJ6?=
 =?utf-8?B?UGZ6VmxWZjNYQmZzcFhvRW56NStTVG5PYWJYVzVoY1R5TW9KblloT3E3V3VT?=
 =?utf-8?B?UlZEdEUwbnZVdjdocGNRV09yL2JqTmc2OWwxV1lhQmtpWHhaRHVoVTBJRUpV?=
 =?utf-8?B?bkU1aXg3Qk1LRzBTVmhENlduN0FsaDlsbEFGTWEyMysrdTJXZXlxSy9PNkNJ?=
 =?utf-8?B?N3FWWk9CWXhvZER6T3BnSUdCeFl4dDA1eTZ1a2NNbTBMMVNqbC9hbjY2YWsz?=
 =?utf-8?B?SWFtTzV5R0NUMFlzTXY3M1k2blB6dS9FYU02RnRHZTFqNFp0emxudm1scFJ4?=
 =?utf-8?B?cjBUV1IvUTdZL0FhbnQ2UExpREhhSm14ZWNtd0tKSjYyajJSdzE4UE9CcTRs?=
 =?utf-8?B?anZlU0JhVVpadFlQTnpKTkZ0WDQvZURscXBRV3dwS0FWVHpiNEZpTG5OMDJG?=
 =?utf-8?B?QitpNE1iVUNnMHZTcmpPRXBGaXdVWW0yY0w4NHAxMDVYeVk5NkZWTXVyVGFC?=
 =?utf-8?B?RU96ajdBcThQTUliODhoc1ZvaERFSXFwRzZIOHBJdlpLVWp2ZFpoTTIrS3Bt?=
 =?utf-8?B?OCtoaTRZS1RUSzVUcHAwcVR4Zm5tdTRHUi82cHQvSjhBUHdudHV1OC9rUkIy?=
 =?utf-8?B?RTkvS3h4aFJRNElmaE1vaEo3ZWV2a0xGckhXVWVLRXAwK3Q0VWpHUjN1cFRF?=
 =?utf-8?B?a0xCMDFTazd6MnkwVHpacmJ2VWZyZTg4SHd2VzRocFFSQWlTT0t3NGxyYkww?=
 =?utf-8?B?WVdxL3FGajlBeFJqMzRTamVoOTQ1b2lNME9XSm03eDRQNHVzdFBoQ3YxOUQv?=
 =?utf-8?B?Q0Y0K2srOHBla2IvWWpXNzNlZkozd3hlbW15ZTJoQzFENXI2STNhaHVvL3Zj?=
 =?utf-8?B?MEVtdTU2d2xZOE4veGJlbXFnWlhEZDdrdkNuR0tRaEVUV1VDZHRsSFpPOFhr?=
 =?utf-8?B?d3FWb29JaTBjSUROdGtiaU14dmpMb0tDWVBoSlRWaVphWlUvMFV5UT09?=
X-Exchange-RoutingPolicyChecked: ZjVkI+ySdYEe66U/+fZUyT5cJJmYsWeOG74P8E0u3Qgv/mpIqKMK9CgKXaQxgngZiE+lhhoCvCIczRaGzbj/lTbF+mMdk9jG6KlzYeVo0tW4+0eDq017aj0GS+Ml1h7xRG5z58Ko1GaWBI4JLggUS0xeLNs6aYppgt621dUbysPWNhdYfcSxQlT27HfyDrd43nw/PHhq/ghNCTaYAW9Qi22LiownM53rkBnmK906Sp1jeHMF5pHylRmAR/zu7NopbVYugXx2C256EkSu1MP7WMq0cjF32jw491SsUOMo/alClf6n7cylQ/NSzqYP+s3ZZcSRdpJIVOKyktnpQGDAJQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a44c38d-5cc1-4dfc-f8dc-08ded2c43b22
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 14:15:38.1991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WfNfNabvagGbuE+kFoikcnkUpqqPNFCV6Y2mtq2aqi9lZgn8rTf2Y2gK8657MBQPw3pjfKUp/u+x2zeXpx/nKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4606
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid,intel.com:replyto,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01C8C6C67E5

On Wed, Jun 24, 2026 at 12:46:19AM +0200, Michał Grzelak wrote:
> Both intel_dp_rate_index() and intel_dp_link_config_index() in case of
> failure return -1 which equates to -EPERM. Return -EINVAL instead since
> each caller checks for negative error code.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c           | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 66346b74b2c04..1c0b85ac27ad5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -666,7 +666,7 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
>  		if (rate == rates[i])
>  			return i;
>  
> -	return -1;
> +	return -EINVAL;

I'm not sure about these changes. Both of these functions can fail in
one way and returning an invalid index in that case looks ok to me.

>  }
>  
>  static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 1c34ba6c49c35..241809e6a9cb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -347,7 +347,7 @@ int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
>  			return i;
>  	}
>  
> -	return -1;
> +	return -EINVAL;
>  }
>  
>  /**
> -- 
> 2.45.2
> 
