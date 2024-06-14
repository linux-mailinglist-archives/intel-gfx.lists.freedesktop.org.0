Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 433DD908541
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 09:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32FE410EC74;
	Fri, 14 Jun 2024 07:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aghgdd+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA73410EC75
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 07:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718351088; x=1749887088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=disBtyg7gxk+22OojvRXxs2vauKV41Of+BTd9EEWivk=;
 b=aghgdd+3kplChjoJ8MtpwMnGXEBpc9x/JrgJUqLYTO5rc5H/v3WpOyyz
 xLrn33/oQEgrkOoLifJ6cpf/jvXxxJ9YHk0AnsY4xCXKB68v6qhjWSPlf
 6gNubwfjMbW5gSu7Rwu4GBb6b2KTIxP2xRp2BM53ZqCeTGQjh1M98Pqb8
 vMs3UBMs7SGuUr+eZ7TqGry0TbGnVZb2/1XIkIwEBtZ4zgzShwN+nFYS+
 uFaaoojtWYOEVvySW4GzB50qyMjMZm3Dus9XJk7o8BouXQGDWr8D3Sg6Q
 GRuqIsXRKmbHRFc19CPCXnKt7n22NYj8Ji8CaJ5aNFzyvmgbHMapbqui7 Q==;
X-CSE-ConnectionGUID: Fq9krJb5TuaWblDVOK0KWA==
X-CSE-MsgGUID: USYjyoFgSl2wJn0OtMkGcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="15454612"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15454612"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 00:44:47 -0700
X-CSE-ConnectionGUID: YOHi1Cv6R4aZ+hW9DcnQKA==
X-CSE-MsgGUID: 2mIcPDGJSsmRjtTrW7O48g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="71623402"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 00:44:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 00:44:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 00:44:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 00:44:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 00:44:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RUFo4AAFxsDOieEZdfCAABFzoIkNmPyLnrQofPRzVPCdy/F3TtwDDzJeIjimA7wNDTkpCTp1SiMnSKboDB9MAXNlVEzQ2W2qqgCQaeB1fPxOQz4iktFfHmIG1vaYZTIKm6FkQjl6OqEsYExyIWIJwKB6ML6037lyo2xmZ/GdwJL9r7cTC4QH/4ePBogJdZG146V5tBA4Or8zWbG+RIU15F7DGnMwKQhBwhrZpI+Pb6blzbBVnLE/KXQIa6Bp3gO0+axN3l9ZOpS9Q52z6ocmnUE5EkVs3IC/XnWkafx8mjrbGCbddNkutgM5UT8TQrSdt+2n1j2NlBU2EYzN5H/CzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=disBtyg7gxk+22OojvRXxs2vauKV41Of+BTd9EEWivk=;
 b=F7Ei5RHPSQYeZiy1kUENEu3sYlOA4qG8hHC3CQ/+YqdoHvrkM9x+dIrzhf0xOhpn1vkIneyU40pQ1WUta1A4vOODIhPz/fN6EYvZfLNPren/7KIi9axz8qQnDmJTHQEq7sKTIzR2x8BlNW9RDePyghXtHTNYOgAYp6y33+J73hyTBzlCWPiXFWXW//VIdY/D0nD7cYtVP3mSlSKOBafpxeiGhB0HcCLzP2rncHfEESxb8s2DJPjvA+LmLmBrdZdPasbLg23JftnjmYETLgS6TAGnp5hAf9m2Kzdgve7z9J+tq9tDJyKAvL2liL471WTY728qbtaGhEu6a4sd23Da/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by CH3PR11MB8237.namprd11.prod.outlook.com (2603:10b6:610:154::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Fri, 14 Jun
 2024 07:44:43 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%5]) with mapi id 15.20.7633.036; Fri, 14 Jun 2024
 07:44:43 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Patchwork
 <patchwork@emeril.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5DSEVDS1BBVENIOiB3YXJuaW5nIGZvciBkcm0vaTkx?=
 =?utf-8?B?NS9kaXNwbGF5OiBTZW5kIHZyciB2c3luYyBwYXJhbXMgd2huZSB2cnIgaXMg?=
 =?utf-8?Q?enabled?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1L2Rp?=
 =?utf-8?B?c3BsYXk6IFNlbmQgdnJyIHZzeW5jIHBhcmFtcyB3aG5lIHZyciBpcyBlbmFi?=
 =?utf-8?Q?led?=
