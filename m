Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF9BC9F289
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 14:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB02710E7E9;
	Wed,  3 Dec 2025 13:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dsKLoLvN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0FC10E7E5;
 Wed,  3 Dec 2025 13:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764769194; x=1796305194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sx+KmCbbgRA9KcaEUtEcTNr0w9OcBbQiuo3S3Z9DX8A=;
 b=dsKLoLvNP7s2RjVJKGzJv+4kedraQZhXdjqrgMNXPd3Bdbnq/ghJHVy9
 ppB3yaGVxRL+BWT0mLTogU+EhSMOS4+ZL8s2OqtmsdSyD10VU6e/VehHS
 l3EENj2m+DH0EYvaizyRTnpZHMhGgcgaRe83IGjGRentJla/Da1LFXSpU
 WUTqy0jfvuiqsfT77ErxUSLK6BF4ipMD2ktP3lVjkj/LYHykjzlz9FZCX
 FqY6y9DPyOMbNDRyNuGjTlXTcGhk1ALD45d+hpC0Bi1HrEhkMqRg4cJ3u
 n19hBLzyWue4UPA2syWMEcxqKybR0OW0Ac5ZaJP6pjowSTdGRuqHSiZtn g==;
X-CSE-ConnectionGUID: Nq/azkKQTX6M+t75GPhrCw==
X-CSE-MsgGUID: 6/qhW1Y5QpW+coUxv3emOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78225148"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="78225148"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:39:54 -0800
X-CSE-ConnectionGUID: gMlwN+75TH6bCy5KtukmJA==
X-CSE-MsgGUID: O3TnuUyDTj6nwD6l94jPkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="194489676"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:39:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 05:39:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 05:39:53 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 05:39:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBOa046D0viBLMD30JOM2JRtUDBKEU61i+83Fa3NGNoSoxs8rBcPl1xWXb14GYIwfPoV9nC4XZSEijStFqf42LeXf3zLUZJvZy3BnxdoqzX3Ov0Of77BLKasAE6j04J4NmBYwitGNIsf0q0DHTj1v3TV89gIFx3arJCRya1b93AItRyirSn67pcC/zx1aVIJATNArt/RSCDOAWLOkx09cUO3zDgr5qtPCujMZKYUns/HSygtxwtdT7MldlSHJftVbhm3smBmLPo963Ry6y9PsuFun5XOCsa/Qldad2Cc0XykRKu9Qt8iDiVx/4nSGCg7yMdGhP+hIHIR02ISWAIL5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sx+KmCbbgRA9KcaEUtEcTNr0w9OcBbQiuo3S3Z9DX8A=;
 b=xhGdRpyLwSLv5XDJzyeOiOFuphbBbg8MqtkfNMYr3dvaDBDccnlfCvdwOsQE6DXiYh3wWHWnbEzYXMFwQdxG3v2/xAtZM2haZB7l2a+qd2+dw9xLnAtjcvf7gE0mx7B5k3AMrdUQDFzvI/7GDe71Z6kVM6N9loBJrx9nV/XUPMGosbfOzirSy2gf5y0uxxC8tlYdFQFf/FCbTwITkZO+WeaVMOcRsgIeXBiefFCy/SsV5Er973HnrAZv+QHLwWS6HsD6lMVeZ9CYadvlsXXCKTvFSEYoW/6+9rV/l4Y/jZkuv/JZHenttshGqPG3pnaf02FaVPgrosN+6tYHdrgYIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5034.namprd11.prod.outlook.com (2603:10b6:806:f8::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.9; Wed, 3 Dec 2025 13:39:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9388.003; Wed, 3 Dec 2025
 13:39:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 3/3] drm/i915/fbc: Apply Wa_14025769978
Thread-Topic: [PATCH v4 3/3] drm/i915/fbc: Apply Wa_14025769978
Thread-Index: AQHcX5TE8IEJ3L+5SUGgW2QN5KTzPbUP9W2A
Date: Wed, 3 Dec 2025 13:39:51 +0000
Message-ID: <54663465ac1ae20920c6fd437550a6761c36befc.camel@intel.com>
References: <20251127115349.249120-1-vinod.govindapillai@intel.com>
 <20251127115349.249120-4-vinod.govindapillai@intel.com>
