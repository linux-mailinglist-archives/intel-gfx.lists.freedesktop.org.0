Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGIYEvFtgGl38AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:27:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD3ECA1A9
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CC089FA7;
	Mon,  2 Feb 2026 09:27:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WPDGeTEL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1B489FA7;
 Mon,  2 Feb 2026 09:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770024429; x=1801560429;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BN++AmPXiNnohk6xBNXFhMq8fgZg0Mk79g64l/I7MPM=;
 b=WPDGeTELYxy+PsZhhvcXou6gUL/p7+m2zW9NPgSJ3MUBRP1WP9ifgWiq
 7miROY68Rf/s8VmplIy3VePEfJMwTv2iDGx9TFApwIca0lFgOAeoV5XIT
 A129kp0HoyaWl/20O3+rU7u9kS7DqlRu1gemyPxE1Pt1X4AI7RPiF7jov
 4PMOYmkdqjez1sTWhtlDinFB2+jRTF7dzgmwc+050GvxBlf9LafUVZbCi
 xv5DsfiFdegTbqFxT4mOh/U8/ZKyOzAO8RxTQeIH4JB13+mlUTU4gaySi
 gGIJ4GcsNBw/wa93ePKkDX9P6H9RhNJ4EqbApwmvY9iPRuCdmSJCWa8/r g==;
X-CSE-ConnectionGUID: pN5oEDoeTkCOmafOsl/sRA==
X-CSE-MsgGUID: 3khIn2P8RBe8qswbRrU5Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="81916560"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="81916560"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:27:08 -0800
X-CSE-ConnectionGUID: fMpXrKATR/Go8rmArS2MhA==
X-CSE-MsgGUID: gUNoao+JTWuZTzL/LziE9g==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:27:08 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:27:07 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 01:27:07 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:27:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=boRzHNvAqv1A/iXj11F9P6pkxF2IhzxRZyqEGdy4FQbHbU/MuFR/4ygT0pMDPGpneP/ciVXTPV+ln35hPBpP7fxCnbYJ1Vp7N2l/PNJbun1iMG8/iKVQ4+PoIqQ8m3K2UrAKrPgZ1GFr9Jof3/MrrPJ/djXYm5/GWl25YT6FceNf4X1xEvqmLdnqQF4a8ozYGZ1THGHdyAFdrFo2owFEXOfW0ZI4N6OXmtCGrbORXL7ktdFB0lF7RsKPrHjvD+GRkOL9G8aiCEK8xZ44+nVyOElkvRwlPYobfx6VhiNPZ7ECv5e7jORf2zL4C5XyG/3Qpus5wFW+jcuhAP0gEDzy3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8EkZVh8cK7Uw+u9JrQmce/Sfu1p7dgz1q6eBAjNAAuw=;
 b=U6GjHYXq4nYmDIqoj6HTrA93TbwmDDhCh66glyV+S0C1lrUA3klpbFgsf6z+Q4+3g+Z/zq7DZKBw7YvRu1qnyA5QzsXVfyeoDyvVPBKllnNDJI2yD+8qhzSPNOKc5O1Uxw+Y30zcaT94ldvk1BC4YTzS/bCz9QZuaom39M+do9xr3Tf9R/SYvAjGGbBbol5rx+MTSdH/jwwdqf40oaA1D0/gE1GMAa0hi2b4vIbw5JtnnMOX4uzbWEOkKbG0ZMDUaH9Mq718TzTmmGJg5kwOuBitk2TXG97QxGwx7FfPjlb3ulpbPzu66ab07W45aGunad5BQS7eIYIagCo0Pw058w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH2PR11MB8835.namprd11.prod.outlook.com (2603:10b6:610:285::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.14; Mon, 2 Feb
 2026 09:27:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 09:27:05 +0000
Date: Mon, 2 Feb 2026 11:27:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 04/17] drm/i915/dp: Rework pipe joiner logic in mode_valid
Message-ID: <aYBt5eSJrW-C9TxI@ideak-desk.lan>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
 <20260130081812.32087-5-ankit.k.nautiyal@intel.com>
 <aYBi67v7ks4V3C1e@ideak-desk.lan>
 <87caf4d2-df09-45a5-83bf-b4705d293e8c@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87caf4d2-df09-45a5-83bf-b4705d293e8c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0063.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:a::27) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH2PR11MB8835:EE_
