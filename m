Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CCFB25DA1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 09:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D018C10E803;
	Thu, 14 Aug 2025 07:38:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CZZTtBQa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A07D10E803
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Aug 2025 07:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755157103; x=1786693103;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xifvRq4mkqIEsp1w5UDQjyb+FkpYayj3QaYH5AUUOAI=;
 b=CZZTtBQaeKuquVu1d8CeYXPOoRehV/8VmyBRvg8gSSKyNGoX+O/vaANA
 GAYKpINGI1MrpqOEa0uIPyfZgYBSRBmPOcR1GvDIRwuUebXJKyjq+pHAk
 UR9AV+4Dvqe8JGSW2RR0Rvk5jwLtgnEiOo+u1VDrdMObVqL09qPaqu1wo
 /OsMSyVENUvEpu2QPVbsozhxmpoagiUdRtIknHj6YL9RANetR11xYnCIs
 PqkPagBoYaFJM3RCQLlRgmB6QQff2yBoqQJi9qV/ulJVBFUqynjW3IpFM
 krvdTgwECDs4sVZdD5bxyGMnucrzT1aXrd5hwShNdkGlBnGuSiGMG7vu/ w==;
X-CSE-ConnectionGUID: 5NibhYetQ6mtyKHXODwwJA==
X-CSE-MsgGUID: MPgxG956QmCdrlVZ8oXbWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="67737329"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="67737329"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:38:23 -0700
X-CSE-ConnectionGUID: NM3Z2ZQXQIWslbBTU90eiw==
X-CSE-MsgGUID: oHTm0O2BR/mtrzMHIGoXNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="170926664"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:38:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:38:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 14 Aug 2025 00:38:22 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:38:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sC/xwkN1KC0tWniZOnGXYFZoIPxuptPCGhh0Fx8nK0+hlgow5GiqafbumspEKhoLbT342eM8UQXoVuCfCkYnu0Xdnu+pWqkznLCn28pcEMqXfBgnk0AiP+fesWlk9LfgOh6gweb1npBUZ5YPyfgKJUZTushhnYt+2ti0UqVYqPMjaEUcoRlBfXKI44Z2r2unwvqqtbi8DlrzInvj9bMSFRTsYF3b4hEe+QDr1bl39AeVHIUJDyYRODIW2X0YEjxBKV4wdlojiBqc2KAoyGZTBAH38jx608WUP8WcpvzBh6E+/92yOAECaKQe7fbUjeG0mh6WrBmtTP5ixnSlxqorvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xifvRq4mkqIEsp1w5UDQjyb+FkpYayj3QaYH5AUUOAI=;
 b=Jhdl0WEo80Gr50BGKCLrC8GTW6iI170OnEVv29lHf0AB7g7ivvtj9E2nfXnQTpoK+zm6tHs8Bbpz4YJ9BzFXXHucAYKw9m/HckKSjlAkAD/PwNYPtKKyaXJbFwYaK5ypel0b6myXNjguF4K3tgcTsIoDepN4WZJYIjJU1L660ZR3B/gKBqS67o752D7KVMawEqlp2R9AqjgCkXumofAT3kh3vV5UBGKN8pI9mwHexQQ7Htdz57MUfZb+Nk1l+teVfTPKE9SK/CIz/7Zt4Rhomx3ZIpsaMGJjqOilsewuXA/AxScKiSfJXQuc2ek6K98LAfBgblw5d+bkejf85hdV4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH0PR11MB8191.namprd11.prod.outlook.com (2603:10b6:610:181::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Thu, 14 Aug
 2025 07:38:20 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.9031.014; Thu, 14 Aug 2025
 07:38:20 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/audio: drop irq enabled check from LPE audio
 setup
Thread-Topic: [PATCH] drm/i915/audio: drop irq enabled check from LPE audio
 setup
Thread-Index: AQHcAt/XsRWSGSUF10yTc0vskk1yLLRh1w0A
Date: Thu, 14 Aug 2025 07:38:20 +0000
Message-ID: <c57df0ed79c0bf22e92a69f5c0a302ad64b1447e.camel@intel.com>
References: <20250801122832.249985-1-jani.nikula@intel.com>
In-Reply-To: <20250801122832.249985-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH0PR11MB8191:EE_
x-ms-office365-filtering-correlation-id: 8aa208a7-fce4-45e9-48cc-08dddb058aaf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?a0JrSWxpTU92citjV0lmdE5KODc1QURFRzM1MFoxNzF3QmhWZ1BCVzJuMEZR?=
 =?utf-8?B?dDdOK2I2ZWJpWFhZOTdBNHYrZHRrU3Z1QmFFbDZIeURIN3FPbmFteTkyYkI3?=
 =?utf-8?B?OVM0czR0WWkwcVBqdU5yNG0vT2o2bU1IWUh4ZkNOMGxKc2xyb1FPK1AzWENj?=
 =?utf-8?B?aTZmWGtHVlhCbXlHVEVlL0E1ZHhUd3k4eitnWXBjNzRHaG95K2FhTE41eW43?=
 =?utf-8?B?aFlaRUk2cXcxYlJWNUZHVlJKbmMybkZVM2U4WGFFSnJ6OVBjZVhzWHVMdi9x?=
 =?utf-8?B?cFU3cmFrR1FVWDlxL1d3ZnJuRldsUXpqTUpTSTdEUkhXeGZGZmdWREhxd21k?=
 =?utf-8?B?czlnMUlnSmhrVkRwajJ3LytiM1pwMlBwbDlyMm9Vc040WVdLQjFWVkF4eG5z?=
 =?utf-8?B?Z2QrSitqeEEyRis5cFpoMGlCakM5RmtyN3NGTHU3VDl0aEVDbU1SWENHUk43?=
 =?utf-8?B?MjkwNXJOeWVRZCtFK1lQTXNiY1JIVFlBMmdqN1psa0tWV25XdnNGckdQeTV1?=
 =?utf-8?B?S3BUNTNmOThrc2lmK3lXQVY2aVlvUEFUdndBeE1JbUJPOGtaRVFjZDdmbjBi?=
 =?utf-8?B?YjBtaEw0RFVLVUlhQmdMZVBHYWFhaUx3YUdKOXYwWG45Q1ZSZlFBYWVuNWYz?=
 =?utf-8?B?YUFZL3dYajRBTVZCN1FQNlZtaTJLbzd2VkJvVTNPUVJHOXNldFQraWNkYlRK?=
 =?utf-8?B?dklGMm4zRHhpTUdCV00rS1hVbGt3YlAxejlSblJldUY1SmhpZkxKUWUwaCtO?=
 =?utf-8?B?eGh6QmUwM0xocEthU2l4ZFF1WVZLK2VZdHJsNm1ua0d2T3ptNHB1YitTVXFG?=
 =?utf-8?B?VUtqMWJvelFORzZDK2c3bkM1NzJKNWNXbzRGQVdaK1hFb0JWLzl1cERhTWtS?=
 =?utf-8?B?ZUdMT3NmUFJvME91VTEyTzVPUnMyRUVYZUZsSGkxdkJ4YmRKNUo0L0xwSkFl?=
 =?utf-8?B?RkRIOUNxR1BzQ1RyY2lsajVQSDVaazNMektmcWliTERuMlNETDRsSGpVdzFu?=
 =?utf-8?B?bkJydCtmT2Nrekt2Y28wOWFDZGxUOUltck5ZejJtcjI0THlHR1pCdWI2cDV5?=
 =?utf-8?B?K0twUjJWOTBNMTZvRDFIeTFIOTZZRVVubUtkKyt6NVVnY3pUY1Npb2d6NDZy?=
 =?utf-8?B?U25xaUJPV0JnMWpVUkFUZWNWZHNjTmVMbW1BN0plbjg5dmpGMTV1NHhtR3hC?=
 =?utf-8?B?Vkx2QlhzZ3BnUUZiUXNlT2N2T3I4akV4NmptZmpDMzloQzl0VmQ1bjNSeXdM?=
 =?utf-8?B?Q2tRRDFROFhBOHN0TFF5TkdnUVYzQmJzcmE4d0tNM1VyVEUyUTRXaGJJUFVi?=
 =?utf-8?B?dHg4bmNGdnBOSmptd0MrWmxBeFBNSG1WbVkrd2pnQktyMDBhWHMzWlROY08y?=
 =?utf-8?B?N0NGd050SVpDSDh3UkRoaGVxZlNXaXU3SHRiNjdqbEJUVENrQ0h1NlJvL0tl?=
 =?utf-8?B?clhSSTAyOFZ3bWV1QmN5QjBCQmViTjFRREwwMzdGYXp1R1pzWWNXaXorRXo2?=
 =?utf-8?B?U2dPOTFoSXJFRVA0VWZhTWUwQk80RUM2Rm5tZ0o1L3Y2MWF5Y2ZTVnZieFdp?=
 =?utf-8?B?bnJ0RzJNSWFsL0JUc1NwN2w3ZzU5Z1NPQWJSZEJKaW8vMEFNRlIvTWlLdkdM?=
 =?utf-8?B?d0gwdVQvd1VmT04rOUdCUkRXTHFvSSthY21DUDR1Q1prUVZkUnpFcXZlamR4?=
 =?utf-8?B?MjRqdEllQXBSNFRXcGdvTjNFeFV5bGVRZzhIeGlwZnkxOE5xL0cveWdzUnpS?=
 =?utf-8?B?cWx5dGNOU3FEdmZvY0NQSjl4RXpKVkpYbXJrWlNoOTlwS1JJMXBBUDhqZElZ?=
 =?utf-8?B?b2hKZy9jK01aWFhxcWhyS2tWTmdyN2k3QWJTTmZuZE9lY3BnK2VzVUJlQzBW?=
 =?utf-8?B?RG1tdSsvbmZMQmdiUTAvdTBCMS9iMnBmNktaZGE3OVhXVHhmNkpPd09KVm5o?=
 =?utf-8?B?MyszeFluR2NyVlNaeGc5ZzRKL0JKMnUzY3hRMm45WUg5R1FGcGtVZitKbDB1?=
 =?utf-8?Q?T/S20APWL/z6giGilmJfaJqDpzCRzY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXRKTG1PMUcxbDlTMGI2SVllTHV6RzVWaG9kc2hZS25DbzhiRUtxcEVMeEJ1?=
 =?utf-8?B?S3BWYjlhcTJRMjVDRjdnS1F4eFJxZmFlMTdpTytYMmYwZmVSQUFhcjRNSHc4?=
 =?utf-8?B?MTVZL2RiQXAyOStPWDY0ZXphbU42Ulh1enF1ZWlubWJrY1hjK21VYUZ6WG91?=
 =?utf-8?B?Z0VPY0ViZzlnQ3prcnptaTFJRGVYVFRwNEpUMVY1cmdPNXU3M0lmMXppdndS?=
 =?utf-8?B?WVVqQlBwRG1QYVBhYTVNOVRaK1NGcGY0cGRLK242V0FnRlEyMWlqUWY2OTRr?=
 =?utf-8?B?WHNFZkwwdThDOHN3ZjdRNTd2SFUrYUxMZDkwbGRUUHk4TjZtblNWTUR1a0xL?=
 =?utf-8?B?T0Y2N3ZReTJjV1o1S3JMTXZhMkZuUlo5Q3lqb25YQVd4UnFLWUFGWTZoNVNE?=
 =?utf-8?B?Z21sV3R4bFFuQ2J6UzljTGpLQlBMbE9YdE0yR3c0NWJ2Vk1Pd0dEbncveDVP?=
 =?utf-8?B?ZmtSZkYyWmRLaXl3blc4SGxXNmR6Wmh3eFNZcGRhcFJ3czRZWTBsMjRXRU1q?=
 =?utf-8?B?eHFvQ25SMmZRcTM4RG5iZG1xdDdKRmdLUlhJN3VoTkM5RDZYc3lqZVVuekVp?=
 =?utf-8?B?R0ZyODZDZU82WDhrRkhMR1RmWlBidTlRZ3kvNVEyYkEwSERkU3ZleFNsR3Vh?=
 =?utf-8?B?dlozdHJEVWxNS2lvc2R1K2pmYW9wM0Z0Y2xMU2kyYUlLMzVrSmg3NHlEZW12?=
 =?utf-8?B?MHkzRCtSWXVXNnhHcjdkdVlUZnZrQzJzUWxYTDZrMTFoc3kyTTZOaTArbURH?=
 =?utf-8?B?cjN2NHNEUTV4eUxBYmFlUmQvam55T05Fa2VkTjJDSytZNmM0U1k0RlVzenUz?=
 =?utf-8?B?MkN3Y241TzF1dENrM3RlOS9yaUt4Z1gwL0J2OWpGVGxMV1lldlZCMmF0UnU3?=
 =?utf-8?B?aDJHMlFqK25GVE8vejhYYXY1NVZiU2pDQWx4bTdMOGtLUm1JT2diQ3hFNDU1?=
 =?utf-8?B?d3lRbHNkMTg4SEttZTRGaTBrYkFHNHI4alRUMFZxYU82Wm1yU3pUVnRFNlNz?=
 =?utf-8?B?elFKa3NqNTlKcWZHVXE0WEUrYklJK2Nsdyt0R3JMMnJ4WllLQVhVSjc1TFpT?=
 =?utf-8?B?WjNOci8xT2hiWTlmcTYwcWx5MFFISXk1MFJOdzB6a0UrZWFTOGU4YnFsUDVL?=
 =?utf-8?B?UmU1UmVDQ0dvZ0NHOFJHcnI2eWZSMmNOdjlGMDdwOVlJUXRUMmZOZHcvSXF0?=
 =?utf-8?B?Tmp1aW9wWEJ0VnpDYnR6RHBVaWFOSkFNaXVxODl5NU1jR3dlY1ZWUUZaUzlw?=
 =?utf-8?B?Z3ppRmJNZTVhbGRwakpWMmM5b1NETDhEQnlCZExtNWNka0UvbDVKSU5jVjR5?=
 =?utf-8?B?MGFLRzhRWnJsRElLRTRGdmpnUCtRSWZ5bklyMFhhQkpubWRhaXN3UDlyWjBD?=
 =?utf-8?B?UDRjTndvMGVVVVFyQlNMUzhyZC81VHIvTEpxR1pxYTMxam90dHBJR1B1THBY?=
 =?utf-8?B?K083Ym0zQjA3c3ZzenE4Rm1TQmxOa1lzdWlaMkgwOUxUUzdMN2ZGSk55V0U1?=
 =?utf-8?B?cnVjTi8yL2VGaWNZN09mWldtS1JoNmNFQW00eUNDRkE5MTV0cU1JNHFRRUN4?=
 =?utf-8?B?VjNNRDFDYUNORExJQTd1WDRUaEl1R1h5NDlnMkhOcHhXS2hVRmJwWUVVanRj?=
 =?utf-8?B?Unh5bkhCU01rN2pWbnJVZEoxZEN2cDBzZGRReU5LdXpsdFV0ZjV4VjEwd1ds?=
 =?utf-8?B?WjZiMk42ODc0NHlKVk11NEh6MG9USnpMdVBsY0ZhQVZVa09mSDloT1dlNkpn?=
 =?utf-8?B?WHh3bTgrWnJtNjk0TTB2amcxTUFobmsxb0w5OStkSVBJYXI2WEYxQkxyNnJi?=
 =?utf-8?B?V1BQaUZjZHk4ZDVhYmo5UGhFU1Z1UnloUitBTlFTR3VrczRzUW13djMveXo1?=
 =?utf-8?B?WFpBWU0yRXhFbmFkTWFvMkJ4ZFJlbzNLOHdQWXJYSFQrUEVINUVDOWJDNmRW?=
 =?utf-8?B?cWtsTUpMWEVpRkN1R1pmejJNY3RoRStZNDNZVmlyR1JmOUJMRk1vUEFEOUUz?=
 =?utf-8?B?RWl5LzdYcE9NNGFyU0NCdFpZdEw1MzZVcWxKZDJoU3BNaEhzdTlmbzFHOStJ?=
 =?utf-8?B?Z3BkSzZYSEZSNFpocGJPSk5paEYvRnVmankyMWFhNU1acDFsN2RveVZST0dH?=
 =?utf-8?B?ODk0cWwyMHI3OEl5L3pvSUtLamZQMk55bGM1Zjc4SXRlYzE0S2Z2NjRmTTJK?=
 =?utf-8?Q?11Qmju9ssuEmgEX3Tsb0I3E=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <03FD46F7DB7AB746A97DA24B3668EADA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aa208a7-fce4-45e9-48cc-08dddb058aaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2025 07:38:20.4261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NlI3/Aq/UYj+UiDUZl/+ZUPdyH9YbKznzTrRzeQfhNf92Zcn17VmwfdhAyj/AnAwEqULWfQh768yJixlwMHhL0eUdBlRbw4+C9fK8oS2mok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8191
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

T24gRnJpLCAyMDI1LTA4LTAxIGF0IDE1OjI4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VGhlcmUgc2hvdWxkbid0IGJlIGFueXRoaW5nIHJlcXVpcmluZyBpcnFzIHRvIGJlIGVuYWJsZWQg
YXQgdGhlIHBvaW50IG9mDQo+IExQRSBhdWRpbyBzZXR1cC4gUmVnYXJkbGVzcywgd2UndmUgbmV2
ZXIgaGl0IHRoZSB3YXJuaW5nLCBhcyBpcnFzIGFyZQ0KPiBhbHdheXMgZW5hYmxlZCBhdCB0aGUg
dGltZSBMUEUgYXVkaW8gaXMgaW5pdGlhbGl6ZWQuIERyb3AgdGhlDQo+IHN1cGVyZmx1b3VzIHdh
cm5pbmcsIGFuZCB0aGUgZGVwZW5kZW5jeSBvbiBpOTE1X2Rydi5oLg0KPiANCj4gRml4IHN0eWxl
IGEgYml0IHdoaWxlIGF0IGl0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9scGVfYXVkaW8uYyB8IDExICsrKystLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2VkLWJ5OiBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9scGVfYXVkaW8u
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHBlX2F1ZGlvLmMNCj4g
aW5kZXggNjY2MTQ4YTE0NTIyLi40MjI4NGU5OTI4ZjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHBlX2F1ZGlvLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9scGVfYXVkaW8uYw0KPiBAQCAtNjgsOSArNjgsOSBA
QA0KPiDCoCNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4NCj4gwqAjaW5jbHVkZSA8
bGludXgvcG1fcnVudGltZS5oPg0KPiDCoA0KPiArI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4N
Cj4gwqAjaW5jbHVkZSA8ZHJtL2ludGVsL2ludGVsX2xwZV9hdWRpby5oPg0KPiDCoA0KPiAtI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiDQo+IMKgI2luY2x1ZGUgImk5MTVfaXJxLmgiDQo+IMKgI2luY2x1
ZGUgImludGVsX2F1ZGlvX3JlZ3MuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gQEAg
LTE3MCwxNCArMTcwLDExIEBAIHN0YXRpYyBzdHJ1Y3QgaXJxX2NoaXAgbHBlX2F1ZGlvX2lycWNo
aXAgPSB7DQo+IMKgDQo+IMKgc3RhdGljIGludCBscGVfYXVkaW9faXJxX2luaXQoc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKgew0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlzcGxheS0+ZHJtKTsNCj4gwqAJaW50IGlycSA9IGRpc3Bs
YXktPmF1ZGlvLmxwZS5pcnE7DQo+IMKgDQo+IC0JZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCAh
aW50ZWxfaXJxc19lbmFibGVkKGRldl9wcml2KSk7DQo+IC0JaXJxX3NldF9jaGlwX2FuZF9oYW5k
bGVyX25hbWUoaXJxLA0KPiAtCQkJCSZscGVfYXVkaW9faXJxY2hpcCwNCj4gLQkJCQloYW5kbGVf
c2ltcGxlX2lycSwNCj4gLQkJCQkiaGRtaV9scGVfYXVkaW9faXJxX2hhbmRsZXIiKTsNCj4gKwlp
cnFfc2V0X2NoaXBfYW5kX2hhbmRsZXJfbmFtZShpcnEsICZscGVfYXVkaW9faXJxY2hpcCwNCj4g
KwkJCQnCoMKgwqDCoMKgIGhhbmRsZV9zaW1wbGVfaXJxLA0KPiArCQkJCcKgwqDCoMKgwqAgImhk
bWlfbHBlX2F1ZGlvX2lycV9oYW5kbGVyIik7DQo+IMKgDQo+IMKgCXJldHVybiAwOw0KPiDCoH0N
Cg0K