In-Reply-To: <20251127115349.249120-4-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5034:EE_
x-ms-office365-filtering-correlation-id: 425bd8fe-fe3e-4471-4e6c-08de32716f36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cE9IelFYQVp4VFdrSkQ0UUxlbG14T0FZWnV0djV0U1FqTjVBSVpOR2hzTlZj?=
 =?utf-8?B?bXd3L0pRUEtpVUsrZldWZ3hFL3hQek1FaDMrYTJpQzNYSFpIcFFsNUxRZjR0?=
 =?utf-8?B?OG1ITXE2eEJ2TTVrblk1VHlpNVJvU3N5dVVCQVR3S2tHMGU0V0xZSk52Vzc2?=
 =?utf-8?B?Zm1ieEFNQndkZ3RMUmJRSmpyS0NiQVdkQ0dnNzlBMTI3b1VzU3A1bkR3WU9O?=
 =?utf-8?B?VGJpU0tJMWhpNjJ5YVBRTDNhRnpsSTV0QVA3dnRuTHNFdW8reUl1SjNBeE82?=
 =?utf-8?B?QVR5T2xuVEF5WjlXZEtiYXJlL0Mrbk5DZXBYME1jZG9Gd2tJbC82TTZlTmQz?=
 =?utf-8?B?WDBZcWJ3Z1JyeG53OVJDQlJVYnQ0RG5pSHJDTGdTbkVGdXFWckcrclNBNkw0?=
 =?utf-8?B?emFETVc2LzdmaGRNVnljNXJoQVQrS042ZkNOcFMvTzF6T1NrUk1Ba2JTVzJj?=
 =?utf-8?B?TXR4M2pIR3Z0WlZCR0lwNVlVZHRJMEhRZnZucEtwYk1hSTQ2Yk50NWExaXh4?=
 =?utf-8?B?VG9DZk96aXU0ektkVi9ab20vM3hoMFM3RXJROFI2SldqbmdWM2pweVNUUzRr?=
 =?utf-8?B?OFMrb0JWWGZLVFhDNGxYRUVPL3R6ekRkdEMxQXBWQVRLWjV1RGhjVUpHY0ZI?=
 =?utf-8?B?NG1MV2g0N21GSU1LZW1oaE9NeEw0VXhNVlcrUW02dWQvbVNEZld1WWpXY0lw?=
 =?utf-8?B?K2dGRndpMWlndWd2MGdBaTVadDg3UHB2cUI1ZVRZZXVIVUo1MVJxb2Qvaitr?=
 =?utf-8?B?eFlzWGJJb2N0T2dUR1VRTGhRY2p4K29hZHdBT3ZENzRpTWFLV0pKTFArcWxS?=
 =?utf-8?B?Mm11UUcyWTBDeE1VUHFEQ1k1Q1pnMy9CcFZrNDlVZWtRVlhEYW1WUlBFaHNG?=
 =?utf-8?B?K0hCd3MvQnIwWS9UaWRQMjJnUEZORlpxU0NzU0t6Z29EYmx2cGdjUHl1VzN1?=
 =?utf-8?B?dTFycHU1K2NaajZJcDJCM2pVWG5jeVlLUzljRWs2V2hDRWxMREtpL0QvZE1W?=
 =?utf-8?B?b3VMV0RMOGpZdEwydFZ4YzJnSnJLU09VbTV3NHo0cWJYSkgzSDFsTWhLbXg2?=
 =?utf-8?B?RlFqcmlqcUluV20zOG5NTGJKVGYrYndoU0dYejRvQXI2Ym5jcndISFRlVlNK?=
 =?utf-8?B?QWdPRGU5ckluTzBwdG9tTXJnaGdMcVk0SzY5eVlmSWhBRllGWG1TZHRKSFBT?=
 =?utf-8?B?bjRUcjhWQWUyRnFUYWhaQnpoeEIyT2U2ZW1xRGJRZVdoaDhyZm5YZ2g1dDFX?=
 =?utf-8?B?dkpwc3hZWVlOcmFndU9IWVROM2ZobWRUeldwZjFER09OaU0zcUZ4Z2dFT0cz?=
 =?utf-8?B?aTlOd0pYc3JzZzk3OVBrcDk3QWQvUGZZK1FEM0ducks4M0YxcmdJcC92UXZi?=
 =?utf-8?B?Q3paM1dvL2wvdzNjbVBRY3BKS3RjRUNqdlI1VVI0Rys3MGQrbkUyRzFFZnFI?=
 =?utf-8?B?bjRJNUcyQ0w0cWpMR2NOQmNZQTQyS04raG01RWNydUhNRXBYL2kyZTB0UXpT?=
 =?utf-8?B?YURRV29JM3B3TVoreUUxdERNa3k5anc2SUQ0ZlY1bTNmNlo3YjFZNng3ejNz?=
 =?utf-8?B?dEZlL1hQc0owVmsvc2pPUVE3UUQ4cXBoc2QvWnZqdXh2TVhTRiszN2gvWHpM?=
 =?utf-8?B?YkRpazY3VTV5ZzVpaXlPL2tiaFJHd0owWkQwTE5DbEEyS1FlYTg1WG9RZ0d5?=
 =?utf-8?B?S3ZMRUdHZk9Gdk1PUFJBOVMxUEg0RGg4TlFoek4wSXJqUU9JV2dWWGUxQXUy?=
 =?utf-8?B?M2hVVFdNZkV1U01LMkNoM0lGcVo3YTlMd0lGRnVZUU1pNFMyNXR2dlRGazJC?=
 =?utf-8?B?TkthK2dES3UxekpnWFZTV2RLOGY4OU83OG5Ca1EzNloyWFZETkxqVTZQai94?=
 =?utf-8?B?eXVocFYwbnd3WVdKL2hEcnltWWdaWFpCR2VFeGYrZFdRcGdDMTcyOWVvVnph?=
 =?utf-8?B?WkNwVm5EOXdxQXpURkdWQXNSeWlGZ1d0QVc5bm03NUR5NlBKZ0JERDQ4RG5N?=
 =?utf-8?B?ZGtWTUJsSjJaYWZnaEtkblhFMXRDY3lKRFppdXczR2xIS0F6U1MzQ0FFRGlU?=
 =?utf-8?Q?UCATQ8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFVQbXlKUUJxRGRFaS9kZXkyUlRJaVpFZVJGbHpJbGFjUWtKYmtoWFArekcv?=
 =?utf-8?B?T0VzK3Q0TDJXa2VuQVVDLzlYcWhoS0NDWm1VcHN4L2VtY3YxcGkrN2N0aTdJ?=
 =?utf-8?B?TnF3MTdiMStVRUxVSGJHQXM0ekk0SjRkQTNHYldseUxsUnViY0dGbm9qdlFJ?=
 =?utf-8?B?QlN2ZStWNUVpNVI1QXFrYnpPdDV5dVJYR1FYMTV5b1JzMUxqc2hjdmVkb1E3?=
 =?utf-8?B?MVNPWFVrakVGOUNXQld0YlovT2VaV2wzTS9temg5NXBtZ2JYRC9NUXp3eHp1?=
 =?utf-8?B?YUhTWm1uRSs3QkhMdmdFZytWdFpkRGtXZEVtaktnU1Q2ZmNUUzMrWHdGZVlQ?=
 =?utf-8?B?Z1BwQitibkF5SHhqT2RTaHMveXJvckxmSS93V0FDYk11aVc0Qk5ZVVorb3hD?=
 =?utf-8?B?K290RDVPVTgvdno3cDhneFNoVHlTMmpMTmhxYkZrQVpxOGlWSjR4TzliRmJ4?=
 =?utf-8?B?NzcvSFVSWGVLT1RyMzlpeXFYdDVmOWhyamVzemdVUE5YNE9qYnJRejg4eU5n?=
 =?utf-8?B?STB0VXQ0TVpUMkEvSlZ6cXpFdGZicGwrSHQ3QXdtUzBqcE90V2FjS1FYeWor?=
 =?utf-8?B?V2o3dWRualh2UEd5S1hHNThtc1FIV0UwS2NTdWRXb2I2TUE5K2xwajRIK3NX?=
 =?utf-8?B?SVp0QnZJMUVocVRCY1FWQzJIMnFUQXNXL2xsQTE3OEc5U3R3aGlUVE1VeGU3?=
 =?utf-8?B?YjlkUzQ0UzcycUFIT3UzNGZNdVduTURKTjNGZkIrblozSUQ2ak1KdWtndmdr?=
 =?utf-8?B?RjNXZWREWld5MGE0dExIczgwamdDeU1VOWJRbi9kZWxUN29qYXJqZWRiZ0tn?=
 =?utf-8?B?ekVCVUc4VUg5L1pGbzZyU0ppNkJJbE5hMUJSZmV0cmJsOHYyaTFIS3g4TCtr?=
 =?utf-8?B?OVZveWhabVRRYkp4dXdjSGZYSE1oSXEyN3Q5RG56K1V5SzVZTWFaYnJpR2k0?=
 =?utf-8?B?VkUwbytqU1k0c01WYUljYUJIYnZJMDFXVlZNcG1SZGh0TjkzdlVJS3pOem9j?=
 =?utf-8?B?YTZVUWhKbWcrb2FZTnhYeThMQzkvbWliVWJlOG5FdXcrTXFKV2FUQmRGbzQ2?=
 =?utf-8?B?Zmd3VFdheHRTR1ZCOFRRYjN6clFSNTlSRTRBRFBoWlkyN3VFcFJZQU52bmlM?=
 =?utf-8?B?UmlpdGYxbmQwVXlHMlB1bXdvZ1hYWVNDaE1uVFNlenZpUzdXOGNzQ1RVVVVy?=
 =?utf-8?B?VnY5UXQ3VFBmc09BdjBwZFBuWXlwcWtvdFFqSlNqTmcwbG1kU2Qrd0Y1WU5F?=
 =?utf-8?B?VnJDV3hWQ1NwS1ROVkF4dXM0YVVBM0R6bWF2cWF4bmwwSjJlbUF0enhBTFVV?=
 =?utf-8?B?SzRZTW5DcWR2WWsxNlQrdU5Jd2FzTndCNGZXaFppVXM1MkxnUXNobzAwVE9P?=
 =?utf-8?B?QkRLeUlhMkFGWm9FRFlrYjhEWW9sQzNMeEQwUWFUUTJObWJlQVpNUzJqQ2l3?=
 =?utf-8?B?WElTWXVpcnk1ekkxMm5vaFJjUEx1ZXFxYzlid3FBYnBmTFVFdFNHenkvei9h?=
 =?utf-8?B?SkhKeEpUNFR1YTlOZFJBK0xCZWUwbVRGbVJDRUg2bXBuR3lvOGgzODBCOGxq?=
 =?utf-8?B?d3Y5OXFEcUEvZzBWb2Q4VlB0OEdZL0VsaGVFV0gxTjAwQSswWnRBekNXcWpv?=
 =?utf-8?B?Y08waExJSHBuemJaK2RrWmRZcmJsZ2liV251citGam5mbmdnZjVtYnFzc1ZO?=
 =?utf-8?B?ODVyaWJYZzlQK0wvOHkzSE1PVkJia2hRbDZHNzVFUE1KVWxncFV5RC9FSm1u?=
 =?utf-8?B?SUZwS0JLS0FNNVBORVF6MUE1K0dEQUp6K0tGc281K2hhZGIzMUU3R1RMK1BF?=
 =?utf-8?B?YXAxUGZYdG0ybFRZMUpQQlMzRUszU3ZYRmRRa3FlMjl1YXdRZ1dBSGRyVFpt?=
 =?utf-8?B?Z254UUl2aGlON2tPc0NoY3NSckNubW1taXZoUmozNDU1M1VVdjl6dXRLZEM5?=
 =?utf-8?B?aXpsS1ZuaGFzRGdYeUU1d3pUYjY5S2g0R3RXaXgxWTVGd01TRVVXT3poN0tY?=
 =?utf-8?B?ZTMwNE5FTksrK3dwQkdOYXlnOWVsNytwZWhqclBnaXVjMTQwS3ByaDM2NWFJ?=
 =?utf-8?B?dUFiQk1nUjNXTFc3RGxzc05UYVN1ZlZZUzF6UVdiZWdNM2RHUUZBTDRGZXFN?=
 =?utf-8?B?bDZ0aUZQVm9VZVp0VVAzN05MZldEd3FQSHFuWENPNHAxZUVXYTVMb2hDOWpI?=
 =?utf-8?B?b1BwcGR4UDVnZElTWDFNRGR6U2dKeUtReGh1RXZGcTNJVCsxTStrUG51dDNY?=
 =?utf-8?B?emplbFcrSnROTDViZyt4dWgzMHB3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B4DA38A06841C44EBE2A684DDD45D513@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 425bd8fe-fe3e-4471-4e6c-08de32716f36
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2025 13:39:51.1111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HEAr4yNpurE64phEvdcGE+6Fan4t0/HvDKNhN6pY2HdTSbHcnyOfbA/WZT3i16wMgPMwgvSKfhiiAUzyeID9TR93f0xMapvBKZz9ttjNG94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5034
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDEzOjUzICswMjAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBEaXNhYmxlIGNhY2hlIHJlYWQgc2V0dGluZyBpbiB0aGUgY2FjaGVhYmlsaXR5IGNv
bmZpZ3VyYXRpb24NCj4gcmVnaXN0ZXIgYXMgcGVyIHRoZSB3YSByZWNvbW1lbmRhdGlvbg0KDQpS
ZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IA0KPiBCc3BlYzogNzk0ODIsIDc0NzIyLCA2ODg4MQ0KPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBH
b3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gLS0tDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMgfMKgIDIgKysN
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaCB8wqAg
MSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuY8KgwqDCoMKg
wqDCoMKgIHwgMTAgKysrKysrKystLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+IGluZGV4IGIyZTcxZmE2MWMwYS4uYTAwYWYz
OWY3NTM4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfd2EuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfd2EuYw0KPiBAQCAtNzIsNiArNzIsOCBAQCBib29sIF9faW50ZWxfZGlzcGxheV93
YShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgZW51bSBpbnRlbF9kaXNwbGF5X3dh
IHdhLA0KPiDCoAkJcmV0dXJuIElTX0RJU1BMQVlfVkVSeDEwMChkaXNwbGF5LCAxMTAwLCAxNDAw
KTsNCj4gwqAJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE1MDE4MzI2NTA2Og0KPiDCoAkJcmV0dXJu
IGRpc3BsYXktPnBsYXRmb3JtLmJhdHRsZW1hZ2U7DQo+ICsJY2FzZSBJTlRFTF9ESVNQTEFZX1dB
XzE0MDI1NzY5OTc4Og0KPiArCQlyZXR1cm4gRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMzU7DQo+
IMKgCWRlZmF1bHQ6DQo+IMKgCQlkcm1fV0FSTihkaXNwbGF5LT5kcm0sIDEsICJNaXNzaW5nIFdh
IG51bWJlcjogJXNcbiIsDQo+IG5hbWUpOw0KPiDCoAkJYnJlYWs7DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5oDQo+IGluZGV4IGY2NDhi
MDBjYjk3ZC4uYTY4YzBiYjdlNTE2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiBAQCAtMjcsNiArMjcsNyBAQCBlbnVtIGlu
dGVsX2Rpc3BsYXlfd2Egew0KPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzE0MDExNTAzMTE3LA0KPiDC
oAlJTlRFTF9ESVNQTEFZX1dBXzIyMDE0MjYzNzg2LA0KPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzE1
MDE4MzI2NTA2LA0KPiArCUlOVEVMX0RJU1BMQVlfV0FfMTQwMjU3Njk5NzgsDQo+IMKgfTsNCj4g
wqANCj4gwqBib29sIF9faW50ZWxfZGlzcGxheV93YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSwgZW51bQ0KPiBpbnRlbF9kaXNwbGF5X3dhIHdhLCBjb25zdCBjaGFyICpuYW1lKTsNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDg1OTc4
MTk2YjYwNy4uODRhMWFiMGJkNDE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMNCj4gQEAgLTk1MSw4ICs5NTEsMTQgQEAgc3RhdGljIHZvaWQgZmJjX3N5
c19jYWNoZV91cGRhdGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCB1
MzIgcmVnLA0KPiDCoA0KPiDCoAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZkaXNwbGF5LT5mYmMuc3lz
X2NhY2hlLmxvY2spOw0KPiDCoA0KPiAtCS8qIENhY2hlIHJlYWQgZW5hYmxlIGlzIHNldCBieSBk
ZWZhdWx0ICovDQo+IC0JcmVnIHw9IEZCQ19TWVNfQ0FDSEVfUkVBRF9FTkFCTEU7DQo+ICsJLyoN
Cj4gKwkgKiBXYV8xNDAyNTc2OTk3ODoNCj4gKwkgKiBGaXhlczogU29DIGhhcmR3YXJlIGlzc3Vl
IGluIHJlYWQgY2FjaGluZw0KPiArCSAqIFdvcmthcm91bmQ6IGRpc2FibGUgY2FjaGUgcmVhZCBz
ZXR0aW5nIHdoaWNoIGlzIGVuYWJsZWQNCj4gYnkgZGVmYXVsdC4NCj4gKwkgKi8NCj4gKwlpZiAo
IWludGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwgMTQwMjU3Njk5NzgpKQ0KPiArCQkvKiBDYWNoZSBy
ZWFkIGVuYWJsZSBpcyBzZXQgYnkgZGVmYXVsdCAqLw0KPiArCQlyZWcgfD0gRkJDX1NZU19DQUNI
RV9SRUFEX0VOQUJMRTsNCj4gwqANCj4gwqAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgWEUzUF9M
UERfRkJDX1NZU19DQUNIRV9VU0FHRV9DRkcsDQo+IHJlZyk7DQo+IMKgDQoNCg==
