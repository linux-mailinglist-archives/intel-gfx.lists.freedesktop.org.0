Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80023A30387
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 07:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1105210E072;
	Tue, 11 Feb 2025 06:24:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lf6K9vuU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A030F10E072;
 Tue, 11 Feb 2025 06:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739255069; x=1770791069;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QayqlzDx9rUuRnj3QK/Q9gepKdS/eGCQQ95EsDYA010=;
 b=lf6K9vuUdBCZHm9FWnw7X9cWcCpvtyyLYJiulAviJA5hPqY9SRfxZMoo
 +IziHo8hh2u0r+afkG1M8oo5i09oEcZQkvW+hxENIDaFam//vjljsT7Ox
 IdpP1nv5KlnOWzO8nPC8i+aOUk91wEhJwWrmifyGA9+2bISsHeLrc/d5W
 75gjOS1kk/sAJ00nDlGDnSWBBF1tCgVJuxGMgzjENIZPSF84DA9Yr+yLH
 ogI+8RjEqjz8UETlR5IKdCcOa2wiJEvPsKjrZSEY8+W9HyhRa+V9sn5Ae
 afdElvd+J1gqc5bFPiweiR0zSRY8hSLOp1biA2gMjiZ2URnMk5w8kTe7S g==;
X-CSE-ConnectionGUID: zy1ywV55QvCSxdKysMr20g==
X-CSE-MsgGUID: ILl+1F6pSTybc5Aq6D65ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39777188"
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="39777188"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 22:24:28 -0800
X-CSE-ConnectionGUID: JQNJteSPTY6OQQ4WXGmVEA==
X-CSE-MsgGUID: YCIzifTQTfebLkTrwFkItA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="112387224"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 22:24:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 22:24:27 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 22:24:27 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 22:24:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BgHl7FOYGmRrBhmbUE2H0Auwq3Wtnxux7wGUi648VmlkwftqpDZaP74+2/WddWI7R9ng84lSE01/WswBBlpMx/nJcmzWH1l/Md0jnEWb+UCtfMQo/9AId+gmY9pZqEZGnJa4KlAiYH1QhJ3kWHatFTdykO5ymFc1cXKSo5XbV/Jwb2cs+G9gwkQ5miHNv3egCuOCRCAt04GfoaH/mNKKHyxL0TxDWBs4fMFnzolT2GrmZRkrGMH7kmFHZWvxQLgrYb/YUO9w1NH4YPEBv4+wGO2LlmQOqF24x5OqYabvYBznGwvLjtRgRDJJOniokfDyFPSCEsQvO+WkhWHW9WpTDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QayqlzDx9rUuRnj3QK/Q9gepKdS/eGCQQ95EsDYA010=;
 b=muUQ63ZG3iBGYsOaoKfEb8ZqsDprDaKWV0EkfYm8WRhLTkjjVPn8BcOkxlqlSxDB9lHqiaFsmj0O8/zO0DSb6xFLWSIXDrCPWnehKlVHbl7UfBkZmL3bjed/wGTpr9gVJ+gLgUmnYvaCNXTe11DS0Gnp2W4Gdz2RUekMHV+ok6FWq20SLAR9wXhtxEAiIs1bjVOR2WgfANdscCX3zDdd0Mnwf+wqyuWkmEZXXYD9uIIUpvqfypZVOBUDpu3rh4gIJF+KBpemEiIJcdzd/osufBqoYXpBse3jxkCQoX4iwU7wCCJVdiUacY+ja1jeZWZ6D8Sc1rdY/wsgfTpJYOhfsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB7418.namprd11.prod.outlook.com (2603:10b6:806:344::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8422.18; Tue, 11 Feb 2025 06:24:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 06:24:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v6 07/12] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL
 handling when DSB is in use
Thread-Topic: [PATCH v6 07/12] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL
 handling when DSB is in use
Thread-Index: AQHbcKZXklxZjLzm10WtuBOBNOxMcrNAz8oAgADqF4A=
Date: Tue, 11 Feb 2025 06:24:24 +0000
Message-ID: <0808c3a03225ff734ea3fade879a1b5a39bf67e6.camel@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
 <20250127102846.1237560-8-jouni.hogander@intel.com>
 <Z6oouL3AYZ-JQ7xd@intel.com>
