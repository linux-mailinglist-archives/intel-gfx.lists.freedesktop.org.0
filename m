Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9777B9FEA4A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 20:21:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FCD910E0C3;
	Mon, 30 Dec 2024 19:21:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8rcvb+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2804910E0C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2024 19:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735586474; x=1767122474;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1kM5Nrvyk1FA1HbJaD3Igd/yKRtyjBss52jw5xeanno=;
 b=f8rcvb+5EWvSv1ez5K6DoBhYDpP/XmiUUZm0Lcx7zdR8SHkRRrAqByoo
 YWNK39nNRhA6ZMleB8hLlmRJ4yqi8P/mUE825UcFW0Zz9hZ1jqNhWlCVH
 by2LAkTmSve3i9rPOgxJHWmAqq+c9mHyGAKix1NQDIYljUA4SRUO4tJWV
 XUQrJOKDEw7rXuk3qo/q7kCSNadscJvxyH6irMjoiqwdeoQ0WkFv77pcx
 pOUQgUqECnwVpOcMETMPrSJQ/cGDwNU7fqUX0T0oldIzAXQb8Z9L4+Zia
 Q2CwhVh5XjkQSuojp5Uca0hbT+xVxl0R92t9DQiNuACw79k8hgMvtOZxZ g==;
X-CSE-ConnectionGUID: pM8/SUZpRIawGPhpC2EkLQ==
X-CSE-MsgGUID: CQOa6BsJQn+FJvyXN/4LaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="46462873"
X-IronPort-AV: E=Sophos;i="6.12,277,1728975600"; d="scan'208";a="46462873"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 11:21:13 -0800
X-CSE-ConnectionGUID: 0r9Gu8J4RsCU8awda2H+VA==
X-CSE-MsgGUID: 9T35HnsDTBefvosSzSx0Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,277,1728975600"; d="scan'208";a="105722092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 11:21:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 11:21:12 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 11:21:12 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 11:21:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y8DpCzSTW1pcBgUDYlNfRywRvlwGQSvi0aa/cLPbrzlOL3eIYhbBY3CJwXpbkyv96P0JiaiJXqoeKIsmysyKx15E1FnV+enj78Z495cVIjFd0GTrNS541QovMLsGtynq4FsW9vWPERiC5Urn0M+f/C8ixdAxlzT+awV++jMsyWNxuU0nscYTzwhEvkWqDbb9Rn40DJl0j6SeFtN11ZMGUw3yfaXtjcZw5mKkDwXBRfhQdGZ/KjQIO8rI/BvJ6cPDKcTbIjh3PA7+GCP19Aldbz2sCXpP5w6D28Ls738R17x5tq0xrFWuLDlDh0GX54EmiR8nWyaIOz/g6VkpOBAzNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FjEFiA3EOGtBd1VMw3xPBPWhyycafvPi8YTVH78g3F8=;
 b=tHAfMGMEFhovJE2sDKpH/MBALlyfTsX1nR38kIKbhUO5qwBzaGumQDbRpE7M+mtW/E/BYfaazjH/T57KTNTWs81IG1e/2PYH6rjZU2UExAe6ttVo3AT5TiY6/rY5EpeAdz5929CwpnLn6jO5DiAPFNthJR3r1clDGPUYwsRv6RuUQhC37XUPWxyvV/66NCQFkLolZjyidbwQB04tpxLGaeST0PFv2lBNTwtsE7Q7t66auqqvbVqFxrNppzPczf8zy0OKloBeIrTovfa12X9rsTwiae6xVI9bewgkqpXcvtvnClzHD1K3hacjEAufFtmme5oCfynMZ/j6ZkHR4HwKAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 DS0PR11MB8667.namprd11.prod.outlook.com (2603:10b6:8:1b3::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8293.18; Mon, 30 Dec 2024 19:21:07 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8293.020; Mon, 30 Dec 2024
 19:21:06 +0000
Message-ID: <dff52871-dcf9-4725-b95b-ae44badd4faa@intel.com>
Date: Tue, 31 Dec 2024 00:51:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [CI v3 2/6] drm/i915/hdmi: propagate errors from
 intel_hdmi_init_connector()
To: <intel-gfx@lists.freedesktop.org>
References: <cover.1735568047.git.jani.nikula@intel.com>
 <cdaf9e32cc4880c46e120933438c37b4d87be12e.1735568047.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <cdaf9e32cc4880c46e120933438c37b4d87be12e.1735568047.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::19) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|DS0PR11MB8667:EE_
