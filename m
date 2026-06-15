Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QGzbL1qIL2o5CAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:06:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2192E683624
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:06:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="iAcJF/y/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC01310E1A3;
	Mon, 15 Jun 2026 05:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F3D10E1A1;
 Mon, 15 Jun 2026 05:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781499990; x=1813035990;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gZCX2Bvf3YCpdLxAQU7R7HNO4X79Jpd3Of5ooUqF27I=;
 b=iAcJF/y/Rqm0X+HSRYuvGPep2ZtKOFrNJZEsunnU2k9k2f69t/1IDhqX
 2xYCrGzG/RBqey1Rezrm/b8Lc1zpB3polSxq9ISNy/CQ1f0NIylscPRwx
 4aAmnucPpyd1kM1I0MyBDUSgN5LL08BVFH4ruHykhn84uUiFjjakaDZKL
 EdPl39zjk3Hsx566bkA4qM042kvla2SBVN/2bWYW+zP8kjYZ/Wy77SlX4
 FDU37goksU7lHmO4GXJR6elnL+Q4+GQL193h0SYk5/5BZTGmhm/IhKTxJ
 qF5rK+YFlst7ajPbxyFrywX2SqEts+/G50OgIbu5rWESr9+7/om8Gmspw A==;
X-CSE-ConnectionGUID: HnTFE2fbRYuJ1FGkxnjR2Q==
X-CSE-MsgGUID: HTfZTMEsSxyeGmPMaJdF0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="81973463"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="81973463"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:06:30 -0700
X-CSE-ConnectionGUID: bAds1rG/RWSK0MV5pekL2g==
X-CSE-MsgGUID: R8HIaKi2TXu9q6x9Rqx/Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="244970081"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:06:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:06:11 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:06:11 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:06:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EodLjV/QxDwK5oXXfmR7BeBdraRalsDGCklGZ37+cyADJeqQzxuI5E12/EyZK+tVJ7UbhhoLAt5WB/MxuwVbhfdCr7Pd0z7KruDuvtlcb9kra5gDHAFvJcKt2p6TkE2sGkC0IZYipYS04kc6QawZHFcj/SqyBr0cxS44d5DZcthmOsmd/GnEPcJJ2hX1r2citPv21IoghYCjfVe0Cv4QcotSrw1PfPSM+X9nsZj23mp7hhhXRo3SJlgjDvVArdADsflftZQqyI+MuxdeA9FnQsTey7+8svu7lypyQbG+g7vZupEfyxx0pZzyickX+eb0LnDjA6hmHnMTn1minSjfiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZCX2Bvf3YCpdLxAQU7R7HNO4X79Jpd3Of5ooUqF27I=;
 b=d2Etu4B4EETUAW/eofCWC6CrLsMNbDv8gOesJHaJRHPlJ/hPWsAsKBA2bOvw1gGXQKjctyTvJZMktDN56W7BvQod8C9RFekCHboS2EmO5JL4Q0My7cI5375MaMslh3/C18BkyqPPOuaenH8YqgBwNBazPYezsODtSVUAl1k6R9Sy8GxKXEsCePgAo5P7m+KIP5ruLhdYdbFmfLNHCV4LoHaSkMSk4hPJl+jcfTGeUNfi8PanrsgHRK2oQw41GhTj89t6UV0fHj7eibWeJf8ddoQRCABnGJCpqM9FINOYHwtqmvQh6brOWcXLzlmveUmJg6eRfkUdgzVmGu9zFSK7KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DM4PR11MB6264.namprd11.prod.outlook.com
 (2603:10b6:8:a5::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 05:06:08 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 05:06:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 6/8] drm/i915: override Combo's VS/PE when requested