In-Reply-To: <Z6oouL3AYZ-JQ7xd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB7418:EE_
x-ms-office365-filtering-correlation-id: 97df5958-8c2e-4335-fc18-08dd4a64bacc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UlVBeUJQOGMvUkpvYkxNQS9Bb0t0djgwbTlRWTgxaVVlaW91dTc0YUxJeU1R?=
 =?utf-8?B?Wk1jaEF2RXQzMWkwc2RUcWtqVm8rMnBPR3BueTJhdkZINVFiNEE4VzdRRk5a?=
 =?utf-8?B?ZnpBTXV5YmlVeUNFTml4TUl4aE9ndUxUcEZFb2MvYjdmQVdRMndSNzZpYXJE?=
 =?utf-8?B?bzhvM3dBSkJKbEFPc2xoSWw1ejIyZFRLZVFNTnB2MUo2MWZjbUM2bUpqb1Fo?=
 =?utf-8?B?b2N5RFFnekl6bjlwSk1Nclc3cWZlVWNod1hNKzhlY0h6S2tFZ0t0b0JLWk1M?=
 =?utf-8?B?N2pGUElZQml5TTZBMjlqaGFJZ09oWTlrNWMzV2FRM1N2cmlKNWt5cFNKVmNP?=
 =?utf-8?B?RWExZi9DUE5HYWhQdjMyQU8zWGlySFBuQ3BWQXQ4WjJOMWNLNVU5NDVpN0Nz?=
 =?utf-8?B?OGpVVmJOa0FIR2FjdFJ5MGxudFo2U0FsVFYyVVc1c1JrVWYwdnBGbHkzcEVW?=
 =?utf-8?B?K0FDVlMxdFlSa2diSFk3ZWJlOExURFh5NXhZTFJCNVJneUJzc1orUWJSQzZm?=
 =?utf-8?B?Vm1PLzlURVVrQ2ZTaStJeTBXZEFrWllhWWhybnRFa2lyaTZBVGVUdWdRUGtQ?=
 =?utf-8?B?RXRDdHlXY0k1MGhDeHRobG5lZk5NMzY0c1c5SzNZbzVJV25wcmZoZERxVnhn?=
 =?utf-8?B?S0dBcUFEKy9vTWdQYlBpaUFsK1VoZXU0QytGcjlYaFJqNCt5dXk4REMvUG5Q?=
 =?utf-8?B?cDdMQnB3czd3ZmR6MlZvcnVZY3BibHNjWjZ5Z0JkdkFCR3Jydi9RUHFSOHp4?=
 =?utf-8?B?TmN6T0h6YzdPWnVJVXVQdkdKYTI1cUlBdHVGdXlUZisrOE1hcysxODNMdXl6?=
 =?utf-8?B?SGtNUW1aTnhuajNaZHMzdUE3WnhzWU9BMlZjTy9sNDNrV0tQU3gyTitmMTdV?=
 =?utf-8?B?ZGcyTFlkakwzU0svQTdPdWl0WGlwMWpiVEFhWnpJWW9oRWMzbDlGVjRpYzRU?=
 =?utf-8?B?RmRYZWNNbUZVcW85cXU1a1djRXhwZUhWUGVRRzNONTIwa1Fhb21nMTJiL3ZB?=
 =?utf-8?B?TTlSb2xteHoyMVVOTFYyWS9rcHVOSXkyNUJBdkNYYlhMMWgvMHlWdjBNaXBt?=
 =?utf-8?B?K2dvakZNU1dsdU1mV05WeHhMTytVb0JBQTUwa1ZQemtYK3BJOVNIVUdBSDNS?=
 =?utf-8?B?WE1walFDTEJNS2pXNnNxWVhydlZ3T0dRUGN0d1ZTZjFaclRFSFRxTXdVYnN4?=
 =?utf-8?B?V1d6T1dXaERnT0lxR3h0anpVQVRKbVpZV2VXL2h0Tlk4TXp2OHBKbXhMMzB6?=
 =?utf-8?B?RWVVb1FhY1Z4amRKWCtNRmRDckFaRlBrOWhURXROVTNCWVc3M0lERDd5S3U1?=
 =?utf-8?B?RkVYeWVGZlZLamd4d0luZi9FMk1DZktWR2RUMWFhQlovVklackNpYURyODc5?=
 =?utf-8?B?WGFYbDROMFBHM2hnRjdndExuVS96VW1LTlg1dHB1cmgyYmJXL0I4RjRYVE1l?=
 =?utf-8?B?VEZNRGE1enNaeVlRTVZmM3VFSllPdXpJRnIyaWlsMW1xdEtHbDZBeTBNajgy?=
 =?utf-8?B?R1VJSnlueVk2Qy9iVzFydjYvSUhUSUk2VlJGVGZvU1VPVzFodFZXcy83eUVI?=
 =?utf-8?B?NTZCWlhnejhkZ0R4UjMzY1ZIWG05emJJL3U3TUw2eGNnREdZcCtwN1pqdU45?=
 =?utf-8?B?eWhRZFVZR0RlOG9pc2xBT29Ta0R2YWQ1bGE4QXYvcVdSeDFNRlhuVlp6TGhn?=
 =?utf-8?B?MGJuWWZEQStIbm15Yi9RQ1FLT2Z1Y3ZsNlp1VzNXN2JNTlVWTWlRMnFOZW8v?=
 =?utf-8?B?YnRzM3RMeXl2ZHFYZGtZNmZFTlhrRXhtZkoxdkJnbG1Ibm90ZWFFWlMweVlW?=
 =?utf-8?B?UmZYVm1lK0tMV0FkN0NVTTlPOHd4SU9Fem5PZURhTVl2V29CWVBwd1ZsV0k2?=
 =?utf-8?B?MnJPbmRIMG5CYk15QUtrRDdpOTBvWk1GMlhVRVE5Z0ZlR0RnT2xRT0VVWmJW?=
 =?utf-8?Q?BwgykWdwGtuYEi+f4K27yskiKj8Kg4yg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUluZjNJc3Nibm1IWGQ0T2pKUlplMEZIQngwdURFdVpYODgxZHVNSFAwL1F1?=
 =?utf-8?B?bko2RkpQc2lxT0pOZ1FwZW5PQjlZNXRKVS83SGgwWFYwTGFJUVF5c3llYnZu?=
 =?utf-8?B?UUhTekw2elpBZU1YenhPTm9RdVkySUF0emtmeXp4WW1DcE0xZllnTE1QNE9D?=
 =?utf-8?B?ZjVUNGczRnFydEYzR2hRa004WVExS0VNa29aYStkM01nMjE5QXZBamQ3Y0pY?=
 =?utf-8?B?VEY0QUNpd3BUcGtxRkFpdy9yMHcwcHNJOEJ4eHZQZGtld3dHbXppRStnV1Vj?=
 =?utf-8?B?U25zTXVyZ0pJWncvZG14QzcvZE0wRnZyOEdBYzdQUHA0eVVpbzhVcFZmUTVz?=
 =?utf-8?B?SnM2bVc2Wit1a2cxUng5ZEZlYU55SGlSOVZkOW5La3FnYXJPREhna3pabmNr?=
 =?utf-8?B?TTJNanZ0ODcybm5jVlQwWDFOQjhCUGZrWStLVVBhdWlvcWJycW9TbStNNDZD?=
 =?utf-8?B?TkxidG9oUkRrVHl1ZlZzbmk3UDNGeXBwT3p2RzFBbXZ0ellTM0EzVGdORDls?=
 =?utf-8?B?ZXQ4WW8xMnBOQ1EvZGJrVnJiRTZaTkpSSURMRFo1aFRzZU1QUFRQamsvTnpQ?=
 =?utf-8?B?ZTRoN2FTb1lvaHdmaGxyclkwQWJCbitVVFZJMUNrajlwMVJWMm9JOXZ0VjRP?=
 =?utf-8?B?MVlBQnduUTRYcVRHTnlxcmNNYVlOVURFNHl0NWNyM0NWbzQyaXoyM2pPdXNW?=
 =?utf-8?B?VFdXYm5iQTZqTHVUKytWeGYvQlFrVGpEMjV2akF1QllXclZKa2JtWnJ3OGNw?=
 =?utf-8?B?RGVZajlNdVd0OWZpa0hMVEJQb2NXOWllaE9PK0NqOERhQUZFQzdFZlRuMnJa?=
 =?utf-8?B?amtDV1U3bHQ2RjBiTFJ4Q2Rsc3pERXZYdG0zR1JoclpFVi93eENpZVM5ZktX?=
 =?utf-8?B?UjZ1ZVdoazA1elhITUlKUlpCcDhXdXhSNE9MbmNpTi9iaC9mRnA1VW5jNzlu?=
 =?utf-8?B?Wk9OM2gyUHVMLzQ3VktBbThMbWRUaDVTVWNQY1BLYVQzamc1d0lCY0x2Q1Zo?=
 =?utf-8?B?cG9XNURFcEhBK2hCWHFqMEpPSFRhYmZySHdEeStzbmZxQ1hvbXBKQkhjaHNa?=
 =?utf-8?B?UkUvbXBsMjFLaGRjckQxU0YwRDMvQ3pSN004VU9nMEx5MTkxRmFWVlF4OFov?=
 =?utf-8?B?Q2ZXRnUwdFYyRFdZYUZMTytHUk1obE5ZSHpyOXF6VkF5ZTV2NFFwNU9paGtH?=
 =?utf-8?B?QVN0VWsxY3l4Zm5QV1M2YlQwekVYWnB3Q2NnTHo3WnJTcTFSSXQ1dUpXMHZx?=
 =?utf-8?B?T2VXNjIvMCtDbUd0TFdidXh1Z0xzeU5Yd1hzcFlQRVFPVk9abk05WGROdzZk?=
 =?utf-8?B?M1N6c1ByMzZ5ZDJpakZyQk9EZjRsZ2oyRndQWmc2Q2VPV1Y1QVFML1lEQXdp?=
 =?utf-8?B?WC93U29XZWtDNktDa3dXdzYrRGdnZEVESVorMHplblBmREp6RDkxQU84TWx2?=
 =?utf-8?B?M210OVdaSVZhRjdHU2xDbTA4NXFxWXpMam1XbVNGcHE5ei9RN2piZ084cFk2?=
 =?utf-8?B?V2JLallXNnBEQzZ0ek9aMVZudlgvYUhSK0d1ay9PUU9kdmJYT2JvTVZvSksz?=
 =?utf-8?B?SlZ1M2ZsZlNoZ2NiRXFMRTBqVldiYnlSK0lCNWpaMUU2VWFZTnlMT3ZSd0ho?=
 =?utf-8?B?OC8rWDdqZmlaOGp5QWxYeWRBN0tJZDlWUWtWeGNydTNVMnlyVlpDQXlGb0ox?=
 =?utf-8?B?ck1yeFE3MmtVSVJOdXZtdUpIZmFyVTRwQlFrR1JQcC9UOGo3blV0LzF3L09U?=
 =?utf-8?B?eFc3eFRwZ2taZjVnbnpHeUlTSmE3ZVJOZUxaRmxVVTQ0WlRuUENGbFh1MjNv?=
 =?utf-8?B?c1BFWjJIK3ZVSVpCQ1hocnBXdGlWaVhRRHprUWZZaGVzRU1Tek9pdGdxTno3?=
 =?utf-8?B?V0ZoTHA3eVhwVU5ZLzUrbDY1dEpQSmx1NmJOYjVnaHBsb0ZMUmI4dGNkSjIy?=
 =?utf-8?B?U0I0UitZbkRqcmpQT2VWbHhvTlZaZ2VEV1c2ZHpWcGpCVmhXL3MyY2JSVSs2?=
 =?utf-8?B?ZDdVNkxzZGlFOTg5T2l5TTJOQ25kSnpocVRYbThXOTcvcFkrdk9jRy9iWmdo?=
 =?utf-8?B?WHRodDFQclJsZkhnNCtmWGN5K0FTOVpvMTJQT2RxVytaVGZmcEpXZUlxeTZZ?=
 =?utf-8?B?ODVJMENTWFJHejVxdXo3T1BQbmhYcW5SazNQeGt0MFB6OU5hV0w3eW9xK0hy?=
 =?utf-8?B?ZU9SNHowQ0J0eUVtSzFBcUU1OVNzMk5reUtYZE9vR21JazdkSTdTajZuTGdZ?=
 =?utf-8?B?SUdYK0JIczByVXZKWjhoVUxkZlhnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <420426CD57F6324BA469F6923ECCA374@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97df5958-8c2e-4335-fc18-08dd4a64bacc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 06:24:24.7201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fqAbKM+xBYqRznUJ+IsMCDxkNHMMn8H7ztS6sJsTIgp13rb5NJR5ntQ4aGKk/sNZO8Ks04rO9hWC24NM3BAeXVS/oj7hs9FEhNTnFLu1EMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7418
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