X-MS-Office365-Filtering-Correlation-Id: a71ca58b-4698-4d6c-0815-08dd29071bdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZngzRXdXWml2RVAxUkFWWmpoQjVFSG5WZ2pISXJxM2pyNFhSTXptK25tS0lx?=
 =?utf-8?B?V1VwTDhKemczdS93eDlmeTZyNVNoZmsrVG1LWk1SS1l2RThGZ3kvMnJleTBw?=
 =?utf-8?B?TE4vV3kyeFBhVDVLOWk0RmdoK2x2dlJOSzJBUGRBbHlsT2pFM3lQalpwOUpq?=
 =?utf-8?B?bkVUbnhoeHNkZ0wxSFl4S1JML2ptbm5ralR3WXJDeW4rcHc3cmxoV0NQRVpB?=
 =?utf-8?B?UDdPNzc0ZCt6RVVscHhxdjVpbUEvcWRXQnhZSVhlRDJ4SjExdjlUTk9WaXlE?=
 =?utf-8?B?eXB0TFAzelR0OFdwdjd1NmtTeXBNZUVUSzBBU0xnOUNUejFCLy8zeUFTR211?=
 =?utf-8?B?OWx4R3B4Mkg2dHZ1RmhRMzFyOWdaaElaWC93ZTlPRlVjdDdtTnVMZFVBYnly?=
 =?utf-8?B?T0R1cmVROFZRSGpGakhBYUF2bThpSUFCZzlzMU9qVVRLK1N6RjQ0UzV3YVJD?=
 =?utf-8?B?MUZYOVczNEFPYXVuWEFoWDA0UjhWNFhGcXVGSDZOUDQycDRmVVRRcXVIbjNv?=
 =?utf-8?B?VER6bFNjb25vVW05bkRkVEJ0VXYvR0lKb2ZNNkFYRU9RMzNLa1EwZm42aFM1?=
 =?utf-8?B?bkovQXgrcUtmeUs3c093aVdva21jVVF3OEtCVVM2TVVmd3duKzFNWmc1SDgz?=
 =?utf-8?B?TDZWc25QVzJ4a1ZxMDR6UzJ6U1htRW5HdGR5dUFoQ01qYmV1UGZFc2p6aDVo?=
 =?utf-8?B?N0JncUlGMXhnSnFGeUU0dGs2ZmhLdmlhUkRtMlhrYVI1T05DUHdEZmlkN29v?=
 =?utf-8?B?U293S2g1Ly9EZFBFQjY5Y0hyOXExYjM0MnBvSG53bjVvUVJUODJHRWxIRHVV?=
 =?utf-8?B?ajlValFDM3lkZ1UxaDdzekVrWWpBako2NExrSFg5SEZsdmJxcXNsMTNGRkNi?=
 =?utf-8?B?U3VPM0dZNlpOa1M1OHFxSUdwem5kdmVMOWtveUpJRFVvSmNwNHY1c0d4YzdG?=
 =?utf-8?B?bFgycXZKYTFKd2owYnZyYXhYendOVit6Qjd0S1BGbEFXc203bmwwOU5LUGpW?=
 =?utf-8?B?YUVEYWhKMURwN3Fta1R1V2xDVTJtaW9xUFhsVFB4NmZOeFY3WkVFVkpEN0tR?=
 =?utf-8?B?Zis5eFFkTVlKUlBVWERXVXo5NnZqcVhlN25PVGxvZlJqZkRxUFVXNEJqVUdq?=
 =?utf-8?B?ZlE0d1VRMnorNEJ6MGxmbDErRmR3MVZkOHhITTM4TStjTExxYVJLV2FnOVFB?=
 =?utf-8?B?QU9uRHFjZHJBSTA0b1hlRWo2Y0JTWS82SFVKK1NqUGZjckFrK2djR09aQkZ5?=
 =?utf-8?B?M0MzRUxHc2pZMTdJTmhjMTlSRFoyVmkzYTJYamRNd0taMVlTcm5Oc3RndWxV?=
 =?utf-8?B?ZkxYUXFlQThaeUNoSnhKdk8xQktqRUMvbEhxYmhmcFY1K1lLT0VKaEhxT0NG?=
 =?utf-8?B?NFIzalg4UzdXaVo1c0JHVTgvdzR3Sk5GcUVLVTkyeUFJNHRkMEtiWWdZeko3?=
 =?utf-8?B?OWFNRDI2dDJhK0w0c3JaK29sS2NCM3NGUTJHY2tKYXFMVTlwWXgyaU1JcXpy?=
 =?utf-8?B?YUdnREZlVkkvdzRrdzFPbnMxR21zMDY5Yk1EVGlKQmR1S1ZaWkFxSmZab21t?=
 =?utf-8?B?dTh5aDZaQkd5c05oUUZheFlreE1HQWFmRmNldEpRbnJQTjZ1M3pmU0NWY2Zw?=
 =?utf-8?B?eEI1OUFwQ3FqNFhUNHhlemhBYmo0Mmk4RVBrUlJRS2tuL2VNZDd4VXkrY3Z0?=
 =?utf-8?B?UTlpN2tzRWF2dGdFSzFqeWwzR25qbjl4Y3lONDhBWHNRVERLUFRiNkJWT3lX?=
 =?utf-8?B?bXZmSjhQK2piQVZJY2FYNjJpWHZiK3hielNzV2ovS2NrT2ZqRmltL1pjc3I3?=
 =?utf-8?B?emhYaldCa1RmbytvMEVocDRrdEIzTlhscGFuQ2dtR1BnQTBqZFg5clY0U3pR?=
 =?utf-8?Q?F2aM/cbyyoeuE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmI2RlZlZW1aanMwNUhlUklDSTJGdXBnczVvbXFkNnFqYlBJRGo3bDdGcU9w?=
 =?utf-8?B?UEZUcGd4b0J3bmNOSU1nSHZ5OGdhaEVva0hwWElNOWlJZ2pEdVMwRzJwVmV2?=
 =?utf-8?B?Nk9EQXhmSXRDa09EUXRlbnh0czFxNlgwSHQwVFNkQ3FXRzNJMkFWYjJaSVVj?=
 =?utf-8?B?SzNzcFNubC84S3VPeG51c0tjRGZhOEZkZHBON2NiVWNXcWpVeUdJbTZRdkcv?=
 =?utf-8?B?bHROU1d5QURHSjB5L2RHSkpaWUZlTVFOV0QrWlJ3eE53Y2JkamQzM0JCbFpI?=
 =?utf-8?B?cGwvdXpKSTA4azVRNVFWYWJMOUJRRlZlMm5WTVlQdTFKVkFNNFFuNkhoYi9T?=
 =?utf-8?B?SEFxM0JrZ0RGNzBGUm0rdDk0Qml0UUkrejJONklscThjRUkrK3gvYndnYUZ3?=
 =?utf-8?B?eEhhL3ltMjlXRHcwUnJWbWJQRE1QYTZCUVBTS2Y5NG1nZ3ZWeGtublRwTkJL?=
 =?utf-8?B?VkF0RmhBV2t4em5OeHVQTnJZUExwOUkrTEtQc0R0UmhwZGd0NDU5Qk9pdXE2?=
 =?utf-8?B?MVpUUnA3OVNWYlV1UzUwTnI5Y2UwUFF4a1NPRWh1WEZMK0R6ZWlla1RISkVT?=
 =?utf-8?B?TlJMMVgwTFNFQmRDQ2tZV004aDZ3SDZyWnlVa3R5RnhKQlBRd0ZQN2xGNjQ5?=
 =?utf-8?B?aEtwR0hwOGZLV0tNdGF1Z05tT1paSExvb1VrRXBaOFVVekZNdk5SaHh5b3pU?=
 =?utf-8?B?LzRRM1daYzR6akRvV1pIU2NsT0FWVXVzekVoRm1TRTNKbXhGbzVHM2I1d2ND?=
 =?utf-8?B?NWtGUDlaK3grMW8zVkNJQlRoT2VySUlZUDNZV2tkL3lFWkZzSDlVczdrTkYv?=
 =?utf-8?B?QStBT0lVdzJ5OGZ4Lyt2ZDRiaUJkS3FZUUl3d1lqcDFOeEwzQUN0RkZWck1P?=
 =?utf-8?B?Q1VQenFsS0R2QWFlRWJEKzhBSnZzUmdNNmpPengyckw0cTU1M1d1Mmp4eGZo?=
 =?utf-8?B?Zk1mN1RZM2d6eUtsbk9YL2s0bXJqd1lxYXBPZHNMcytaeWRDa3d5OGhsVWR1?=
 =?utf-8?B?N2RqdXVONDlLNGRHNERuMjFLQ0w5STRUbE5ZYnFEZEZXNXFDaVVYMEdnSFNB?=
 =?utf-8?B?WjE1N2FiRHRCcXNQWmJkOVBnSitBUVp6am0rdDZDWHVSdEtScG40S2Z6SXkw?=
 =?utf-8?B?U29sVk1zZVlGU3ord0VCRDMrc2VpVkJRSkx1dTR4QlYrVFU3MElFWjFjRUxp?=
 =?utf-8?B?Nm5TbktOSWNKZGxDektRZ3ltamw0bmpka2dZZldLek16ZzVyRDU1NFVoQVo3?=
 =?utf-8?B?QkVwNjNxQTd3Q3VqcWtVcGJpaHhha3M1K1h4QzUvVzJWSERQMWZzY0V5Y0tL?=
 =?utf-8?B?aHVlOTFzOHJic1BlcFJ2SjZDRG0yRnBVREtjRnlBYkdrYVY5aUZ5QndwUERL?=
 =?utf-8?B?M2hraUxma1BpeWpvTWh4MnZ2MzEyKzkzQWNhVjB6bU81QnRLZm1va0ZFL0ha?=
 =?utf-8?B?UG0rSFp5VkIwVElCamFJeDhKSUp2U2dSSm5zVmVOOGg1VXZKK2h4NWpyYk9X?=
 =?utf-8?B?Qm4ySjh0aE9PeVNDRkJTcVFKN1BaNnFrdExLS3FzMjJsMkphSnpIYVU5dmp0?=
 =?utf-8?B?amRyVklGWDdBY0pRcFRJcklRTTBVU2Z0Y1VGcStyVUZPQjBEWmcxM2tsM08w?=
 =?utf-8?B?azVUYVF1elYxYnJkczV6WWQ5SDRwT21zeG9SY3RQUGt3b09oUVFmY2pKYVFR?=
 =?utf-8?B?Q0JMSFF1TVBlaHA2WEZuTCtIVk1qRWkzR3l2ZHdBZzhzNm9NRTAvU293T2ZY?=
 =?utf-8?B?bUtIb1BDeVhOSEZjSExQNDBUc2RDNGVwbncydG5abTZleGJlczZoZ2FFaVZI?=
 =?utf-8?B?UWt5UW9IUjF4RFNKVTNNYUNEaW9QUW5pOE55ZnBYcUl2dE9ZMU16QW9SWVpz?=
 =?utf-8?B?dFlobE1LOHhNMjV5aEEwNDk1bnhKR1JwVHczcVN6MXhHSTE5eVNLYVhhQ1dK?=
 =?utf-8?B?RXAyRG96TnZFS1lZV013eDNNcy9YVVppbEp0dENEY0tHNnZMbS9JamVlTTRF?=
 =?utf-8?B?VjU1ZUdhZWhUaldSc0d0a1hOeVd5QXNXZ2hXU0dvNW54S2Jpa1ppbThyeHZE?=
 =?utf-8?B?MlBQcTJoUnBFamFnMmtQWTdKUjJFWGJ4UmJTdENNcjJVMnRxdXBoeGV2S0Ru?=
 =?utf-8?B?Qk51MkFpMW9mVThrcDZRYjJURHFMaFhBSXFiUUFrRk5ET2tPRUtWajBma2da?=
 =?utf-8?Q?TL9A2KOZwbHRSj66XhSdvkM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a71ca58b-4698-4d6c-0815-08dd29071bdb
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2024 19:21:06.8496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HJTPfl4KWa82hQ2auvV+Jdc7GA0oBcfb46POxB2G2cNiZUZDa+TA2yuckxG52si5Jb7v9ht80GUPYSkCAa6iJHWOfWyBrkMatnFKr9XrwpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8667
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