Thread-Index: AQHau/raEYMAbvkZ8U6RNdjldsxTrbHG4++AgAAA1WA=
Date: Fri, 14 Jun 2024 07:44:43 +0000
Message-ID: <CY5PR11MB63441873C909F11FFD45FE7AB2C22@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240611120151.147778-1-mitulkumar.ajitkumar.golani@intel.com>
 <171810888823.67160.11520367117589106799@a6498e030952>
 <87frtght28.fsf@intel.com>
In-Reply-To: <87frtght28.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|CH3PR11MB8237:EE_
x-ms-office365-filtering-correlation-id: 5816d8be-a1eb-475e-68f3-08dc8c45dafa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230035|376009|1800799019|366011|38070700013;
x-microsoft-antispam-message-info: =?utf-8?B?Mk9BTm0rY0g0dTFYbjArZldmcXZ6NXFXRGc3RlozQW9XRDdmVEpFUWliMmRE?=
 =?utf-8?B?bDFaZ0pNNi9xb0ozWnoyWWpIeW0vaW4xRE1EUGh0bHB2aXNwNnJ3bXErZG5T?=
 =?utf-8?B?eElrUHcvNkFvWElDa0xSZWIzUzA1VkowcWRXaDJyZGhaVVBGYzF3VEdQWFFN?=
 =?utf-8?B?cFVaRG5wWU9QS2I3TlJUZ0hVc2tmdUJiSTJFcy9RbElzSXBmU2xyNHJHQTBE?=
 =?utf-8?B?UmJqcnFmVHFPdDQ0N1ZVQUZ2ZWhNRTRjL0M2UUQxTDJiRnJsL1dDdWlQYkZa?=
 =?utf-8?B?cVFuZTZReGN1VXBXdDZHU2svcWtkSUtuWlllMmhrYW9wSlZ3RFk2THliamlq?=
 =?utf-8?B?ZTFZcGFPSHk0U3lKZE9sdVA4UDBCSTZpWkd3bGo1ZUVaS2tmRkdMdlFsVEVH?=
 =?utf-8?B?cXZsTkFXb2dQam5tcE9lUDRlMkZVVVExbHhDcWhWLzVqRDhxanFveWp6Q2tk?=
 =?utf-8?B?QXIraTZ3amJvVE5lOFZhVVJteWVxY0pja0xENjdIUyswV1J2cXpuVHJuY0tP?=
 =?utf-8?B?U0o0Z2NFRzhiVzQzS1Q3SzgwY0RobUlDYzJ2ZUFldlVmTjFDc2s4MklCZmJK?=
 =?utf-8?B?NjcvMVlhWFhJbmJlVzZ5NkVtR3JjMW1Xc3ZjbFRjTkRMc1JDai9sOC9iN1J5?=
 =?utf-8?B?U3dDNzdqMWp4d0R5WFFrczRxYUE1cVQwdWpYZi8yNyt0eGFLZDE4MzFJOThX?=
 =?utf-8?B?QnBaZU1UNE4xNG5RY3R2S05EY0xGMUc0aERFeGJ0RnU5bDN0YkhTOGxNZHgx?=
 =?utf-8?B?bFBYRFkwTVpnVXFJSFhEUjljVC9Ha0dZdWgyUEFES3FpbHBvRDZ5RmY1VWdR?=
 =?utf-8?B?Q3k3bGZPd3BGcVBjWC9OemZDazBoLzJ6K0dOMkVRaThQNVBTWTF6QlFDOXpY?=
 =?utf-8?B?NFFFczRmZlJQYU5FT3F4cmNYaUliUEo1QndaNXVCWUVYZ05OZXNUbDlJaUV3?=
 =?utf-8?B?YUJnWUgxZUZjVUZKZ1FralNWMnIybXJuMkJXYlVPcGZVcTFMbU5wU05UdVlT?=
 =?utf-8?B?RHpGL0VaVzBPenRhb1FZdzVOTFJYeU9FK3RrZlhmbFJKNEZ2aCtMSmFlMEVx?=
 =?utf-8?B?dlkzT2JVNDdMOHh2VWt4OGZpZFNZTjJPYUUrOEtHRGEzam5xVHpMTEtOaDc4?=
 =?utf-8?B?YWlJL0ZCQjJMc2ZVU1JaOGpiNEg1c1JvcXlBazZiSjdFb0c5ME5uaWpMOXFZ?=
 =?utf-8?B?MVlrL0VOemJ2Y0J5REwvQkorVUM5M0dNMXZCM2N3N1NZbmxQZk55TzhndDlO?=
 =?utf-8?B?MVBwNHZvN01ZMmZhbUR2MWNZa0wybndDZEtTVnRoVnpqRStQZTcySHI5Y2ZB?=
 =?utf-8?B?cTNoU1FTNDMzYi85blRoL2JJLzgxUEYxdFM2UTY5dElGeXkwTlFHUU1meDBH?=
 =?utf-8?B?Y0o5Z05FRGtCWFNjajJmcVdmVWU2bHJnZ2pFajhadWczTm5XeTRoMm5DbmFV?=
 =?utf-8?B?c1FZMHBFVUdqT3k1MXl1c0paNTlISzV6L3gwMUcyeE5Md0NjZkFkN1EwRTVa?=
 =?utf-8?B?T2dFUkxKOVY5TEx0dy9ObWYxZCtOckZuUGVrWC82NERRR1MwekorMVFmQ21L?=
 =?utf-8?B?cS9sempnaXhlSzUvcjFSRXZBVmxKS014V20xazRoQ3oyRjZsL0dIOVdCT0VI?=
 =?utf-8?B?WDMxN3ZBb1BqQXlVZy8wbE1aQlcxYjhCTXM5TS83RmVYblBkb3JFNUhyWjNR?=
 =?utf-8?B?blpKTXhNRFZ1T0ZCVTVtcndKRUZpKzhqUmhIWXp4b05ZWnlsL0pzRHNEVmNR?=
 =?utf-8?Q?6KBUEqPsqisKeFcuoMdMK+5dTfOTUQecDTCXBqP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(376009)(1800799019)(366011)(38070700013); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aHc5em1QR21iQUdtdnVyQUluRkhHWlhwRmRlYWdhSER3YWNmdVYxeWpvckhH?=
 =?utf-8?B?eHhCNG02NDBjLzJtQkVtdE90eHQ3aWtRaXlBdzBKb0pDUEVoWFNDdXZ6Vk93?=
 =?utf-8?B?VWdyWjUxalJzZHdSVUJMMHFZUFpVUER2NkJJb2o1ZTVFVUZLWm1CeEl4eHlO?=
 =?utf-8?B?N01MRU9yellwd0s3dGhla2Q3YUdvUUZ3Y00vL2pDTGlTZm5PZFlaTEkrNkZ5?=
 =?utf-8?B?SFEvNXBpdkpmMm45L2JuS0U1SmJ2ZVNXS0ViWU9qYVRQcVRvM1dlSnRzVXFW?=
 =?utf-8?B?MTRXYTlZU3hjZFJicVlvNnZ1dTJ3RXhLSFp1M1ZaemM5MUl0Q1IvTjR2SkE3?=
 =?utf-8?B?VzB2VzE5anJhVEN1dkJJd2Q1SmV1U0I3ajk0UVJSVyswdmtMTG5iZmw4cDI4?=
 =?utf-8?B?QXdSNitPdXpZWGpxbUVGTTk2alRhYW15cmRNTDZkdFZLZklZVDFmelU3ZXda?=
 =?utf-8?B?Ty9zNElRN3lBZWo3Unl1K201RkpoblBncEtHajRzOUw2cWFZMllFQVU1d09P?=
 =?utf-8?B?M3UvT2cxWnVIU2poTlM1ZnhBTVZ0YUF1bHFNRTRXK245SU5mM3BBbG8rU3Fu?=
 =?utf-8?B?ZkxBNVVBZjdRT3l6R3owOUdZZGdKSGwrRUVSVzIreno5RTNISy9oZ1MvdlU1?=
 =?utf-8?B?S0VGUnNxS3lJYkJEcEdPcnE1cE9PbHdVV3NWcVJlV2M3UzFmdUczNlIvZ0RB?=
 =?utf-8?B?aWJCUE41bjhhdXE3ZmJGRDQ3SlJsRXR2dEVFVHZ3VDVqUVhsWFk3Q3lIM1Zn?=
 =?utf-8?B?ZTlESUxJYUEyV2hoZ29nV0EvWnhKcS91RGE3djY2ejhrL2pQcWpkTFlTaUtH?=
 =?utf-8?B?K3N3RVJwTGlnM2swSzNlZmlmamNzdDVHamhNZG5pZk1jYmtCczZXRHM0VDJY?=
 =?utf-8?B?MGY2MVNvYmd0RTlOaVhzRklHNWs3OWM3Z0RxblNBT0RVSXI1MlRzZFhLWWtD?=
 =?utf-8?B?dGhUZTArZWpueWVYWld0ZXEwN3N6VGhmTDBSZTM2aDlBQWJFS3UvaUpZdlhQ?=
 =?utf-8?B?QlZFK240S0d2UFc3MDhVUldrVnp5aU1ocEp3cnRNRU05UDByTUdZRGpYYis4?=
 =?utf-8?B?VndJSC9HeVpVL21XYzUrUWw5Qzh0NXJMd2pkVGxHNER2WDV5dzg0T0Noaldz?=
 =?utf-8?B?SHVRUEtEajFybHhFb3BVQ0lKN2lUa2ZoM2pWcHI4RnVFWmljZ0U2emFQY2Q5?=
 =?utf-8?B?emJhSXJzU1Q4ZW5FTkhUVzVVYm8xYS9raEhIdE41c0dOSU1lbmNuTnlLSDRs?=
 =?utf-8?B?ZWg3Y1NaSVZwS2piUHQvc0pac0VQcG5SQm1abTZjd0M4MkRFYisrVmJURUxp?=
 =?utf-8?B?amx0VnBqV2xjVEh5eFJkWmRWaG82ZG5ZWnFhalJpQ05zbk14RTZUa1JOZlNz?=
 =?utf-8?B?RVQwRmpHOXlvN1Z1M2JrUngwU3lkSVFBcDlvN1pUOU54RnpQUW5uWDRodmhT?=
 =?utf-8?B?TEJYbi8ycWxpa2h1eFprelhOQ0h2cktkZEpzQ2l1UVlGQVQ1OXVCWkFWdEpx?=
 =?utf-8?B?bVN1VGlGbldjY21MbDNXMXhHRElQR2JzdzNCSDNueHBSdW1kTS9SQi90QWVL?=
 =?utf-8?B?RUswRGUxRWJwWTZiUkRiZ1AySHFKdE56dXZkaTRjUTFDbVVOUndzUVNXYWYv?=
 =?utf-8?B?aUJ0cnNWUjYrODEvME9FbmFzUFRKYlQrRmxHN0plQVFLRHFqamVmNXEzNlph?=
 =?utf-8?B?L0wvc2dMTFRMMU1JTFBzZkRHblpraWZocXUxbktweDM5UWtFeTJKdk1oVWhK?=
 =?utf-8?B?WHZKcVQrekNieTVKenpyY2dseCtudkhLMUNXeVdTSjR6RXU2NTFmM0htZlBV?=
 =?utf-8?B?bms0a0gweW9OTy8rRy9QaWtCYURodVFsQWFKUlgxYUFvclVqMEF6NWJJZmxH?=
 =?utf-8?B?bnRrdlYrV2p2Y1JpZFRKYW93N2FTL1U1bisrUnMrM2tWMkNFK1hOeE8zRUYw?=
 =?utf-8?B?QkNjeHlkS3NUajZnYUNkWTl1bHh4bndyZXBoNFoweGxrdkhIaGh3MklxRVpj?=
 =?utf-8?B?bUZNTmdhVFgrRjlKdmxXa2Y1T3pXblRkYkZlZGF6SHlmMkVCdjFZbVc1b2JG?=
 =?utf-8?B?S2VCY3k5UTI0dDRURit1VjM0alJzaHkwY1Z2OVFqYldMcmtFSmFSSzhzc1Bt?=
 =?utf-8?B?dklBdDhQem9qRjEvWjJSK1lLMGlqT1ljYzQ3T3hmRUlnT29NQ043SFRXbWVk?=
 =?utf-8?Q?RSSxshQY9L/koYslcz/zl/M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5816d8be-a1eb-475e-68f3-08dc8c45dafa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 07:44:43.3875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bXpFRlIDDsk28lSqZV+DXsHsiLgzIH8Ie5eMK3qMhxUtQi51ZjB/G7ytD3BPkBGoKxbPSrGZpVn1PY39X/SJXfriEGIropSvccomhQWr2UsAA/6odB/wJo5J2QEEuaX1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8237
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

SGkgQEphbmkgTmlrdWxhDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5
LCBKdW5lIDE0LCAyMDI0IDE6MDkgUE0NCj4gVG86IFBhdGNod29yayA8cGF0Y2h3b3JrQGVtZXJp
bC5mcmVlZGVza3RvcC5vcmc+OyBHb2xhbmksIE1pdHVsa3VtYXINCj4gQWppdGt1bWFyIDxtaXR1
bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTog4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdh
cm5pbmcgZm9yIGRybS9pOTE1L2Rpc3BsYXk6IFNlbmQgdnJyDQo+IHZzeW5jIHBhcmFtcyB3aG5l
IHZyciBpcyBlbmFibGVkDQo+IA0KPiBPbiBUdWUsIDExIEp1biAyMDI0LCBQYXRjaHdvcmsgPHBh
dGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPiB3cm90ZToNCj4gPiA9PSBTZXJpZXMgRGV0
YWlscyA9PQ0KPiA+DQo+ID4gU2VyaWVzOiBkcm0vaTkxNS9kaXNwbGF5OiBTZW5kIHZyciB2c3lu
YyBwYXJhbXMgd2huZSB2cnIgaXMgZW5hYmxlZA0KPiA+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzQ3MTQvDQo+ID4gU3RhdGUgOiB3YXJuaW5nDQo+
ID4NCj4gPiA9PSBTdW1tYXJ5ID09DQo+ID4NCj4gPiBFcnJvcjogZGltIGNoZWNrcGF0Y2ggZmFp
bGVkDQo+ID4gNzExMzMyMTgxMzkzIGRybS9pOTE1L2Rpc3BsYXk6IFNlbmQgdnJyIHZzeW5jIHBh
cmFtcyB3aG5lIHZyciBpcw0KPiBlbmFibGVkDQo+ID4gLToyNjogQ0hFQ0s6UEFSRU5USEVTSVNf
QUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4NCj4gcGFyZW50aGVzaXMNCj4g
PiAjMjY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmM6MjM2
Og0KPiA+ICsJaWYgKGludGVsX2RwX2FzX3NkcF9zdXBwb3J0ZWQoaW50ZWxfZHApICYmDQo+ID4g
KwkJCWNydGNfc3RhdGUtPnZyci5lbmFibGUpIHsNCj4gDQo+IFBsZWFzZSBmaXggdGhpcy4NCg0K
SSBmaXhlZCBpbnRvIG5leHQgcmV2aXNpb24gYW5kIGdvdCBtZXJnZWQuDQoNCmh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC81OTgwODkvP3Nlcmllcz0xMzQ3MTQmcmV2PTIN
Cg0KVGhhbmtzLA0KTWl0dWwNCj4gDQo+IA0KPiA+DQo+ID4gdG90YWw6IDAgZXJyb3JzLCAwIHdh
cm5pbmdzLCAxIGNoZWNrcywgOSBsaW5lcyBjaGVja2VkDQo+ID4NCj4gPg0KPiANCj4gLS0NCj4g
SmFuaSBOaWt1bGEsIEludGVsDQo=