Thread-Topic: [PATCH v7 6/8] drm/i915: override Combo's VS/PE when requested
Thread-Index: AQHc930KpSGlPsP8NkCczPRqG1jpFbY/Ge+A
Date: Mon, 15 Jun 2026 05:06:08 +0000
Message-ID: <DS4PPFE901A304FD6B487532A55144838F7E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-7-michal.grzelak@intel.com>
In-Reply-To: <20260608192821.3414590-7-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DM4PR11MB6264:EE_
x-ms-office365-filtering-correlation-id: e6b41b42-5914-48be-504f-08deca9bcf79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|6133799003|56012099006|3023799007|11063799006|4143699003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: K4Fsu7ZzoUbQSGOt6XhLu+gLtbYqOfgKHLtxiuoWQBDSWmS1MHDEdqb+7quGFRfI9Ae9icfxni1z8bF5sLPnFloERlE5DYJlAZZgO6CYaims/9MdCgJ8NgFZ2yGRiaPTHzLbuUsmBgEv9t4K7oGPht/BEOzoOiruWqr0g8E170rJ8Y0hNX0iWElsgYf2SR/N9OIONb7WvJs1C5bUYom/H1/wj3Oo9HhcA8sioxzUhKXkjLrBlhxZmNdg0ajhXicDpvewF0OoJkVSHuj3arBRy3GWbOSnnzEoJU/cPGwboT/39lujEyEf4pAEadvPZBDbVmf3MK/TCZAj2pag5uNA1xYOthEA1+XecqhnBkSIH4kBs71SlAx0YKVEehGf/DXCI4ZusVVWC0U652oQtNYQS1aedELpgo04t76+ZI1h17cgQAziIToHigeYrXSKgPV2jcvwz7Aw8zP9gFkwe0EnUXYs5mstO3vqyb/Ke7hpS79fViz9+J9sU4dZtEJPhvzeFD8JoKyOWMoKO4y3m9cvZXOy/x5Jl6xC/PLGBBEyWORihGLCyUSBedW6L+H6GM5AjMJC+2SJxo6VZxsczIbobGSDlODdCts8zk9v+9ZTUAxJnF9aeZRURwVhWU1lx4xiBbmn9uZ8Pvm3+nG22RDXeg1DuLVa/zPnEJkVB9MPdfmVLdKQbz8B3DB63ecVEKQa85JzpqOHKOXIZWZ5LLLeGwtIzwYlSR6nBCOTu5zxLJuOTmQ4Cgu/Q9bBO8fQItmp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(6133799003)(56012099006)(3023799007)(11063799006)(4143699003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkZjc3pHZWZKK2F5VkxSVnJPYW5DWFd3K1hDanZTa1FZYnpZSzN1eGlkbEtB?=
 =?utf-8?B?TmpyejA4aktqWnFkdXhqRldWa0Zvai93R05CckQ1WlFVU0poMmdMcnpiL3BD?=
 =?utf-8?B?OHRzb0hEbXNUc0dOck5zb3B3R2F6MWNwSWcwV1RoSzM1SFdUZ1diQU1sNmFU?=
 =?utf-8?B?azRUMWJ2VlNiL1RoODBBSVB3WnliME5PSjA0cVZzcDJnWjgxajc0ZjU4d0Ur?=
 =?utf-8?B?K2VRcGs5cEEyOTJhUzVDa2d3SHUybFNqamdrdGM0SWE2dmpCSXpmTExNK1Bx?=
 =?utf-8?B?RjZ6TzR1bnZmYWRPWTRFanl2eEFXbWxubHl0dHJXU3NScUZCSUlhY2s3OXZE?=
 =?utf-8?B?M0JqblY3c25RZDhDYm56T3hZMnpGNFc5RW5jL0ZtczZkbklZaUEzT3BEWlg1?=
 =?utf-8?B?bmJPNjRkZnJPcUF4NTlzNjlmYXNjbnpxeVdTMGtRQ2x1cUdsclhkakpHSFB6?=
 =?utf-8?B?RitYblp1NmF5TUNYWHBhV0tXbVdvSjlWbUxNNmVjcWtHR0owK2xVWVlDT01h?=
 =?utf-8?B?T09Ock0wYkoyR21CU0d0bDIydVJ5UERUeHBKUTVvR3FyM0NWWE1OeWY3S2xx?=
 =?utf-8?B?ZVlHb05SQkMvaG9kNXYyZDlLZ250WHpPMXI4ZFptdmdFT1lOWVM5ODZXR2Zx?=
 =?utf-8?B?alZZSGs4T3B5NEM1MzkwZ0JQVGN5ZGwxYnB0cWlETldNdWlLZGxzYW1kOVVt?=
 =?utf-8?B?S3NUS1IzMUNqdmhOU29EejBlUU9FckE2a2NIWWpKblBFU1F0YUYvNlRZdFRE?=
 =?utf-8?B?eUVIQ3JzNUlrdTJXZ3BGSEROTE9GVXlPdnRsMzBmM1BHOTBxcVl3S1JFaFlw?=
 =?utf-8?B?anRYRkg2MmtscitjMkcraHdCM0xIUzJXY1dRVXpSY2pYZ05nRTlwMDh3Zm8r?=
 =?utf-8?B?bDlwTVlsOXlaV2VRaWlyaXNaTlZhQk94VnJWc0lqeXJZZUZVNmFOTnJ3ZG5D?=
 =?utf-8?B?akIrajFOc1ZlQ2pPNUt3S2NDOUNpNkdsNHB1UTMvZnZ3c1JHN3V4bUpvMTNm?=
 =?utf-8?B?NVY3NWE0MmM4eHJ0UFhVcXJnOWxtRWh1MG50Rml1dnBLOFRYUldGbHBwQTFq?=
 =?utf-8?B?Qy9oU0h1bmlTSDlyTVpjeEpEREdDWm9JOGpNQmpteDdKdjJPeW15OS9vZ2Yz?=
 =?utf-8?B?QVNUdzNDM3hEN1Q1OGx6cjFZZWRueTZsN3JhZzljaktJcUJ2SlpRbTBLYjNk?=
 =?utf-8?B?bGRnaWowQW9KWEVkVkNGdk5FY0pCa3lKb3J1c25ZOW9FeUxlR1QrQzFmblBs?=
 =?utf-8?B?MXBoTG45bnd5U1dtbFE3QVp0dFdwdzd3Z0R3c01NellxeE10NnZuS29YZDBS?=
 =?utf-8?B?QzVIZUJHTEF6b25UaS9ldzdoWSsrUC9ONmNKQ0RxdjNHY2RoRjRWbDAwL0Fu?=
 =?utf-8?B?dndDd3AwR1BNck9aOUh1Y3VYeG00QkpCVFFkdVBzMGJtOFJ0SmQ4ZmtBUTVT?=
 =?utf-8?B?S1hoajJaS2JiTytiQUx6eVpUdmxCZ2lPcG5oRmxMRkhib2g2RVR4eU5SSkdy?=
 =?utf-8?B?M0h6bkMwTHZnZ0JBS1dWbGhhUUNmZ1V0aklLcFI0YzMyekRxcGREWHFHSDl4?=
 =?utf-8?B?bUJhR3FtYTBzTC84NUV4WmZ6c0ZUa1pCS3ZQaklnUWU3eEt2T0R3YmNETkJs?=
 =?utf-8?B?VjNiVzJOcGlVYVIrZjlaTHNvSG5uRGdaR21ja0FURDZaREFFSDZtZ0dIekFa?=
 =?utf-8?B?T3hUZlpORlpTbWNvYnAvdTF2M3ljcG55aW5xSGlZM3Y2cVdna1Z2MTJISEVQ?=
 =?utf-8?B?Z3ZDQmo4MnF2WDhhTFVxYzcvVlQ2aGU3a1JPTW1TVmtSVXdKTFNRU3dNaHA0?=
 =?utf-8?B?b1N0c21TYTd4MTNOY3BDVVZURjlkWVZ5N0RTSVovNGZvYlVreW1vcWNCUitY?=
 =?utf-8?B?dU50SlU3anVkNmR6cTNGN2Z4ZXRIVTRheDFIZjNHMjdqRWtwRDE4WmMxUnZH?=
 =?utf-8?B?eW40WlYrdzBEMGJ0eU5xQndWVFFLa0VlWjcwUUVSajVnemtxTUcwemUrY3ht?=
 =?utf-8?B?TU1PU2pIYkRadUFXVVRoTlU4amVxaDJsS3RrREpwcXR1VEtFQmp5R0RzK1U4?=
 =?utf-8?B?Z2ZDSkQyQzJydUdmL0N4cUV2SThPRGcyZU44VGhoVUppUU5tQUtlR1l4U25Q?=
 =?utf-8?B?OWdYdVJnZlZXbmsyS0htczJYM2c0Y2plUmtBSWNxSW1yamt5T0gxM0hHOFhz?=
 =?utf-8?B?alJyODhIRGYybXBET3FmZnBlYnMrY2RNNjdndzdWSEFmVUtlSG5hbGpxSWU3?=
 =?utf-8?B?QjdHbmdzdVFCOG1WZ2ttMFR6NjlnUkJoRW8xUm5sU1NPeWhuaFlTNWtJSW1I?=
 =?utf-8?B?MkxIam5ZL2JpYlY0blNiQ1hmUmZ3OGlxem02K25MRXpxZEpmY0R5QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: He1/i4HNa09LneUy3p1doo1098PuxoG0vO2vOAycfnpIV5Kblqt9IK4MpULF7bE2jKAIM1omOYbQQ/ZMZJiuWQzZ2WQ0NsN+mWpVaOZJJ3RkH0De7EVwbqw0SaHWqjbUfjapdU7JGqBf4MQndJGNQQFCnXOvljBljUiIfYmHymP6b9hyuRN/8yUdPo9XmnA6vNDGSJ9BpB7jZ4s53sKwu927s0RVqpdlo+iVZSbz8spJk3VKgYu/9HHsaMfK7IpIxr0cB1P87ZNVaSrauCnwr3NmC9v9cJnCTdog/nuXU+jtqcSDczgG3mo/lu84nrx6UPkzgLYCZ0GEUHfUICiZ9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b41b42-5914-48be-504f-08deca9bcf79
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 05:06:08.2435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xBV2P55MeNLKO74ZQ3FjYDN5qgEkvJFrDjXehUdJC7cvY0i5woygLTkwUfDey8mY3K0CKhUg97rVHllk1dpdeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6264
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPFE901A304F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2192E683624

PiBTdWJqZWN0OiBbUEFUQ0ggdjcgNi84XSBkcm0vaTkxNTogb3ZlcnJpZGUgQ29tYm8ncyBWUy9Q
RSB3aGVuIHJlcXVlc3RlZA0KPiANCj4gQWRkIGFjY2Vzc29yIGZ1bmN0aW9uIGZvciBDb21ibyB0
byByZWFkIHJlcXVlc3RlZCB0YWJsZSBmcm9tIFZCVCAjNTcuDQo+IFBhcnNlIHRoZSByZXF1ZXN0
ZWQgdGFibGUgYW5kIHRyYW5zZm9ybSBkYXRhIGludG8gcG9ydCdzIGJ1ZmZlci4NCj4gDQo+IEZv
ciBFSEwsIGluIGNhc2VzIHdoZW4gZURQIGVuY29kZXIgdXNlcyBsb3cgdnN3aW5nLCBjaG9vc2Ug
M3JkIHRhYmxlIGlmDQo+IGVuY29kZXIgc3VwcG9ydHMgSEJSMy4gT3RoZXJ3aXNlIHVzZSAybmQg
dGFibGUgZm9yIGVEUCB1c2luZyBsb3cgdnN3aW5nLg0KPiANCj4gSW4gY2FzZXMgd2hlbiBlRFAg
ZW5jb2RlciBkb2VzIG5vdCB1c2UgbG93IHZzd2luZywgY2hvb3NlIDJuZCB0YWJsZSBpZg0KPiBl
bmNvZGVyIHN1cHBvcnRzIG1vZGUgaGlnaGVyIG9yIGluY2x1ZGluZyBIQlIyLiBPdGhlcndpc2Ug
dXNlIDNyZCB0YWJsZSBmb3INCj4gZURQIG5vdCB1c2luZyBsb3cgdnN3aW5nLg0KPiANCj4gRm9y
IGV4dGVybmFsIERQIHVzZSAybmQgdGFibGUgaWYgZW5jb2RlciBzdXBwb3J0cyBtb2RlcyBoaWdo
ZXIgdGhhbiBvcg0KPiBpbmNsdWRpbmcgSEJSMi4gVXNlIDFzdCB0YWJsZSBpZiBleHRlcm5hbCBE
UCBlbmNvZGVyIHN1cHBvcnRzIG1vZGVzIGxvd2VyDQo+IHRoYW4gSEJSMi4NCj4gDQo+IEZvciBK
U0wsIGFsd2F5cyB1c2UgMXN0IHRhYmxlIGZvciBleHRlcm5hbCBEUC4gRm9yIGVEUHMgbm90IHVz
aW5nIGxvdyB2c3dpbmcNCj4gdXNlIDFzdCB0YWJsZSBhcyB3ZWxsLg0KPiANCj4gSW4gY2FzZXMg
d2hlbiBlRFAgZW5jb2RlciB1c2VzIGxvdyB2c3dpbmcsIGNob29zZSAxc3QgdGFibGUgaWYgZW5j
b2Rlcg0KPiBzdXBwb3J0cyBIQlIzLiBXaGVuIGVuY29kZXIgc3VwcG9ydHMgSEJSMiBjaG9vc2Ug
M3JkIHRhYmxlLiBXaGVuDQo+IGVuY29kZXIgc3VwcG9ydHMgbW9kZXMgbG93ZXIgdGhhbiBIQlIy
IGNob29zZSAybmQgdGFibGUuDQo+IA0KPiBUaGVyZSBhcmUgbm8gY2hhbmdlcyB0byBpbnRlbF9k
ZGlfZHBfbGV2ZWwoKSBzaW5jZSBzZWxlY3Rpb24gb2YgY29ycmVjdCByb3cgb2YNCj4gaW50ZWxf
ZGRpX2J1Zl90cmFuc19lbnRyeSBpcyBzYW1lIGFzIHdoZW4gbm8gb3ZlcnJpZGUgcmVxdWVzdCBo
YXMgYmVlbg0KPiBkb25lLg0KPiANCj4gTG9va2luZyBmcm9tIG90aGVyIE9TZXMsIGluIGNhc2Ug
d2hlbiBlbmNvZGVyIGRvZXMgbm90IHN1cHBvcnQgRFAgd2UgY291bGQNCj4gdGhlb3JldGljYWxs
eSB1c2UgMXN0IHRhYmxlLiBIb3dldmVyLCBhcyBvZiBub3csIHVzZSBkZWZhdWx0IHRhYmxlcy4N
Cj4gDQo+IHY2LT52Nw0KPiAtIGhhbmRsZSBWUy9QRS1PJ3MgVkJUIGRldGFpbHMgaW4gaW50ZWxf
Ymlvc18qIGZ1bmN0aW9ucyAoSmFuaSkNCj4gLSByZW1vdmUgdnNwZW8ncyBjYXN0IHRvICh2b2lk
ICopIChKYW5pKQ0KPiAtIGNhbGwgZW5jb2Rlci0+Z2V0X2J1Zl90cmFucygpIG9uY2UgKEphbmkp
DQo+IC0gcmV0dXJuIE5VTEwgZnJvbSBpbnRlbF9iaW9zX2dldF8qIHdoZW4gdXNpbmcgZGVmYXVs
dCAoSmFuaSkNCj4gLSB2YWxpZGF0ZSBWUy9QRS1PIGluIGludGVsX2Jpb3MuYyAoSmFuaSkNCj4g
LSBjaGVjayBkZXZkYXRhLT52c3BlbyBpZiBWUy9QRS1PIHdhcyByZXF1ZXN0ZWQNCj4gLSBpbmxp
bmUge2pzbCxlaGx9X2NvbWJvX2dldF92c3Blb19idWZfdHJhbnMoKQ0KPiAtIHJlbW92ZSB0ZW1w
b3JhcmlseSBMVA0KPiANCj4gdjQtPnY1DQo+IC0gYmxlbmQgaW5kZXggY29tcHV0YXRpb24gd2l0
aCB0YWJsZSBwYXJzaW5nDQo+IC0gcmVtb3ZlIGVudW1zIGVudGlyZWx5DQo+IC0gYWRkIHNwYWNl
cyBhcm91bmQgb3BlcmF0b3JzIChTdXJhaikNCj4gLSByZW1vdmUgc3BhY2VzIGFmdGVyIHR5cGUg
Y2FzdGluZyAoU3VyYWopDQo+IC0gcmVtb3ZlIElOVEVMX0RJU1BMQVlfU1RBVEVfV0FSTiAoU3Vy
YWopDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFr
QGludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5r
YW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jICAgICB8IDk4ICsrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oICAgICB8ICA2ICsrDQo+ICAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCAgNiArKw0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCAxMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggNTlmZmI1YmM4ODQ4Li40Njc2NmRmYjg5
ODkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+
IEBAIC0zOTYxLDYgKzM5NjEsMTA0IEBAIGludGVsX2Jpb3NfZ2V0X2MxMF92c3Blbyhjb25zdCBz
dHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEsDQo+ICAJcmV0dXJuIHZz
cGVvOw0KPiAgfQ0KPiANCj4gK2NvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoNCj4g
K2ludGVsX2Jpb3NfZ2V0X2VobF9jb21ib192c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19l
bmNvZGVyX2RhdGENCj4gKmRldmRhdGEsDQo+ICsJCQkgICAgICAgYm9vbCBoYXNfZHAsIGludCBw
b3J0X2Nsb2NrLCBib29sIGhhc19lZHApIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheTsNCj4gKwl1bmlvbiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5ICplbnRyaWVzOw0KPiAr
CWludCBudW1fY29sdW1ucywgbnVtX3Jvd3MsIGxldmVsLCBpZHg7DQo+ICsJc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKnZzcGVvOw0KPiArCWNvbnN0IHUzMiAqdGFibGVzOw0KPiArCXNpemVf
dCBvZmZzZXQgPSAwOw0KPiArDQo+ICsJaWYgKCF2YWxpZGF0ZV92c3BlbyhkZXZkYXRhLCBoYXNf
ZHApKQ0KPiArCQlyZXR1cm4gTlVMTDsNCj4gKw0KPiArCWRpc3BsYXkgPSBkZXZkYXRhLT5kaXNw
bGF5Ow0KPiArCXZzcGVvID0gZGV2ZGF0YS0+dnNwZW87DQo+ICsJZW50cmllcyA9ICh2b2lkICop
dnNwZW8tPmVudHJpZXM7DQo+ICsJdGFibGVzID0gZGlzcGxheS0+dmJ0LnZzcGVvLnRhYmxlczsN
Cj4gKwludW1fY29sdW1ucyA9IGRpc3BsYXktPnZidC52c3Blby5udW1fY29sdW1uczsNCj4gKwlu
dW1fcm93cyA9IGRpc3BsYXktPnZidC52c3Blby5udW1fcm93czsNCj4gKw0KPiArCWlkeCA9IHBv
cnRfY2xvY2sgPiAyNzAwMDAgPyAxIDogMDsNCj4gKwlpZiAoaGFzX2VkcCkNCj4gKwkJaWR4ID0g
cG9ydF9jbG9jayA+IDU0MDAwMCA/IDIgOiAxOw0KPiArDQo+ICsJb2Zmc2V0ICs9IGlkeCAqIG51
bV9yb3dzICogbnVtX2NvbHVtbnM7DQo+ICsNCj4gKwlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPCBu
dW1fcm93czsgbGV2ZWwrKykgew0KPiArCQl1MzIgZHcyX3N3aW5nX3NlbCA9IHRhYmxlc1tvZmZz
ZXRdOw0KPiArCQl1MzIgZHc3X25fc2NhbGFyID0gdGFibGVzW29mZnNldCArIDFdOw0KPiArCQl1
MzIgZHc0X2N1cnNvcl9jb2VmZiA9IHRhYmxlc1tvZmZzZXQgKyAyXTsNCj4gKwkJdTMyIGR3NF9w
b3N0X2N1cnNvcl8yID0gdGFibGVzW29mZnNldCArIDNdOw0KPiArCQl1MzIgZHc0X3Bvc3RfY3Vy
c29yXzEgPSB0YWJsZXNbb2Zmc2V0ICsgNF07DQo+ICsNCj4gKwkJZW50cmllc1tsZXZlbF0uaWNs
LmR3Ml9zd2luZ19zZWwgPSBkdzJfc3dpbmdfc2VsOw0KPiArCQllbnRyaWVzW2xldmVsXS5pY2wu
ZHc3X25fc2NhbGFyID0gZHc3X25fc2NhbGFyOw0KPiArCQllbnRyaWVzW2xldmVsXS5pY2wuZHc0
X2N1cnNvcl9jb2VmZiA9IGR3NF9jdXJzb3JfY29lZmY7DQo+ICsJCWVudHJpZXNbbGV2ZWxdLmlj
bC5kdzRfcG9zdF9jdXJzb3JfMiA9IGR3NF9wb3N0X2N1cnNvcl8yOw0KPiArCQllbnRyaWVzW2xl
dmVsXS5pY2wuZHc0X3Bvc3RfY3Vyc29yXzEgPSBkdzRfcG9zdF9jdXJzb3JfMTsNCj4gKw0KPiAr
CQlvZmZzZXQgKz0gbnVtX2NvbHVtbnM7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIHZzcGVvOw0K
PiArfQ0KPiArDQo+ICtjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ICtpbnRl
bF9iaW9zX2dldF9qc2xfY29tYm9fdnNwZW8oY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rl
cl9kYXRhDQo+ICpkZXZkYXRhLA0KPiArCQkJICAgICAgIGJvb2wgaGFzX2RwLCBpbnQgcG9ydF9j
bG9jaywgYm9vbA0KPiBsb3dfdnN3aW5nX2VkcCkgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5Ow0KPiArCXVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgKmVudHJpZXM7
DQo+ICsJaW50IG51bV9jb2x1bW5zLCBudW1fcm93cywgbGV2ZWwsIGlkeDsNCj4gKwlzdHJ1Y3Qg
aW50ZWxfZGRpX2J1Zl90cmFucyAqdnNwZW87DQo+ICsJY29uc3QgdTMyICp0YWJsZXM7DQo+ICsJ
c2l6ZV90IG9mZnNldCA9IDA7DQo+ICsNCj4gKwlpZiAoIXZhbGlkYXRlX3ZzcGVvKGRldmRhdGEs
IGhhc19kcCkpDQo+ICsJCXJldHVybiBOVUxMOw0KPiArDQo+ICsJZGlzcGxheSA9IGRldmRhdGEt
PmRpc3BsYXk7DQo+ICsJdnNwZW8gPSBkZXZkYXRhLT52c3BlbzsNCj4gKwllbnRyaWVzID0gKHZv
aWQgKil2c3Blby0+ZW50cmllczsNCj4gKwl0YWJsZXMgPSBkaXNwbGF5LT52YnQudnNwZW8udGFi
bGVzOw0KPiArCW51bV9jb2x1bW5zID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9jb2x1bW5zOw0K
PiArCW51bV9yb3dzID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9yb3dzOw0KPiArDQo+ICsJaWR4
ID0gMDsNCj4gKwlpZiAobG93X3Zzd2luZ19lZHApIHsNCj4gKwkJaWYgKHBvcnRfY2xvY2sgPiA1
NDAwMDApDQo+ICsJCQlpZHggPSAwOw0KPiArCQllbHNlIGlmIChwb3J0X2Nsb2NrID4gMjcwMDAw
KQ0KPiArCQkJaWR4ID0gMTsNCj4gKwkJZWxzZQ0KPiArCQkJaWR4ID0gMjsNCj4gKwl9DQo+ICsN
Cj4gKwlvZmZzZXQgKz0gaWR4ICogbnVtX3Jvd3MgKiBudW1fY29sdW1uczsNCj4gKw0KPiArCWZv
ciAobGV2ZWwgPSAwOyBsZXZlbCA8IG51bV9yb3dzOyBsZXZlbCsrKSB7DQo+ICsJCXUzMiBkdzJf
c3dpbmdfc2VsID0gdGFibGVzW29mZnNldF07DQo+ICsJCXUzMiBkdzdfbl9zY2FsYXIgPSB0YWJs
ZXNbb2Zmc2V0ICsgMV07DQo+ICsJCXUzMiBkdzRfY3Vyc29yX2NvZWZmID0gdGFibGVzW29mZnNl
dCArIDJdOw0KPiArCQl1MzIgZHc0X3Bvc3RfY3Vyc29yXzIgPSB0YWJsZXNbb2Zmc2V0ICsgM107
DQo+ICsJCXUzMiBkdzRfcG9zdF9jdXJzb3JfMSA9IHRhYmxlc1tvZmZzZXQgKyA0XTsNCj4gKw0K
PiArCQllbnRyaWVzW2xldmVsXS5pY2wuZHcyX3N3aW5nX3NlbCA9IGR3Ml9zd2luZ19zZWw7DQo+
ICsJCWVudHJpZXNbbGV2ZWxdLmljbC5kdzdfbl9zY2FsYXIgPSBkdzdfbl9zY2FsYXI7DQo+ICsJ
CWVudHJpZXNbbGV2ZWxdLmljbC5kdzRfY3Vyc29yX2NvZWZmID0gZHc0X2N1cnNvcl9jb2VmZjsN
Cj4gKwkJZW50cmllc1tsZXZlbF0uaWNsLmR3NF9wb3N0X2N1cnNvcl8yID0gZHc0X3Bvc3RfY3Vy
c29yXzI7DQo+ICsJCWVudHJpZXNbbGV2ZWxdLmljbC5kdzRfcG9zdF9jdXJzb3JfMSA9IGR3NF9w
b3N0X2N1cnNvcl8xOw0KPiArDQo+ICsJCW9mZnNldCArPSBudW1fY29sdW1uczsNCj4gKwl9DQo+
ICsNCj4gKwlyZXR1cm4gdnNwZW87DQo+ICt9DQo+ICsNCj4gIGJvb2wgaW50ZWxfYmlvc19lbmNv
ZGVyX2lzX2RlZGljYXRlZF9leHRlcm5hbChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNv
ZGVyX2RhdGEgKmRldmRhdGEpICB7DQo+ICAJcmV0dXJuIGRldmRhdGEtPmRpc3BsYXktPnZidC52
ZXJzaW9uID49IDI2NCAmJiBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuaA0KPiBpbmRleCA0OWFjZjhjNDA1ZTIuLmM1NTc2NWE5NDU5NCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gQEAgLTc5LDYgKzc5LDEy
IEBAIGludGVsX2Jpb3NfZ2V0X2MyMF92c3Blbyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19l
bmNvZGVyX2RhdGEgKmRldmRhdGEsICBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAq
DQo+IGludGVsX2Jpb3NfZ2V0X2MxMF92c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNv
ZGVyX2RhdGEgKmRldmRhdGEsDQo+ICAJCQkgYm9vbCBoYXNfZHAsIGludCBwb3J0X2Nsb2NrLCBi
b29sIGhhc19lZHApOw0KPiArY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKg0KPiAr
aW50ZWxfYmlvc19nZXRfZWhsX2NvbWJvX3ZzcGVvKGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2Vu
Y29kZXJfZGF0YQ0KPiAqZGV2ZGF0YSwNCj4gKwkJCSAgICAgICBib29sIGhhc19kcCwgaW50IHBv
cnRfY2xvY2ssIGJvb2wgaGFzX2VkcCk7IGNvbnN0DQo+IHN0cnVjdA0KPiAraW50ZWxfZGRpX2J1
Zl90cmFucyAqIGludGVsX2Jpb3NfZ2V0X2pzbF9jb21ib192c3Blbyhjb25zdCBzdHJ1Y3QNCj4g
K2ludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0KPiArCQkJICAgICAgIGJvb2wgaGFz
X2RwLCBpbnQgcG9ydF9jbG9jaywgYm9vbA0KPiBsb3dfdnN3aW5nX2VkcCk7DQo+IA0KPiAgYm9v
bCBpbnRlbF9iaW9zX2VuY29kZXJfcmVxdWVzdHNfdnNwZW8oY29uc3Qgc3RydWN0DQo+IGludGVs
X2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKTsgIGJvb2wNCj4gaW50ZWxfYmlvc19lbmNvZGVy
X3N1cHBvcnRzX2R2aShjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGENCj4gKmRl
dmRhdGEpOyBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGlfYnVmX3RyYW5zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aV9idWZfdHJhbnMuYw0KPiBpbmRleCBiNDEyMGI5YzQ5YjIuLmI2MmNlNThiOWJkYyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5z
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3Ry
YW5zLmMNCj4gQEAgLTE4NzMsNiArMTg3MywxMiBAQCBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucw0KPiAqaW50ZWxfZGRpX2J1Zl90cmFuc19nZXQoc3RydWN0IGludGVsX2VuY29kZXIg
Kg0KPiAgCQkJYnVmX3RyYW5zID0gaW50ZWxfYmlvc19nZXRfYzEwX3ZzcGVvKGRldmRhdGEsDQo+
IGhhc19kcCwgcG9ydF9jbG9jaywgaGFzX2VkcCk7DQo+ICAJCWVsc2UNCj4gIAkJCWJ1Zl90cmFu
cyA9IGludGVsX2Jpb3NfZ2V0X2MyMF92c3BlbyhkZXZkYXRhLA0KPiBoYXNfZHAsIGlzX3VoYnIp
Ow0KPiArCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMTEpIHsNCj4gKwkJaWYg
KGRpc3BsYXktPnBsYXRmb3JtLmphc3Blcmxha2UpDQo+ICsJCQlidWZfdHJhbnMgPSBpbnRlbF9i
aW9zX2dldF9qc2xfY29tYm9fdnNwZW8oZGV2ZGF0YSwNCj4gaGFzX2RwLCBwb3J0X2Nsb2NrLA0K
PiArCQkJCQkJCQkgICBoYXNfZWRwDQo+ICYmIHVzZV9lZHBfbG93X3Zzd2luZyhlbmNvZGVyKSk7
DQo+ICsJCWVsc2UgaWYgKGRpc3BsYXktPnBsYXRmb3JtLmVsa2hhcnRsYWtlKQ0KPiArCQkJYnVm
X3RyYW5zID0NCj4gaW50ZWxfYmlvc19nZXRfZWhsX2NvbWJvX3ZzcGVvKGRldmRhdGEsIGhhc19k
cCwNCj4gK3BvcnRfY2xvY2ssIGhhc19lZHApOw0KPiAgCX0NCj4gDQo+ICAJaWYgKGJ1Zl90cmFu
cykNCj4gLS0NCj4gMi40NS4yDQoNCg==