On 12/30/2024 7:44 PM, Jani Nikula wrote:
> Propagate errors from intel_hdmi_init_connector() to be able to handle
> them at callers. This is similar to intel_dp_init_connector().
>
> Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
> Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
> Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 10 ++++++----
>   drivers/gpu/drm/i915/display/intel_hdmi.h |  2 +-
>   2 files changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index f7b1768b279c..ed29dd0ccef0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3039,7 +3039,7 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
>   	}
>   }
>   
> -void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
> +bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>   			       struct intel_connector *intel_connector)
>   {
>   	struct intel_display *display = to_intel_display(dig_port);
> @@ -3056,17 +3056,17 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>   		    intel_encoder->base.base.id, intel_encoder->base.name);
>   
>   	if (DISPLAY_VER(display) < 12 && drm_WARN_ON(dev, port == PORT_A))
> -		return;
> +		return false;
>   
>   	if (drm_WARN(dev, dig_port->max_lanes < 4,
>   		     "Not enough lanes (%d) for HDMI on [ENCODER:%d:%s]\n",
>   		     dig_port->max_lanes, intel_encoder->base.base.id,
>   		     intel_encoder->base.name))
> -		return;
> +		return false;
>   
>   	ddc_pin = intel_hdmi_ddc_pin(intel_encoder);
>   	if (!ddc_pin)
> -		return;
> +		return false;
>   
>   	drm_connector_init_with_ddc(dev, connector,
>   				    &intel_hdmi_connector_funcs,

drm_connector_init_with_ddc() function has return values, these should 
also be handled here.

> @@ -3111,6 +3111,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>   					   &conn_info);
>   	if (!intel_hdmi->cec_notifier)
>   		drm_dbg_kms(display->drm, "CEC notifier get failed\n");
> +
> +	return true;
>   }
>   
>   /*
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 466f48df8a74..38deaeb302a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -22,7 +22,7 @@ struct intel_encoder;
>   struct intel_hdmi;
>   union hdmi_infoframe;
>   
> -void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
> +bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>   			       struct intel_connector *intel_connector);
>   bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
>   				      const struct intel_crtc_state *crtc_state,

