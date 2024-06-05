Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9608C8FC8B8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC28110E1AD;
	Wed,  5 Jun 2024 10:13:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9a0UgOh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC4410E1AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717582434; x=1749118434;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=gnh4YOy7i6Wq3NqSo+QCV/+Uui7nu8GXO2iYypOM8oA=;
 b=h9a0UgOhgrshF9UeJVMWEGGqAGam31ZDcdE2iKtzYcB/FpDG079q637U
 C9jCiE2DNzx5YakVZC6vW+9E2UlafCDor6zxFRaZrRJFkQ2EBKb4cHU9B
 0rf338vbUaCeU19gL1EwEyHdEBGx+UBL7txjh6grmDIlWm+SJKnxwU2Uf
 EPtSBsIRWmCWyx8eoHPHe8jMhTjzmTk7kXKLbA0PpEjxJ3a5ShaxUcVuP
 /jliRtmjUZ51AB8CL+7PQQGxDm/h1ah2fVL/4wPB2RcDmewCdBW+/Ystq
 In3mIGRcOdFsiI+NzQZE37VxomCQx6qJ8UD2l5wO9hFmcLUPjjl0tUKPX Q==;
X-CSE-ConnectionGUID: xHpN88XDSLa0V/L+5Z1miQ==
X-CSE-MsgGUID: 8lP1IQHNSDCeA6/APv0izg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24808152"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="24808152"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:13:53 -0700
X-CSE-ConnectionGUID: KGfL/ByjQom6/bOUgF0p5g==
X-CSE-MsgGUID: xDaFNzxTQ9K/wxvfeumZzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="42095907"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jun 2024 03:13:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 03:13:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 03:13:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 5 Jun 2024 03:13:52 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 5 Jun 2024 03:13:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mpwoUnRz6jzITgve3fRwu4ABxqYE2NnDZ54ihQPpB9zlUiUlmlICyNn2Z610jUWvBKVJE9aldBTacikNvqeL4u76QE1OdVM0ZoyjWsBHe3Hpdd0YrzYNTJlR1/3Z0pgkoub66ywKQSHw59VavtFnHp44TlFOvqveiW0a/zjMWsLl+LFQ6Npr7KWOZxW1LYoyyqh2JowUWTThBHINsLQLVsgAwxCKzL7XLUtwkj52/Wn7F2ii1JwSeRNp6E06cKCYQDJBOG5kMZ3RLHgM4nZoEOIHcqc4rNwXj9vlpLamw/5ra2JwbTLKMOVWB0fNV/LXMAvXeeDluPhyzJzLSKCO1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gnh4YOy7i6Wq3NqSo+QCV/+Uui7nu8GXO2iYypOM8oA=;
 b=DdfngYGOFBSi9iud8v6zt12a0bdu4F+ucNLAclBsZA7VNsylNYAQA7fk6ypGXLDH9SayQxArWFeOGOYoNTuhA01RVbwBGvbQa2BW1O8Nz9kmfKOfvhhlLBq3vc3Ux8WJmw19j6SXgVjJ50PVihhUblJ08iZfXmhXFD4xQ/dZJYIX5i5tEStDCPbZHfkUgsny18Mh24qL5OZH2y2Klo49w/DoQXUPd8mjfVSD64xcdKTf/WQRecCkrj5XyYd7cRf6yHzbrOC2+aWxnmV6Qw8HZn/k8j4BHMc5suRat2Z9bDpgA5BXzLLEECUp8aIo1EgyINbKyPH8Llc2cTNp0FBZ3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6773.namprd11.prod.outlook.com (2603:10b6:806:266::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Wed, 5 Jun
 2024 10:13:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Wed, 5 Jun 2024
 10:13:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: Fixes that failed to pick to v6.10-rc2
Thread-Topic: Fixes that failed to pick to v6.10-rc2
Thread-Index: AQHatzAO6tkji7oiX0W9F0RKyqCewLG487aA
Date: Wed, 5 Jun 2024 10:13:45 +0000
Message-ID: <44f0ef6246174c1faca726a86901cd31c9eb5ab0.camel@intel.com>
References: <87y17jbt5r.fsf@intel.com>
In-Reply-To: <87y17jbt5r.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6773:EE_
x-ms-office365-filtering-correlation-id: d17583af-9803-4a9c-2544-08dc85482ef3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dXRNdUdycEhVbmJiVjBOMEo5ekpHb21vUDBxNzBsVHlQTGd5QTh6NnZhbG9w?=
 =?utf-8?B?NjlRVTd4MTVSRVQ4anB4VEZKVnpqLzR0OTMxeUtma0prK3B5TVdQNjBNaFZU?=
 =?utf-8?B?UFBzT1dtU2hueG9mcWo5ZmZ1YlplU2FTZWhZMERVM24zaG0vTG1HN1J2eEZP?=
 =?utf-8?B?M0pBblJ5QkhRaU4va2pUM25PdjV4aDBxSzFxN08vakxIMU1nL0cwN3pBcU5B?=
 =?utf-8?B?VzdsVWp3eTNRRjdHVGgrclJ2ZHArWFUwY1poVzZZT2dqQlNGQzU1elJ4d3VQ?=
 =?utf-8?B?TkRoYnRSZ1BTMTNwVTY0dTZ1QTBvUHRodVBQNlBPcVo2YVZaRU9OaFpSWUk4?=
 =?utf-8?B?MUNFdUgyMnhGM1dBQTZzeGg3M05oeEVHRXhVcy9iejd3VG16QlFZbCttRlg0?=
 =?utf-8?B?VmxkYlRGWHlOSW44SUJkTGRGZ3lGd1JPOGtuMjBhOVI4Ykh4U0NXYktJYmJ6?=
 =?utf-8?B?S2ZpVzdkUjRzZWsrb1IvcG1rUUxMUFFxdzFMeFZ1ZU40bVkweUtCajFHRW9L?=
 =?utf-8?B?R29kOE9MM2ZQRHpOMmdLWkxSYko5RzJyU3JSZ05FK3AvQThqa3oyckZNS1pt?=
 =?utf-8?B?T2FuRzg3VEVxSGljTU1kcDc2WDNGRmtLZDcvKzVibVRCR3ZRYWI3dXZhR1Rq?=
 =?utf-8?B?SVFQU1dOOS9MOWRKNFdvTTEvcHhFb09lU3BWR2RHWEV4VVVHOVBzOHJCQTZ3?=
 =?utf-8?B?Q29PS1AyRjdQd25vKzZzTjQ4T255U2JoT0dtL3dyeGFMMC80Sm1NeGwrRSth?=
 =?utf-8?B?eVpTUS9PZGpKQ3NpTHRGWDl1eXplSE5nSE1rV0YyaHVFZHliR0dQVGNWbUk0?=
 =?utf-8?B?WEtGWGE4WlZRbFRlT0R0TjVXVkx2VVk4MWc3NTFaM2ROMGNkNzZXN2hKM3pF?=
 =?utf-8?B?aVB6MFVWR1FsVkNDMGVNem1rSDJZMG5ZRVduamxBZWUzYmt2QUxJMEw0THFJ?=
 =?utf-8?B?S0RCb2hNUXBSeUVKekZGaUNFbjZNZmFNbUcyUFFXZVZXWWJaTS80UU85S1dJ?=
 =?utf-8?B?enlHdkhuSFJTTEg3V0UxZlhXdk4vajJRcHNYM1h2b1FNdFVvbitOc3pSRU5C?=
 =?utf-8?B?US9odm0rMzNqU0F4OXc4ZGJ5WUR1bzlhanIyNmd1RjljUzlodEloWHdESkpK?=
 =?utf-8?B?QXV4aGRNMTNOcXExbWRGdDZWcmRqVFZRQ1NMeFJsOEVuTWdkcVlidDFLZ253?=
 =?utf-8?B?OVE2Skk2S3dBcEFubDFpTSt5czJENVdYOHBqcHhSUmduZ0VaWlZSKzVSTHJP?=
 =?utf-8?B?LzNqMUhTOFVkd0ZVc1VIQlhoaUphajk3YXZRaEdlNWdyMWV1dFMzVE9wTk5x?=
 =?utf-8?B?OFJ1dTJ0cDNrQjhpelJVbHF3MnYrWWFmcHRMSzRjUDk4L3lMSHBDaUVlRWJx?=
 =?utf-8?B?UitEcEVvTWpmcVh2amYvMmdhalg4WXdKVUJ6aVVoV3RaUzEvbUtqTGFLTS9w?=
 =?utf-8?B?bkRrZFJkbnVGZktuQkFMOU5mZXN6QXNMYjRsdzNmL0NkRzJPOW94dXQrZVM0?=
 =?utf-8?B?bkRyRjZMOWd6MkJyYnNNb0lBMW9LODA2WXpkSHpPL05OVFVQWmMraHdySXVX?=
 =?utf-8?B?UVZjc0JuLzJWdWQ3bkllL1lrNWJWRzYycEJEcDJQeWhoWXc3MyszSnpONUxr?=
 =?utf-8?B?ajBPK2hFbzZsTHdOR3BrSGFaWjZXYVRQL0NWT250ZWI1c0x2NFVvWlYyYzRC?=
 =?utf-8?B?OWRsYVQreHFSWkV1UHQzTWp3Ulg5T3hGbzJWRlVmZmVCVUNYNnFJNXcrOXFm?=
 =?utf-8?B?K29qYXdEaEJTVHUrM0o1OStlN2owa2JQZU1IRTlLMHRyelpMR3VYbXJDZ1Ry?=
 =?utf-8?B?N1FLeUJkS1FzRUpJam5Ydz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3ZsSjJMUDJpZDUwZXNmVldSNWIxQmV0RXRUeEE0R004Qk43NXZudldENVpY?=
 =?utf-8?B?aGc0SEJxVXl0TGdTaEtac29tOEt3LzU3dlU5WS9iRTRXZXRKRTZESHc5NzFa?=
 =?utf-8?B?dzNCd0wvVEZscWtlOXhWUVFDN1RXM1ZlMWs2WnBOeE55cnFxRmpJeGNlc2xM?=
 =?utf-8?B?Y1lnWEhTYjRyRXhSQUV0K0V2ZkQ3RFcvbzI0MWxTMTRYUGFhcnBveFgxTkpQ?=
 =?utf-8?B?aVE1cXpkZ3BPZmVCSlJySEpscmVFSHN6SEN3a3ZtMEM0M3M2Y3c2VCtnK3FB?=
 =?utf-8?B?cm4rN3NSSCtTN0ZzLzRaS2MxQzJibnFXVzRkWWN4NXc5enV4MkhvVE9PUkF1?=
 =?utf-8?B?YUlibmEwT0NxZktucFJ5aGNCOU1jSHovcFpRaG4wRWFlRExKNlRENWp6VEFi?=
 =?utf-8?B?RTdnR0V3RDR1d3ZzclBYNmszbzE2dlN3MHB2cXVaN2kvWjRhbHBxMHhhZHN1?=
 =?utf-8?B?aEUvV2JXa0dQR1Q0aGwzRTFpbUtVT1ZwNm0xekdvVlJjclV0ajRTUVJydTVR?=
 =?utf-8?B?bk5FdnpvL3VGUU9yQkV2Z0V0NEpENmdtOFBtdmpicTVFdk1xTmNtcFJIRzFD?=
 =?utf-8?B?dzF6RWtMOVBKRVF6TDFjc1NFVng1Nm5ZVjFxTkVNczBlUmdmWUMyM2xvVjZW?=
 =?utf-8?B?RFZWelAvR09pbEhXOFRDZFVBSzZpaXVZTTFNMmRacDEwRDliRkRCR0h6dHNr?=
 =?utf-8?B?YUhZZU82RmtLb0hZdG1BRlhnRW9seDVxSFJGakNBWUlSNnNzNWZxNFdWNWxz?=
 =?utf-8?B?SEZzc3UwZ2t3KzZXZ0t5SlRUSkNaMTkwZVpZREpnVE5pemQ4ZzBNaE9mcGIr?=
 =?utf-8?B?YmI3NEtNTDdoWmdQK1dQekZ4cmc3Z0d1MjNzYWdBNzU2NzNhOTAvemhxcmV1?=
 =?utf-8?B?MDJNU1RDYVV6RWdHTHRSdHJUZnc1Y2FtcUk1bHJRMXRzeXNkUm1iT0dYelNK?=
 =?utf-8?B?QmZTQjFVSjBYYmk1WXdnaTR5eTJGQzVySWNDcTZtTzRkSkpVSitxTUdMdGk1?=
 =?utf-8?B?RXYvYmJUNG9PcE5nZllIUVYraXBIMUQrZkZRd0tPVnF3WGlDVURsNVdOL1J4?=
 =?utf-8?B?L3ZlV0cveGYyQ3NwNjVRLzFnSnVVdDhvbG5CUWhoS1k4dWF4QUR4UmthNmRu?=
 =?utf-8?B?VDN1alo3Ymw1NTZraktEeC90b1FyWlo2S3FhZDd2aFhrZmFsSG5jcmlZdW5q?=
 =?utf-8?B?UHZsdmhCdUFBU0ZqMEhGak9KdmI0T1pnNzVjSjczbjNLR0UxZzVtVEUveGMv?=
 =?utf-8?B?enluZWlkNjlzYlJOTHhLdGVCN1RQVnhra0JmM0hNam1wOXVBUGhrRk1SWXk0?=
 =?utf-8?B?aU82ZE83M3B4bDl4ZGNSU3pHeXJuZCtaVHpsOGtlUTUxUXZFdzIyelVaaFNv?=
 =?utf-8?B?M3BYZ0RPU2M1MEdLN1JzMWlxVUUvemhOcXl6QzYrcnR0MnlkMUtBNUxVNjR3?=
 =?utf-8?B?WWw4a2N4Rzl0RXhuVTBIa3lNaGtFczZnRW1pVlhYVHVwKzJRNHVCeE1EK2dt?=
 =?utf-8?B?bHdzV2h3bTUxVWYra3dZTDhLYk5sdkZhYW90NHduOTV1SmsxZ1Vxb1BGN05C?=
 =?utf-8?B?VGtzRnhpUHpuNldpU1g3UzFiM1dPbDByaWVhaTJNZm9uQWZSSGtPQ29Ic3Jq?=
 =?utf-8?B?RmZkOEtzZ2psNy9XZm1NRUx3MTQyekRVR3FLNzhXSHBxUnh1ZEl2QkI1ZFVQ?=
 =?utf-8?B?U1h2TGN3N0NRODJVeW1ZT0JBb2FUb1NkS2Z2d1J3RXMzUUJQTlVzcWttVy9G?=
 =?utf-8?B?ZXkvWnduYjJ3bW1mejVneTk5RUVmQ3JEZkdEV2xhTHZxYUhWcnQ2OERXZkFm?=
 =?utf-8?B?RnF4MnBvNDdicENRa2h3NmhnNTcyQ3RXdTM2YmVMSTh0ZUp6MzZDTlpUdWd0?=
 =?utf-8?B?Ky9MU3B0L0ZScHRwRVRGVXo1bS9uS0dSejJCclZIdDBNbnFnZzNFUWRPcm1X?=
 =?utf-8?B?WWtmdWVhWUduazl0WWFGMzlDVFlNbzBxaHh6MjJJY2VDQWJmTDZwbUJLN1My?=
 =?utf-8?B?UTZmcGI1NzdlSmUrc01zQXZpTVRuZGRKTURTdGpONnJVakhoOFZHaThzWENy?=
 =?utf-8?B?UExobHlNQTJGSHNzUStaVW9EeVdmZ2drdkdqSkVzbTd6d3MycG43c1o1N3Yv?=
 =?utf-8?B?SFBnNWVUZjNtSVRKb3o1RThic2JwWXVmSmtlMU5QaGhOd05iekc4ZDRGQ0pa?=
 =?utf-8?B?L2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <39CA050FFC7F704DB9A5FEFF1C07CC25@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d17583af-9803-4a9c-2544-08dc85482ef3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2024 10:13:45.1557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SMXsZRSReIsfMGRIIyp+IYVWd4MNTKggf1IdPNNs2S1fjVFwFIabt1bbel9Y8gFOp8eXuE2enpdJfHz6mNsNclZbfQ+EV8RHWzdNRUwSI24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6773
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

T24gV2VkLCAyMDI0LTA2LTA1IGF0IDEzOjA2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
DQo+IEpvdW5pLCBBbmltZXNoLCB0aGVyZSBhcmUgc29tZSBQU1IgY29tbWl0cyB3aXRoIEZpeGVz
OiBwb2ludGluZyBhdA0KPiBjb21taXRzIGluIHY2Ljkgb3IgdjYuMTAtcmMxLg0KPiANCj4gVGhp
cyBkb2VzIG5vdCBhcHBseSBjbGVhbmx5IHRvIC1yYzE6DQo+IGQwN2E1Nzg3MDNkYiAoImRybS9p
OTE1L2Rpc3BsYXk6IERvIG5vdCBwcmludCAicHNyOiBlbmFibGVkIiBmb3Igb24NCj4gUGFuZWwg
UmVwbGF5IikNCj4gDQo+IFRoaXMgYXBwbGllcyBidXQgZG9lcyBub3QgYnVpbGQ6DQo+IDQ1YjU4
NTMxMTRhZCAoImRybS9pOTE1L3BzcjogR2V0IEVhcmx5IFRyYW5zcG9ydCBzdGF0dXMgaW4NCj4g
aW50ZWxfcHNyX3BpcGVfZ2V0X2NvbmZpZyIpDQo+IA0KPiBUaGlzIGFwcGxpZXMgYW5kIGJ1aWxk
cyBidXQgZGVjaWRlZCB0byBwdW50IGJlY2F1c2Ugb2YgdGhlIGFib3ZlOg0KPiBjZDQzYTg1ZWMz
YzYgKCJkcm0vaTkxNS9wc3I6IFVzZSBlbmFibGUgYm9vbGVhbiBmcm9tIGludGVsX2NydGNfc3Rh
dGUNCj4gZm9yIEVhcmx5IFRyYW5zcG9ydCIpDQo+IA0KPiBJZiB0aGVzZSBhcmUgaW1wb3J0YW50
IGZpeGVzIHRvIGJlIGJhY2twb3J0ZWQgdG8gdjYuMTAsIHBsZWFzZQ0KPiBwcm92aWRlDQo+IHRo
ZSBiYWNrcG9ydHMuDQoNCkZpcnN0IHBhdGNoIGlzIGp1c3QgZm9yIHNoYXBpbmcgZGVidWdmcyBp
bnRlcmZhY2UgcHJpbnRvdXQuIEkgdGhpbmsNCnRoYXQgaXMgb2sgdG8gbGVhdmUgb3V0Lg0KDQpF
YXJseSB0cmFuc3BvcnQgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdCBjdXJyZW50bHkgLT4gc2hvdWxk
IGJlIG9rIHRvDQpsZWF2ZSBvdXQgdHdvIGxhc3QgcGF0Y2hlcy4NCg0KQlIsDQoNCkpvdW5pIEjD
tmdhbmRlcg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCg0K