T24gTW9uLCAyMDI1LTAyLTEwIGF0IDE4OjI2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgSmFuIDI3LCAyMDI1IGF0IDEyOjI4OjQxUE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBEbyBuZWVkZWQgY2hhbmdlcyB0byBoYW5kbGUgUFNSMl9NQU5fVFJL
X0NUTCBjb3JyZWN0bHkgd2hlbiBEU0IgaXMNCj4gPiBpbiB1c2U6DQo+ID4gDQo+ID4gMS4gV3Jp
dGUgUFNSMl9NQU5fVFJLX0NUTCBpbiBjb21taXRfcGlwZV9wcmVfcGxhbmVzIG9ubHkgd2hlbiBu
b3QNCj4gPiB1c2luZw0KPiA+IMKgwqAgRFNCLg0KPiA+IDIuIEFkZCBQU1IyX01BTl9UUktfQ1RM
IHdyaXRpbmcgaW50byBEU0IgY29tbWl0IGluDQo+ID4gwqDCoCBpbnRlbF9hdG9taWNfZHNiX2Zp
bmlzaC4NCj4gPiANCj4gPiBUYWtpbmcgUFNSIGxvY2sgb3ZlciBEU0IgY29tbWl0IGlzIG5vdCBu
ZWVkZWQgYmVjYXVzZQ0KPiA+IFBTUjJfTUFOX1RSS19DVEwgaXMNCj4gPiBub3cgd3JpdHRlbiBv
bmx5IGJ5IERTQi4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDUgKysrKy0NCj4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggYWVk
MzVmMjAzZmQ4ZC4uNWRiMmFmODZkMGM4YSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTcxNDMsNyArNzE0Myw4IEBA
IHN0YXRpYyB2b2lkIGNvbW1pdF9waXBlX3ByZV9wbGFuZXMoc3RydWN0DQo+ID4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJCWludGVsX3BpcGVfZmFzdHNldChvbGRfY3J0Y19z
dGF0ZSwNCj4gPiBuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gwqAJfQ0KPiA+IMKgDQo+ID4gLQlpbnRl
bF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoTlVMTCwNCj4gPiBuZXdfY3J0Y19zdGF0
ZSk7DQo+ID4gKwlpZiAoIW5ld19jcnRjX3N0YXRlLT51c2VfZHNiKQ0KPiA+ICsJCWludGVsX3Bz
cjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChOVUxMLA0KPiA+IG5ld19jcnRjX3N0YXRlKTsN
Cj4gDQo+IGNvbW1pdF9waXBlX3ByZV9wbGFuZXMoKSBpcyBub3QgY2FsbGVkIHdoZW4gdXNlX2Rz
Yj09dHJ1ZS4NCg0KQ291cGxlIG9mIGxpbmVzIGVhcmxpZXIgaW4gc2FtZSBmdW5jdGlvbiB0aGVy
ZSBpcyB0aGlzOg0KDQoJaWYgKCFtb2Rlc2V0ICYmICFuZXdfY3J0Y19zdGF0ZS0+dXNlX2RzYikg
ew0KDQpJIGZvbGxvd2VkIHRoYXQgaW4gaGVyZS4gRG8geW91IHN0aWxsIHRoaW5rIEkgc2hvdWxk
IHJlbW92ZSBjaGVja2luZw0KdXNlX2RzYiBmcm9tIG15IHBhdGNoPw0KDQpCUiwNCg0KSm91bmkg
SMO2Z2FuZGVyDQo+IA0KPiA+IMKgDQo+ID4gwqAJaW50ZWxfYXRvbWljX3VwZGF0ZV93YXRlcm1h
cmtzKHN0YXRlLCBjcnRjKTsNCj4gPiDCoH0NCj4gPiBAQCAtNzczMSw2ICs3NzMyLDggQEAgc3Rh
dGljIHZvaWQgaW50ZWxfYXRvbWljX2RzYl9maW5pc2goc3RydWN0DQo+ID4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJCQkJwqDCoMKgwqDCoMKgIG5ld19jcnRjX3N0YXRlKTsN
Cj4gPiDCoAkJYmR3X3NldF9waXBlX21pc2MobmV3X2NydGNfc3RhdGUtPmRzYl9jb21taXQsDQo+
ID4gwqAJCQkJwqAgbmV3X2NydGNfc3RhdGUpOw0KPiA+ICsJCWludGVsX3BzcjJfcHJvZ3JhbV90
cmFuc19tYW5fdHJrX2N0bChuZXdfY3J0Y19zdGF0DQo+ID4gZS0+ZHNiX2NvbW1pdCwNCj4gPiAr
CQkJCQkJwqDCoMKgwqANCj4gPiBuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gwqAJCWludGVsX2NydGNf
cGxhbmVzX3VwZGF0ZV9hcm0obmV3X2NydGNfc3RhdGUtDQo+ID4gPmRzYl9jb21taXQsDQo+ID4g
wqAJCQkJCcKgwqDCoMKgIHN0YXRlLCBjcnRjKTsNCj4gPiDCoA0KPiA+IC0tIA0KPiA+IDIuNDMu
MA0KPiANCg0K