X-MS-Office365-Filtering-Correlation-Id: 98feb166-c4dd-4753-d0f9-08de623d3adc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVlTUE1CK0htcDhGek9xUG5Ma2tkZFVDM2FCY1RQQjBRZFZqRUhjN3RqNWl0?=
 =?utf-8?B?MjN5b2cxd1ZDa3drbmxUR3MyQml2b3pmRVBrRlpKS1lUY0JhY3RveWZHL1g1?=
 =?utf-8?B?MnJicmNIUDB5bkFoMHcxeUJvcDZnQzRYVkd5dEFwdzZwbktBTzluTU9yQzE4?=
 =?utf-8?B?UVFLUUl0VXM4bnUyazJTa3RGaHNFNWI3REtDN2l4Q0t1SkgxVEJGT2ZJakhj?=
 =?utf-8?B?VU8rcGl4dmNEVk9sakJEK3YreU1FMWVlS3pKcmpYYVVkQjc5ZTRmV2hrT2xB?=
 =?utf-8?B?dnJubUxPZFN2UW5XRkZxakJGemtxbVRkTStCWThyT2RPUXFseSsxNWRzakU2?=
 =?utf-8?B?RUxVRytVbkg2SWJGdUk3RnYralp1SEhIL2Z6aVlNbUwzWW9McVBKb0JjbURl?=
 =?utf-8?B?ek1jNEswNHcwbkRUU1lQNUZOMS9reDF5R3lDNytTMG8xMkxJRlRqSXpKMW11?=
 =?utf-8?B?SjBEbVRnK2J0a3RPVFFPZUZPbE9UanNQeUZKajRCWmRLU0NreU9SY2JaTTlo?=
 =?utf-8?B?ZS9URlA5QVZPNUZlQWROYmZlcEd6c3BueDJaVXRNYzBSRVV1dEt2b0t0MUR6?=
 =?utf-8?B?WHpQWGVSZHhlTUE5R2hIbE5oYVdMQzJwdSszZzhzTHE2Y2dHRElnRWxDdWxt?=
 =?utf-8?B?TmN0UUttY0tEWnIwYWRuTVJJcFNpYXREdXVTZEk2QnFiblROWFVuYWs4UDdj?=
 =?utf-8?B?dWlRRUpadDB6NDRBV0pJdW5ZYkZrUm0zdm4zWlFmZFUzMEljTS95RDJ5b3o2?=
 =?utf-8?B?eFNORExFeURWeUZoWDgzWm1DdDZpV29MeC9QNWhQT2MrUmY1VEhaaFEvN0VF?=
 =?utf-8?B?azRqQzJDOXZJUmVONXJWT3FRcUdFcGN0Szh0dFZCbHlsN3QvbnZxZFVoQXMx?=
 =?utf-8?B?RWdLOU9OdncvOUxmalExNXlwa1JHWW5wZ3BQQ0llQXB6S2cxYnYrTmNrT05Y?=
 =?utf-8?B?dVJ0Zlo4RnRpSk9GMGZ6SUR1N2F2Z3p3Q0JlUjNIVEJ1bXFkZUIzVk1vZFgr?=
 =?utf-8?B?RmdaNTkveUhQVzRMK3k4b3dGaFNBejFuU3Z3eW9Ed1Q2N2NFSmFnTlQ2OWtw?=
 =?utf-8?B?alRsY2xlUHRLOGZ4M3FHY3Z4M0hxVmV5TzVFWWdNejE3ODNPZm9zcDV6LzNH?=
 =?utf-8?B?c0JhSHVxR2g4K1NKZFllUlRIR09PcnNHTXppQWF3cEQ4TXlSczM3dWpvTDMr?=
 =?utf-8?B?UUcrMzdwdXlBRW5Jc0hVeW1HTlNHcmVObzVsYnJPZHNEeVpGak5Xbi9QUWs3?=
 =?utf-8?B?Q1BVZ1B4WGF1dU00SUw5WkpRMm5SM1dDSUp6NTFtTG9GMXFqU0ZpNDZhS2FP?=
 =?utf-8?B?dStoSHdxU1BSODdpeEpqYkxHRWVpUTd1ZHRjeHUyNEhwczRoS0hxWVVpbkZT?=
 =?utf-8?B?dmJ1SVZ3cUcxK1dmd25xQ3k1ZDRqMThjMDVNRkwzaHJmN0M0Z3N2ak5aVXRR?=
 =?utf-8?B?UVhFb08rbjkwU2tvSWU4eE50dmh4cXdlY2l5dFoyVGRLRi9GWDVCeUhNQTJq?=
 =?utf-8?B?Ukl3R1dYc2xabmRxdTRJYjhqa3JZU20vSDZJOWRqSFkzTGFBL3B5cFA3c3JX?=
 =?utf-8?B?bzc3cVFDQ0VwYTM2WThhZFRqOGVQbEtLeUNYeDgvYS9TQnloMldYM0NDTDI3?=
 =?utf-8?B?NXpuV0RIbnVpQWVJYVBsZjA2T3pSMjg4R3dERVBUd1QzRWhrQ3h4ZUFQWEdT?=
 =?utf-8?B?MlBOYW1pblZ6ZjNkejdnRWorVUtmWldyT05RTklpM0x6ay9vYzBaUnZBYVBi?=
 =?utf-8?B?c25JbzExbCsrZXlZa0wvTnlxQ2hQaGZ6STU3Mk5NSTFsbkQyaXVWRXVVajRH?=
 =?utf-8?B?VmludDVpQ2tIOUJWR3BDWkhnb2dYMU0vMFp0NWtZOG9pb3htT2hJWXJrZG1p?=
 =?utf-8?B?dVp4dVVtVkJRL09NY3pBb2wwWVcydE4wa2tvb25VYURlWkw5bGd1UlZ6WFZF?=
 =?utf-8?B?NHlHc2tNN0VkbjlqbFFBSTdzRnpsQmJUQk9Td2JWYis3K2NqZnZJOEphb0JO?=
 =?utf-8?B?cHhSOURXck0zUk9CcnpLa0syZGJuTFhYODZoeW85akIwRzVoS2lqTXNuMnI2?=
 =?utf-8?B?dndvYjZCRnhZTmRzWmJiVlYvdFBwODFIZTY3VnlncytVWjRNb1d6SGk1STlG?=
 =?utf-8?Q?VG4U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ym0zb2VpY1BDYkJjUjNyUFAxdThweG9YenlBWitYZXA3bnJzTGU4eEZ6WDlH?=
 =?utf-8?B?N3k2emlidzZkd2ZONWN5QVZGMitPK3ZGbTc0eW9GWDR0YjZLRGh6MnhxVGhr?=
 =?utf-8?B?cGtIcmVMNE9FcU8xTmc1ZncvbmE4eTJWNXQzQUdxT3ZTdS9kaHpGWkhJcUZD?=
 =?utf-8?B?aUFrWWphc3M4bUJCTTExNGNNb2dHQTVZQjVsaXc1SXlsMlJpQ2tBaWdrVklh?=
 =?utf-8?B?UUtPcitMTkJyNUJqWHFqUW9DR2t2ZUxTbTIyNGZxeG5FYU1jMVY2bGVLRnVP?=
 =?utf-8?B?ajNJWE9ld0F3MHdwRWkvcHRYbmY2Vy8zZzYrZVhBSFRjV3llMUt2VnF5WUpH?=
 =?utf-8?B?dkF1ZzNEMTdodWJrVkViSGc4MTJGcjJDYWRjSVB6RTFPcU5RY2FhWk54SVFM?=
 =?utf-8?B?SG1CbzhvTE1sZTltR2gyeGhBN2xIcXNrQnpnVnNyUEE2TWVQRFRWVnFqMmJO?=
 =?utf-8?B?ZS9SUndvWFZka0RLd0ZjZk1RMkpEcWszYnBKZ2llcXd3L3Z4ZmtZdHFVdnE5?=
 =?utf-8?B?QkRXQzczcnQ2ZVVqMWprQ0FJSk41K1pKWE9wUnVLeWtYdXJGS29hVGdubFJU?=
 =?utf-8?B?VDJ4ajBqMUZSQm5oOGl2Y2RyN2IwUngwcmh0Z0RjaTk3UXpZaDdvOC9OZUhs?=
 =?utf-8?B?Ym5Da3JydHBKNHJ4U083SEdOZUJsNGZ3MExURml4eUVUL1BDYmgyWld6TVZj?=
 =?utf-8?B?eVZNMW11M3FRTXo1ZWh0OERRRkxnT3VlOTlDL09WTW5pazJSY3RPODhPa2E5?=
 =?utf-8?B?ZTlPZ3grSzZFSTd3ODVqT0JleU5DaUlMQUQvNVZHYVE1NkdHQnB5RjZicUVq?=
 =?utf-8?B?M3BqQXhQZytyRkVoZlBvNVpuWFZFVG1iUGE3YTdtYmEzbTQyQ3ZuUHZpMXIy?=
 =?utf-8?B?Uk1FT1o3UjE2TlJPYWxiTkpEazJjdjM4dmh2dXc3QnduRG1LalpXNzZBRzJM?=
 =?utf-8?B?T3p6Rlc4Wi9BVU1oeFlmeXplSEJCc2cwMFhRb3QwZ0tINWJnazh2SWxhM01R?=
 =?utf-8?B?c2Y0NFZic0hLUHl1TUFFYnNvZExKQmVINkk0blpKSEZvVjlUZmFyVGdQZnY2?=
 =?utf-8?B?NkFRcG1KelNXYmg5d2dJbDh1REVrZ1NVU3RyMzR5V2p3WXVkU0NTTTJFSUtn?=
 =?utf-8?B?RVppZU9ZM21HTSt0NFZUekplZmxnSmY1aVloYlowTzBldEsvWjczVCtHZm1t?=
 =?utf-8?B?UlV6bDVINTdwS1lydzFNK3J4S29zeWZ6SkFEdGFrbUlMTjhubDNZUlF5SXBK?=
 =?utf-8?B?NDZpZzVnZ0d0ZndUaDIzT2ZNTld2RExwclgzUXQxbjRYZm5DT0k0VENGK25J?=
 =?utf-8?B?ZU9hQTl6dWhzekpBaGJia2ZxOWJOQ0xhd0xqMWgvWmhLczhyNE9UTC9IWHlK?=
 =?utf-8?B?RFg3NkNiZTUwa0QyTTRFc2JleGFlNUJJbVp3Z2RkRSs1SE40c0Q3Mndsendm?=
 =?utf-8?B?MitRWmNZb0ZjZ1lncUQxT0M0cW8weFp0TjJwdzR0bUFVUjhha3NDdW9FQ25S?=
 =?utf-8?B?ajJHTDkrZUJiNlhPSWx4SzlOdzUyOFNnVTJVa2V5ZnZrblpnOWt6OFloZ0p2?=
 =?utf-8?B?NVpuRkhNR1BsZlgvamxPK0ZodnBGUU15TEhEdWsvOUt6a21JbnM5Y0REWlkw?=
 =?utf-8?B?NjJveXJRNnR2YzNRYWc2ZWZSOE5pS2orTjNoczNqd0tvemJ1QW8wYlBNYnEx?=
 =?utf-8?B?UTBWZ3h2YnlOS1FsdmlkZmN5QjVKeXdWdnRuRlh5elpHVDFTUUM4OHVpNkYr?=
 =?utf-8?B?ekxhVVNwckNid2Y1TE56RE5GTU5sckNXRFhpclRPVlFaTWJNaHd6d0MrZWxs?=
 =?utf-8?B?U2g5WTd5RSt6LzhxLys0QmhickJuUDR2Y1lVRHhJRWluN3Q3b1dCZktEOXZH?=
 =?utf-8?B?ckI4c1lVTU5xTEtwb2FicFVaSktwdkNOa2tjT2tlaU5FNHhsQ21YZTBocVM1?=
 =?utf-8?B?ajYvK3hwK1ZkMlg1R3dmMDZFVktuOERtTjU2Yk13VXZxK3ZZYzEwemhjd2lq?=
 =?utf-8?B?RkxRQVd4V3hOblNuT1BMM2h0a2t5dktTTlYwTGh1QnRBOXhnbHhHUzBUZ1ZZ?=
 =?utf-8?B?THpxaTRRVWEzL0xIUHp6eFFjWnJGU2x3SVlIejBzak9TV1JBeFdLbGVDYWZV?=
 =?utf-8?B?V0lUTW0rK3VsQktHSjB5T1pHU0JuVWtxR3h3NjFGd0xNL0p2L0owQVp3ZW9S?=
 =?utf-8?B?NXBjSENNYk1rcnptL21vVjlDZFBiaGZXZGEzeWpWL0FoSWEvMHc2QW5ueE9n?=
 =?utf-8?B?c2FCTGtBTzhxQmVOTVFzRDNCQ3lKYk9LdlN2MVpCOTFaeU1mYmRKbWt3MXl0?=
 =?utf-8?B?SkxxU01zdlVHTVdUdnlpa3dxNHNnSFI5QUZld2MzUEdiZXFNcVZXdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98feb166-c4dd-4753-d0f9-08de623d3adc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 09:27:05.7798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8drswUqoYYY9RADr0SKtOz4ZTkuWPDrNQcgs21ITzEf1oOTv70LYO7dSC5mxFp7O0t9BE0T2G3lUIoP8t0fAlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8835
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9DD3ECA1A9
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 02:54:25PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/2/2026 2:10 PM, Imre Deak wrote:
> > On Fri, Jan 30, 2026 at 01:47:59PM +0530, Ankit Nautiyal wrote:
> > > Currently in intel_dp_mode_valid(), we compute the number of joined pipes
> > > required before deciding whether DSC is needed. This ordering prevents us
> > > from accounting for DSC-related overhead when determining pipe
> > > requirements.
> > > 
> > > It is not possible to first decide whether DSC is needed and then compute
> > > the required number of joined pipes, because the two depend on each other:
> > > 
> > >   - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
> > >     DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
> > > 
> > >   - Whether a given pipe‑join configuration is sufficient depends on
> > >     effective bandwidth, which itself changes when DSC is used.
> > > 
> > > As a result, the only correct approach is to iterate candidate pipe counts.
> > > 
> > > So, refactor the logic to start with a single pipe and incrementally try
> > > additional pipes only if needed. While DSC overhead is not yet computed
> > > here, this restructuring prepares the code to support that in a follow-up
> > > changes.
> > > 
> > > If a forced joiner configuration is present, we just check for that
> > > configuration. If it fails, we bailout and return instead of trying with
> > > other joiner configurations.
> > > 
> > > v2:
> > >   - Iterate over number of pipes to be joined instead of joiner
> > >     candidates. (Jani)
> > >   - Document the rationale of iterating over number of joined pipes.
> > >     (Imre)
> > > v3:
> > >   - In case the force joiner configuration doesn't work, do not fallback
> > >     to the normal routine, bailout instead of trying other joiner
> > >     configurations. (Imre)
> > > v4:
> > >   - Use num_joined_pipes instead of num_pipes. (Imre)
> > >   - Inititialize status before the loops starts. (Imre)
> > > 
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > There is still one issue, see below.
> > 
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp.c | 135 ++++++++++++++++--------
> > >   1 file changed, 89 insertions(+), 46 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 4c3a1b6d0015..dbe63efc1694 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
> > >   	return true;
> > >   }
> > > +static
> > > +bool intel_dp_can_join(struct intel_display *display,
> > > +		       int num_joined_pipes)
> > > +{
> > > +	switch (num_joined_pipes) {
> > > +	case 1:
> > > +		return true;
> > > +	case 2:
> > > +		return HAS_BIGJOINER(display) ||
> > > +		       HAS_UNCOMPRESSED_JOINER(display);
> > > +	case 4:
> > > +		return HAS_ULTRAJOINER(display);
> > > +	default:
> > > +		return false;
> > > +	}
> > > +}
> > > +
> > >   static enum drm_mode_status
> > >   intel_dp_mode_valid(struct drm_connector *_connector,
> > >   		    const struct drm_display_mode *mode)
> > > @@ -1445,7 +1462,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > >   	const struct drm_display_mode *fixed_mode;
> > >   	int target_clock = mode->clock;
> > >   	int max_rate, mode_rate, max_lanes, max_link_clock;
> > > -	int max_dotclk = display->cdclk.max_dotclk_freq;
> > >   	u16 dsc_max_compressed_bpp = 0;
> > >   	u8 dsc_slice_count = 0;
> > >   	enum drm_mode_status status;
> > > @@ -1488,66 +1504,93 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > >   					   target_clock, mode->hdisplay,
> > >   					   link_bpp_x16, 0);
> > > -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> > > -						     mode->hdisplay, target_clock);
> > > -	max_dotclk *= num_joined_pipes;
> > > +	/*
> > > +	 * We cannot determine the required pipe‑join count before knowing whether
> > > +	 * DSC is needed, nor can we determine DSC need without knowing the pipe
> > > +	 * count.
> > > +	 * Because of this dependency cycle, the only correct approach is to iterate
> > > +	 * over candidate pipe counts and evaluate each combination.
> > > +	 */
> > > +	status = MODE_CLOCK_HIGH;
> > > +	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
> > > +		int max_dotclk = display->cdclk.max_dotclk_freq;
> > > -	if (target_clock > max_dotclk)
> > > -		return MODE_CLOCK_HIGH;
> > > +		if (connector->force_joined_pipes &&
> > > +		    num_joined_pipes != connector->force_joined_pipes)
> > > +			continue;
> > > -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> > > -	if (status != MODE_OK)
> > > -		return status;
> > > +		if (!intel_dp_can_join(display, num_joined_pipes))
> > > +			continue;
> > > -	if (intel_dp_has_dsc(connector)) {
> > > -		int pipe_bpp;
> > > +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> > > +			continue;
> > > -		/*
> > > -		 * TBD pass the connector BPC,
> > > -		 * for now U8_MAX so that max BPC on that platform would be picked
> > > -		 */
> > > -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> > > +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> > > +		if (status != MODE_OK)
> > > +			continue;
> > I missed it in my review of this particular patch, even though
> > I did mention the similar issue elsewhere:
> > 
> > status is guaranteed to be MODE_OK at this point and then ...
> 
> 
> Oh yes this was not a problem earlier as I was setting status =
> MODE_CLOCK_HIGH inside the loop.

It was a problem even then, if this continue happened in the last
iteration.

> 
> Thanks for catching this, will fix this in this patch and the patch#8 and
> re-send.
> 
> 
> Regards,
> 
> Ankit
> 
> > 
> > > -		/*
> > > -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> > > -		 * integer value since we support only integer values of bpp.
> > > -		 */
> > > -		if (intel_dp_is_edp(intel_dp)) {
> > > -			dsc_max_compressed_bpp =
> > > -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> > > +		if (intel_dp_has_dsc(connector)) {
> > > +			int pipe_bpp;
> > > -			dsc_slice_count =
> > > -				intel_dp_dsc_get_slice_count(connector,
> > > -							     target_clock,
> > > -							     mode->hdisplay,
> > > -							     num_joined_pipes);
> > > +			/*
> > > +			 * TBD pass the connector BPC,
> > > +			 * for now U8_MAX so that max BPC on that platform would be picked
> > > +			 */
> > > +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> > > -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
> > > -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> > > -			unsigned long bw_overhead_flags = 0;
> > > +			/*
> > > +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> > > +			 * integer value since we support only integer values of bpp.
> > > +			 */
> > > +			if (intel_dp_is_edp(intel_dp)) {
> > > +				dsc_max_compressed_bpp =
> > > +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> > > -			if (!drm_dp_is_uhbr_rate(max_link_clock))
> > > -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> > > +				dsc_slice_count =
> > > +					intel_dp_dsc_get_slice_count(connector,
> > > +								     target_clock,
> > > +								     mode->hdisplay,
> > > +								     num_joined_pipes);
> > > -			dsc = intel_dp_mode_valid_with_dsc(connector,
> > > -							   max_link_clock, max_lanes,
> > > -							   target_clock, mode->hdisplay,
> > > -							   num_joined_pipes,
> > > -							   output_format, pipe_bpp,
> > > -							   bw_overhead_flags);
> > > +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
> > > +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> > > +				unsigned long bw_overhead_flags = 0;
> > > +
> > > +				if (!drm_dp_is_uhbr_rate(max_link_clock))
> > > +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> > > +
> > > +				dsc = intel_dp_mode_valid_with_dsc(connector,
> > > +								   max_link_clock, max_lanes,
> > > +								   target_clock, mode->hdisplay,
> > > +								   num_joined_pipes,
> > > +								   output_format, pipe_bpp,
> > > +								   bw_overhead_flags);
> > > +			}
> > >   		}
> > > +
> > > +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> > > +			continue;
> > ... this will continue with status == MODE_OK and the loop can terminate
> > like that. So need a status = MODE_CLOCK_HIGH before continue.
> > 
> > > +
> > > +		if (mode_rate > max_rate && !dsc)
> > This needs a status = MODE_CLOCK_HIGH as well.
> > 
> > With the above fixed:
> > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > 
> > > +			continue;
> > > +
> > > +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> > > +		if (status != MODE_OK)
> > > +			continue;
> > > +
> > > +		max_dotclk *= num_joined_pipes;
> > > +
> > > +		if (target_clock > max_dotclk) {
> > > +			status = MODE_CLOCK_HIGH;
> > > +			continue;
> > > +		}
> > > +
> > > +		break;
> > >   	}
> > > -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> > > -		return MODE_CLOCK_HIGH;
> > > -
> > > -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> > >   	if (status != MODE_OK)
> > >   		return status;
> > > -	if (mode_rate > max_rate && !dsc)
> > > -		return MODE_CLOCK_HIGH;
> > > -
> > >   	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
> > >   }
> > > -- 
> > > 2.45.2
> > > 
