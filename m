Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 349AEB0A582
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 15:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE2B10E9B9;
	Fri, 18 Jul 2025 13:46:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q9XHvsiA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A63310E9B2;
 Fri, 18 Jul 2025 13:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752846397; x=1784382397;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=XYMxyXOxrZEh9YGC7AYbbePs3fqaFYsBI6EFjtKKNhY=;
 b=Q9XHvsiABZA+7Cg4P2JkUVakfiGnZ5P1UqV+SitYCNu2ZXqMipv/MHEy
 t7EJXVBXUY7iwz/JkZ/yPyzT6yAssvY5Agh4uSAqcWzYFE4G+7uYIq8Ec
 LT0R6xILKeSJPJdAm+N4ghmRXsEH73nfNv3iTHIRPEJd3VHOjN7L0C6R5
 fgYkGyX/TOWp2qTmAz/QfKNISq6QTdvaENjCaC/dCEZ34Eju4JxWkxUjY
 6/1yPfSJX66CV0OQvRmFWWD+/bsz9lyK+uH9n0MVI72WQ0n3k+NDRvEbe
 05EcUrmtH08+kWvYgeR17G81KbTziB9iSUCPwUhgNQwr5yYbdPjJM7xUW g==;
X-CSE-ConnectionGUID: gaBMXdoMTc+PkL12rfSJ0A==
X-CSE-MsgGUID: VR6LAuGaSGmZ6jtaQcetiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="66487261"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="66487261"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 06:46:36 -0700
X-CSE-ConnectionGUID: N1tk7c5BQgSQ6n2JsYa3hw==
X-CSE-MsgGUID: 8+77t/J3R+uDg3fDeyx+0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="189012367"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 06:46:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 06:46:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 06:46:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 06:46:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DUfAmI1E2NlRZ96SR5AITqg0Uhwd5xL0zNej82yNZ6C3Y+8/hERZsrrhgg7rQ0iq26UAGZrl5UwhNDj4+Jihlj60D+PVGBRui2yEHQlxlWDVfMQQo/4E45xoWO0U2cGbIHu0t5DbRhLFLsmlQai0r2g1CoVvZvlDC8JlcO/Dm6Vv1x/pcANQJzWWzHat3V6FN2jnvpfQSytZMS8MtK4TtJZQyd9HN6yLulL1dW9OYVPtr+zMghYSlZo6l07i6J0ca5f+qim+/IkrdR8PLUYHKYURoMYRGtmfRKEaY2gqRM2faBXqM6sHBWJgKILtpH6c4FnzahDSyjR4pVkUpdrgDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XYMxyXOxrZEh9YGC7AYbbePs3fqaFYsBI6EFjtKKNhY=;
 b=KlghTGPrfEtF1xHXw6IKmddTfg5EHXFPZMatc/M6MW/PL/V5CCxrKg+EuLhEoKSH5Sj4YPRkjQAU5CmZNso/qpC33NYeF1eM/nHmdMpafhvju9qVNrZbbZl4YvlvTKmBbB/oj4ul14O58Ecj5lJGKQK6QDfwENabwcRkwG5XJIEDdbEA6+bH1kZNnT84+AsUsRxNFG6IKZsATtt84csjbWLHFfd5olJ1dHALdFLozmHUIFR+CHvg29knKkcwk5Gr2CSw5kcFh3UlY4t8pocHOMLPy9lF8v12APZMmGuy9s+HIt3mz3y0Uk10O5biHa9a/7YOJ1lsI7yxcbkjV3iYTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7338.namprd11.prod.outlook.com (2603:10b6:930:9e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 13:45:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Fri, 18 Jul 2025
 13:45:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3f3fb0bfadf6096b6e5c9a4137a8a96f56086113.camel@intel.com>
References: <20250717063259.440086-1-jouni.hogander@intel.com>
 <175275909975.1809.8747168482147911326@intel.com>
 <bac5a94acb4cc814a56855be54c2b5e69ab573fe.camel@intel.com>
 <bd7a211e9a56b22673cc8b1d66541bcbea7d3b9f.camel@intel.com>
 <175284351608.1809.17923503412794799848@intel.com>
 <3f3fb0bfadf6096b6e5c9a4137a8a96f56086113.camel@intel.com>
Subject: Re: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Fri, 18 Jul 2025 10:45:43 -0300
Message-ID: <175284634394.1809.9891297221411321500@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0092.namprd03.prod.outlook.com
 (2603:10b6:303:b7::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7338:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c911e5f-8c7d-444e-3705-08ddc60168a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlNWdk5QaFUrbWdKTCtSM0dsU1I4NGRhRUIxYzRQNHVlM0FhT0ZrWWtFMk9a?=
 =?utf-8?B?dnNRRU5QMWtDUklSbGM1SmNhMVJ3bFJLbjM1Y1JlcnJyendCWGJEQXp4UDln?=
 =?utf-8?B?VmRlSC9sTkNlNEtLcWZMa0FEeXpudW1XbEJrcGVsbFpneFRNeFdPRU5mTVZQ?=
 =?utf-8?B?a2FsWHg2ZzZhNklxYmxBWS84VXdrWDUyZWFHajlQYjRoOHZXb1Zndm14c3RC?=
 =?utf-8?B?bTZSWTkzdGdsK2NCQ0plTlFGSXJSR3ExT3l0aHdhc0Y3dXJ3WllNYUw1SjdL?=
 =?utf-8?B?VHhjSFQwcDZkZUJJWnl5ZUdHYmZXS0xJeEhzVzVDb0FhSjA4S3JweXg3WkJE?=
 =?utf-8?B?T0k2VnhXL3NtNlRwaGE5NEZHd2V1WUgxRUM5VEFuQWJKT1RyemtiSEw2NFhF?=
 =?utf-8?B?VE5FOHJLZEI1MkhGRm1IcTFsbENtc1ZIdnphQ2FERktKd1JqaGt1WWZBeU4y?=
 =?utf-8?B?dlRUSzE5cXdrakUweXc4M2ZjV2NUV3lGWjFGZnFQMnhycXMyN09KMDA0WG5n?=
 =?utf-8?B?Y1JSUDVLVHhCWDd3dWtPbkRlOTFETDYwcTZid0ZRTjROdWRjTDZqSDNLaExM?=
 =?utf-8?B?OXA4UHk0RlVRWTZZRk12TzMrYlVyaWZSNjVrVnpmNm9hV1hhcUtUWmk5ZHZ0?=
 =?utf-8?B?RXYyV2w1T3FURElSUXlOeWNkUC9kanU3dE5UeUxyaDYrVjhDcU10Vnp1OHY1?=
 =?utf-8?B?aU9IdnFncTd3cGhVSXJCR3hXOE03K1JsSnJVZVhrYmlvUnRrRmxraHhkM0tw?=
 =?utf-8?B?WlpabEF5NDlOVDFLSStjaStoTkE5TnlNZWRnbENrM0NVaGo0UG1VcWFUcE8w?=
 =?utf-8?B?MnFMNGd3Qm42eGNIQ2I5MjFMazJrT2trYW9keWMwMzNBQmJnNERKSWJna0My?=
 =?utf-8?B?WjhWclYyRWZuMXV4dCtBVUJyeFNBTjhvNExySEZjV09zVG41Mi85S1M0ZnJk?=
 =?utf-8?B?dXk5S0g0L2pBbFlWM2oycDNqeDd0S3p5NUJ6WFZlUjZPeTR5UnpEZ3oyU3FF?=
 =?utf-8?B?QVdFelN0aFk5VFJSblNIMkMwOGJoZDFhc0M5cFZqSXh3NFhDdWtqNUt4K1o2?=
 =?utf-8?B?SCt6aTlHNzhEYjZRZFlKQXhmTGtyVGxCNTNtUVNsekdKOUNqbXJRTk93MEhx?=
 =?utf-8?B?ZjBDb0o4aHZVVDcxQy9mWHVYRDhqRGg0NzNvVmlOYXpXL3BEelgzMDBpaUxL?=
 =?utf-8?B?RDhjTUhSUG00RnJPMmxBUUtqSW42ejcyY1pwQmhPRDBWT0tUUThHMmhiMml5?=
 =?utf-8?B?dVN1bFdWZ0wrWi9WUXV4Q3dXZ244TFB3YUtuZ2VuSXp4RWRGVkZvVG05T3BP?=
 =?utf-8?B?K0JtN3ptWHU5eStaTDJYRVpqK2QvNE5xRGtQR3JJK1dBWExxcUM0Vit3eWd4?=
 =?utf-8?B?Y3RtcTdqaDYzaklnUzNmeFRHSWFBNWtRVzJ1Rlp5SVkyUDF3OEtCN0p0bnFW?=
 =?utf-8?B?eDU5RisyWWZaRWdUb1d0WmEwRnFuM1BONTBEY2xEMVZVVWtPN2RUNlpGbFZB?=
 =?utf-8?B?WDFvaVVXVTI5NTY5M3YxOXFqNEU3RDhsc3J6REU5VDhzSkNZK2kwdzFPMXdK?=
 =?utf-8?B?bVRGakcxS0pTSUVRL1hITndoUDZHdGZleFpYekFNVE5YZEdwWkNvUTcwRFgv?=
 =?utf-8?B?TjlETWZkQXUvU3JEL3ZJOE1wNk5qdG5iWFo2clhUclM4Z1Y2REtXSmJlSWEx?=
 =?utf-8?B?VTBncjdoQjVXTi81YU93SEhzV05wRUs1TEsxZTIvK2RTaUFoa1VDT1Z6c1dx?=
 =?utf-8?B?UXQyUDlRMDVaZ0RwbVBFRzI1SjF6UHE2SXNTNVNQdUdmd0Joc0h0TEZ6dW1o?=
 =?utf-8?B?citId21GUnRuenAya1FUSUNtSWNERnlmMk45dFEvNVV3OThENnhuZWtNSzh5?=
 =?utf-8?B?NHpwN01YcFlCcDBoczdPWHhPOElmRUdoaXBONGNlTlJjTEQ0aTg0alA2UnZr?=
 =?utf-8?Q?3enoCFw6TPk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2dKRXZkSUl0YXFXSUN1VkR6SjJML2JpQklmYWdVZ2FwTngraG9na1hTWEg1?=
 =?utf-8?B?QzU2NWNpUVVici9jNnVOdHRJK29hcGoxL1BEU2g4ZXluYkY2WFpDeWt0cVFk?=
 =?utf-8?B?REhLRGhzWndYcURTTWhXRjdlT0trblplZmZ3dWRXNnhOZ01nZVdQeEhuTitI?=
 =?utf-8?B?cC9SaXUzakR2d0hnVmhuRTV1cWtVWUliSG85dHJ0dzUxTzNITnJBT0tDd3JK?=
 =?utf-8?B?akxLdjh4TTh1eEh2cTRpa0tsK0NjTis4ZzVxQkNpSk1sQW5LZkR3MWdmTG1k?=
 =?utf-8?B?OFBLenI0UHBFOHF4cVRnd1MvRmNsamtqWUdIQnBFWlI3cllHY2JaM2lMRGFv?=
 =?utf-8?B?azlseE45S2VFK2VyMGpobFhTMWF6TjVGVXhLclNVL3dKK3dCTmNuK2wvbjIz?=
 =?utf-8?B?M2pzR3Uwc0dhL296cWxmeGRWanpMTDVCeW5VNVAzdVZ2Z2tOb2JnVmR0TFB6?=
 =?utf-8?B?c3QzUFpxVHFrRGVwOThTcXlQcFo3QnJCdnp3NTVwZ3Q3KzBBZlp5SFl5SVVM?=
 =?utf-8?B?YlBtdXk4c0xRUGpGZ3hFandLUklkZjVBb2w0ckorTjUwL2pmaXlsbEZzb2cy?=
 =?utf-8?B?OEN4d2dtUWV3eFVPa1MySnh0a3RvMUNIVnVQS09aYUd2ZmIxRWZJdjNzS2JR?=
 =?utf-8?B?VXZBRzhZNmVhSE5wVkxOd2IzcXZDWktGNzhiTThLTDdUSHRrWGFnZ2w3dE9S?=
 =?utf-8?B?R0JlcmFiUlFaSXVZOWRBcFpFdUVGZ3M5T3k5ODU5T0grWDZEWG9ldEk4dGsx?=
 =?utf-8?B?MkdmQmM1K2lqcEpEbElBYzNvMEdqK1Fob1c0cmhpMjRlUEV2R1pxcThVaUlD?=
 =?utf-8?B?RWdsV3FIeTBsNnp4Y29mVWIyNElWUm1Uc2djcm03ZElqa0IrRlR6Vm0vemlP?=
 =?utf-8?B?VnJ6MUpMbHRnRkpIUUc4YmdmTWU4NHVwMXNsa1ZKYkNUL2o3RjRBR0YrYXFO?=
 =?utf-8?B?NElkYWFuYlAvYkJkcVhiY2dnd1JJZ0hqbVhRckg0Yzl2ZURZVzBrVVVtVVZU?=
 =?utf-8?B?dWxIYndqVy8ybkREUmtZdldhV1JOOFhyd0pyWVpSRVZUaWJjekd2YVdUeTJm?=
 =?utf-8?B?UzZXRElJRGRMNCt6N2Z0QUphb3pBZ1dVaVNHZlpvUjZsanl1a0tQeWhvSW5K?=
 =?utf-8?B?dy85RFl3akdqOGxuVndpamxYOHM4ZHIzOUNaSUIxOTNUdHBDdHpKcTRtQVBV?=
 =?utf-8?B?M1hpbDN1RUhYZnJmSFYyQ1VWcll3U01WalNoWWpDbnAvZUtHS0dmUFhmclpU?=
 =?utf-8?B?RmxBNTRpZldlRDZkaGZhUFhWZ1p1TE1SSWltaDRJbGtiTjBLSCtab05SeVlj?=
 =?utf-8?B?UVVZN3BMVWpScnh5NGQwTHBrczZENVJvbDJmZVQyU0VrQkU1c2FiOXEwZWpq?=
 =?utf-8?B?UzlUclBaekVidk5DdnJqTzM2Q3FONXVxSnhNY1BJdU16U245ZHhRaHZEZ2tX?=
 =?utf-8?B?bW82T2pmMVA5SGZNZSthbGlLS2dhcHlWU0t5UWZZT2F1OE1iQWtOdnRkZDho?=
 =?utf-8?B?YzlZTzc1U0JrVDF5aDVjQWFaV0tRQVh4aURnSFRVSktsNnlNT3BPQ3lLdXpa?=
 =?utf-8?B?WWVHdVlYVHBHR0txNm1wak5vV0VUMi9sVmFRUG9kck9nQktDTGZZK1JDeDYw?=
 =?utf-8?B?RDRoYnJnN2NKYzByVFk5TlUzYzhLNnBFUnZOVmpnN2diOVl5QWNOVGt1Q3lO?=
 =?utf-8?B?eTkyV2k4WXN2dkFrZDRnemRGYWRuZTdteG9TdEZ5MDRudzcvSmVpcHdheng3?=
 =?utf-8?B?WWplTjR0VXBxTWVZa0hMLzN0RnhPblNTU05Uakwzbm45aytiYWQ2SUU0dXdW?=
 =?utf-8?B?ckxnZ1MzSXBhTXlCelJ5Q2cxQ1lNODFvVGdmQ2VEdUJETEUzaHBLaWxXdHAw?=
 =?utf-8?B?NmwxcWFGQUlGcnRwRkxuY2Q2aktURnJhSlpUaG5qUXpZemt6TVZjN1RUYVVU?=
 =?utf-8?B?TS9CK2ZXeWl6b0Q1RDVzQk5sb2ZXSDFjS3JXS0JwbStWTVI5MitaZS91NWdO?=
 =?utf-8?B?ZDV4RkZRdHJQQXEvazg3MjJGS3JXL0QrSTA2Ulc4SkNjd2xLRDZENXR0S2FF?=
 =?utf-8?B?ajUyYllJVlh2c05NcEgzdzZLUC9OTlNienRZVnB1c0Q3RGE4cEtRN2l0TjlM?=
 =?utf-8?B?WWZMV2poUDhqRUJlUUNzQzZDNDlBR1BHK1lHdndNcHpNWnJ0WTRScVlmZ05T?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c911e5f-8c7d-444e-3705-08ddc60168a5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 13:45:51.2510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rdr+uVXuMsGz1Sa66OtWV+1WFBhQsLcdBqu/NKBzkD97d+r5e3y03eBcv2jTHRMavE/uAg3qexH2Ei56QvdVOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7338
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

Quoting Hogander, Jouni (2025-07-18 10:08:52-03:00)
>On Fri, 2025-07-18 at 09:58 -0300, Gustavo Sousa wrote:
>> Quoting Hogander, Jouni (2025-07-18 07:46:31-03:00)
>> > On Fri, 2025-07-18 at 09:05 +0300, Hogander, Jouni wrote:
>> > > On Thu, 2025-07-17 at 10:31 -0300, Gustavo Sousa wrote:
>> > > > Quoting Jouni H=C3=B6gander (2025-07-17 03:32:58-03:00)
>> > > > > We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after
>> > > > > 3
>> > > > > retries"
>> > > > > since we started configuring LFPS sending. According to Bspec
>> > > > > Configuring
>> > > > > LFPS sending is needed only when using AUXLess ALPM. This
>> > > > > patch
>> > > > > avoids
>> > > > > these failures by configuring LFPS sending only when using
>> > > > > AUXLess
>> > > > > ALPM.
>> > > >=20
>> > > > Hm... But then with this patch we are missing writing zero to
>> > > > that
>> > > > bit
>> > > > when necessary, no?
>> > >=20
>> > > That shouldn't be necessary as 0 is the reset value.
>> > >=20
>> > > >=20
>> > > > Could the timeouts be happening because intel_cx0_rmw() is
>> > > > getting
>> > > > called without calling
>> > > > intel_cx0_phy_transaction_begin()/intel_cx0_phy_transaction_end
>> > > > ()?
>> > >=20
>> > > I wasn't aware about these. I will try them.
>> >=20
>> > I tested this and it doesn't help:
>>=20
>> Okay. Well, I still find it weird that this would time out for one
>> case
>> and not time out for another... Do we have confirmation that this is
>> working fine for the AUX-Less ALPM case?
>
>I can reproduce this issue only with setup having two 4k monitors in DP
>ports and then one eDP panel. The issue is triggered on DP port. I.e.
>something that doesn't have AUX-Less ALPM. As it's clearly unnecessary
>to write this register on that failing port and not mentioned in HAS I
>was thinking just removing the failing write would work in this case.
>
>>=20
>> I wonder if we should rather do this step together with
>> intel_c10_pll_program(). Note that, for C10, there is also a required
>> step to set PHY_C10_VDR_CONTROL1[2] before accessing the msgbus.
>
>Configuring this is a own step listed in HAS (6.k.ii). I can try if
>this works. I have no idea if it's ok to move it.

Hm... Well, not sure. Reading the spec on MacTransmitLFPS field, it
appears that this should be programmed after lane reset sequence is
done. By the time we call intel_c10_pll_program(), the lane reset step
is already done.

Another thing I think we should be doing, if we want to keep this as a
separate step and be aligned with Bspec, is to set
C10_VDR_CTRL_MSGBUS_ACCESS, just like it is done for other C10
progamming in the code. That is a requirement for programming C10 via
msg bus.

--
Gustavo Sousa

>
>>=20
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > index ed8e640b96b0..e6ff7f07b2e3 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > @@ -3239,6 +3239,7 @@ void intel_lnl_mac_transmit_lfps(struct
>> > intel_encoder *encoder,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_crtc_state
>> > *crtc_state)
>> > {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display *display =3D=
 to_intel_display(encoder);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_wakeref_t wakeref;
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 owned_lane_mask =3D intel_cx0_=
get_owned_lane_mask(encoder);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool enable =3D
>> > intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 crtc_=
state);
>> > @@ -3247,6 +3248,8 @@ void intel_lnl_mac_transmit_lfps(struct
>> > intel_encoder *encoder,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (DISPLAY_VER(display) < 20)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 return;
>> >=20
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wakeref =3D intel_cx0_phy_transa=
ction_begin(encoder);
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (i =3D 0; i < 4; i++) {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 int tx =3D i % 2 + 1;
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 :
>> > INTEL_CX0_LANE1;
>> > @@ -3259,6 +3262,8 @@ void intel_lnl_mac_transmit_lfps(struct
>> > intel_encoder *encoder,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 enable ? CONTROL0_MAC_TRANSMIT_LFPS :
>> > 0,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 MB_WRITE_COMMITTED);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_cx0_phy_transaction_end(en=
coder, wakeref);
>> > }
>> >=20
>> > Do you think I should still add this change as well?
>>=20
>> If we are still going with this function instead of doing it in
>> intel_c10_pll_program(), then yes.
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >=20
>> > >=20
>> > > BR,
>> > >=20
>> > > Jouni H=C3=B6gander
>> > >=20
>> > > >=20
>> > > > >=20
>> > > > > Fixes: 9dc619680de4 ("drm/i915/display: Add function to
>> > > > > configure
>> > > > > LFPS sending")
>> > > > > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > > > > ---
>> > > > > drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 +++++------
>> > > > > 1 file changed, 5 insertions(+), 6 deletions(-)
>> > > > >=20
>> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > > > index ed8e640b96b0..9cfc3187aeab 100644
>> > > > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > > > @@ -3239,14 +3239,14 @@ void
>> > > > > intel_lnl_mac_transmit_lfps(struct
>> > > > > intel_encoder *encoder,
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct
>> > > > > intel_crtc_state
>> > > > > *crtc_state)
>> > > > > {
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display =
*display =3D
>> > > > > to_intel_display(encoder);
>> > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 owned_lane_mask =
=3D
>> > > > > intel_cx0_get_owned_lane_mask(encoder);
>> > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool enable =3D
>> > > > > intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
>> > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
>> > > > > crtc_state);
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 owned_lane_mask;
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int i;
>> > > > >=20
>> > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (DISPLAY_VER(disp=
lay) < 20)
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (DISPLAY_VER(disp=
lay) < 20 ||
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
>> > > > > !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
>> > > > > crtc_state))
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 return;
>> > > > >=20
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 owned_lane_mask =3D
>> > > > > intel_cx0_get_owned_lane_mask(encoder);
>> > > >=20
>> > > > This optimization could be on it's own patch.
>> >=20
>> > Ok, maybe I leave that out or add own patch.
>> >=20
>> > BR,
>> >=20
>> > Jouni H=C3=B6gander
>> >=20
>> >=20
>> > > >=20
>> > > > --
>> > > > Gustavo Sousa
>> > > >=20
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (i =3D 0; i < 4; =
i++) {
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 int tx =3D i % 2 + 1;
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 :
>> > > > > INTEL_CX0_LANE1;
>> > > > > @@ -3256,8 +3256,7 @@ void intel_lnl_mac_transmit_lfps(struct
>> > > > > intel_encoder *encoder,
>> > > > >=20
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_cx0_rmw(encoder, lane_mask,
>> > > > > PHY_CMN1_CONTROL(tx, 0),
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CONTROL0_MAC_TRANSMIT_LFPS,
>> > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enable ?
>> > > > > CONTROL0_MAC_TRANSMIT_LFPS
>> > > > > : 0,
>> > > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MB_WRITE_COMMITTED);
>> > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CONTROL0_MAC_TRANSMIT_LFPS,
>> > > > > MB_WRITE_COMMITTED);
>> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> > > > > }
>> > > > >=20
>> > > > > --=20
>> > > > > 2.43.0
>> > > > >=20
>> > >=20
>> >=20
>
