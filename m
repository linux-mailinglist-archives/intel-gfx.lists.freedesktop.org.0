Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 098769B7475
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 07:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297B610E167;
	Thu, 31 Oct 2024 06:24:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kT4S0vJJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD80D10E167;
 Thu, 31 Oct 2024 06:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730355853; x=1761891853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1AAOnwntenz8fM077xBwwrYy04ZdgSaX+9BmGWCmLjg=;
 b=kT4S0vJJkG3kzIJo2EYaRE1bKfxL/drORFrSCjrRFdVrZ/rHFxiCiT1v
 gB87rLRelWawtY06BowOzwCkNzLF8HvSUnyRTD+jkGYnIRHLtQxCDPNxc
 sUVYF6P+LR+I5bVUfAXek8RdER0a+yfpDYGWaxUWPvUwA72iwrGL+GkQ4
 kJEacTjROVmuujMgYw/faQpNX8QOck8CFS4+qWr65y5XWjZY25QaxXfw8
 IDNwyEzlFlxrRCegHHxoLR9lEEXbIV9nf01DMScVNGK0JAeGC7qYU2zlL
 RiL38McSXzXZzt51Jlw71wLdTdfQtGvNFOWvb/4Zj5sG6aoE3GICVnQa5 Q==;
X-CSE-ConnectionGUID: +MP+JNiZRq6+LoDlf8QwVw==
X-CSE-MsgGUID: f7BBOjtKTDWrBrbeRmqPFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="29519939"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29519939"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 23:24:12 -0700
X-CSE-ConnectionGUID: Jl2XV6p4Te+C6Jb97RXKrQ==
X-CSE-MsgGUID: ZXfROVCARd6nbjJfhniHqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82850077"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 23:24:12 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 23:24:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 23:24:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 23:24:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QLVliXU/6YadPuf6BXsmOEUAIfG4BFP8OqpMyQfq+j4m8eEBhmv5oK+4Hxrz0EzqcEMbxOqOlXuG1E0qbG+Z6ybLq6nmyOKkn0HJ8oaEmDiT1H1DB/JvFtGFZa02uhQRc9rYrbKTeCklSDczmCRu0DgQkDwLNXkIECwKZkM+cxDPWQr1g/pzJ+AVPNAX0MzapFH2QQEW7Fu/dvxCdmaAa4wIrfgvrxcHnLwys1MNoklNRubtSCiGisnpqWg2+g9FebeGFTUOvyImA29+efvGfqAO89oT943nNbCCnF2Uhh7h5Y8WoE+EaR5tg8XLQAYnn2ogbOMovMEGBpeJIZeX8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1AAOnwntenz8fM077xBwwrYy04ZdgSaX+9BmGWCmLjg=;
 b=s2xgS+n6p1jOTbc9vQTmUK3/E0k4F8cYD4US5PSpy2UirOsKbTOBqoYZLDzS5s63B43LS3nVpdmnDDvW1IioZB36x8wVN3Nj/OcY/G1zqSZSbB8zcl6Hiv1cpsrVTx2QUZz/Y5MsWkuZf1gdcQBfltC0H6+spGXw10tribG4M3jp3yRtQs4XvJBiL4Pyj5+uXyjln6+3ferpRUoMOd8T5suLjI9vxcNvu/HG7rX5tahZU/6rP384hnGvpC5GFXu3sPdK09Xm9abmwtz4u8vAl4EfEoO/HnYBpGzIjvgWfDY+12d0J7P+FXlL4kZmCXh4cJnqnVbbrvAbPlO1B6fuqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.18; Thu, 31 Oct
 2024 06:24:09 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.023; Thu, 31 Oct 2024
 06:24:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: Re: [PATCH 0/3] drm/i915/psr: minor cleanups
Thread-Topic: [PATCH 0/3] drm/i915/psr: minor cleanups
Thread-Index: AQHbKfZaDWFle79ZTE6uPSauSGISebKgZw2A
Date: Thu, 31 Oct 2024 06:24:08 +0000
Message-ID: <0f5367f2f162cac2426eced211e28533a49f3060.camel@intel.com>
References: <cover.1730201504.git.jani.nikula@intel.com>
In-Reply-To: <cover.1730201504.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6194:EE_
x-ms-office365-filtering-correlation-id: 153c2c16-3b40-45a6-5177-08dcf974a0c0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RGo3VGoxS1FvOHF1VGdhVGd1NzNTVS8zcThhWUVhYkEyNFhXZytHS05KUVo5?=
 =?utf-8?B?VEpnTi9ZVW5qMzk1U2lVMXRTelJ6a2x1LzlMaW9OSFhWNnNYNkpQdjdFcGN1?=
 =?utf-8?B?ZDZ2YXNEU1A5L2VLd2lmdjRUZ21zNFQxL1M4d0pnWnU2SHlTcUsxckZ1cTlL?=
 =?utf-8?B?SGJmUkRseWR4S09hRXE1SlRJS1ZMb3JYMURmWVpBRjRYYi9YY3RUMWIxbVdn?=
 =?utf-8?B?eEdnUEQyWmtvd2lLL0NVMlViVWlxVHV1V3E3MHlySFpRQTE4d291dUEvZSt2?=
 =?utf-8?B?cHdIbEFwQWd0VGk4RENobVJuOFQrbnJ5R1dmY0M4dk9xWmVKSE52Z2hjQldG?=
 =?utf-8?B?Um9OSkxiYzN2Ung1Mnh0dExrRTBWeHE2N0w5clVMSmh5ZklhMVU0NVdhbjgy?=
 =?utf-8?B?MGVDajdGSjNTeDNRZDRqRStIQis4Uy9zV0kzL3ZYYlZvTEpEUGJqRUt5Q3F0?=
 =?utf-8?B?emljZFJoQmE2cExoWUwyUWp5THVWTlNRK3lyK3dMNmVjb3orYW1vVjEvNFJi?=
 =?utf-8?B?TDBodmdNNFl3ekpFVGtvcUpLZG9QVnFtQnNGakFmdmVEUTJReVpFeG9RVHFS?=
 =?utf-8?B?NEUweHNBcC9zM3FJelQxcXJJNnNKekl0UEFOQVJaUGQweHhXR3ZqY3VDWGlL?=
 =?utf-8?B?RnhPM2FsZVl5blhBV25lcGd5Rk1vb1l5UUJ6YjlNWEtWb09TKysxb0h4N0tV?=
 =?utf-8?B?OXJyWjdtZXozbzlWUVp6MVFFYnQ1dDR1Y0FYV3RDellsaW95Z3g3QlZwNzhX?=
 =?utf-8?B?OFNrZUVDNDhZWFdRZTdmV2hPMC9qTE5mOWxTSC9VWStMQU5zbElaT1lLSXBR?=
 =?utf-8?B?Nitsd2lKdDNUcnlYTDZkWDhrNzZTYlZDU1VTbDNYZmRlUXovbzlwQ1YxVXRj?=
 =?utf-8?B?OFBnMXhrcWw1Rng5Ykd5Qi9MWDZWSFh0TXZEUGlzbC9ibFVLRnZiZy81V3pS?=
 =?utf-8?B?MEdXdVdtRFFoYWFCSmhHT3UyMUtKbjk1bXVVSElERGwwUm5Oa3NwTnY3TnlE?=
 =?utf-8?B?b3hLSEVWVktnYzdmUG1YdUdKRll2clZzQmU3bU8vUnpTMEkvb0ZXMW8vOFM0?=
 =?utf-8?B?MEp1UXlYZFZmVDVUQjZmVG9ZblVBOVJGbndmUm1JMm53L0ZNeDRVbU1reWFZ?=
 =?utf-8?B?ei9FZ1RLMlE0cGdtb0RpMkVETHlydjJCVVNOUzhjZEtRKzVpeFlOaFhjRE9L?=
 =?utf-8?B?WS9oWVFOZHpISXVTT3ZrZmQwcDJWeDdwVnJieEdEalZOeGRrZktMRVBCSk9J?=
 =?utf-8?B?UG9YSVFaWGNjRnhpYjN0cy9HK0trblNBWVRQdENWZC9pcmw4RG1SYlp3bGlw?=
 =?utf-8?B?MU1nK25jS2dqbm54MkdRVDJvb2ZrZE5NSmdoMTFka3NUL2MzdHR4VXJIZCt5?=
 =?utf-8?B?SnJieUdqODZiQ0hMd0JTdEsyaDBMV2Yvck5tUnlMdE9tR1F5cXZwOGdrM0l6?=
 =?utf-8?B?VEtHK2I5NVlzY3hYL1d3cWVrMmFKa2tZQ0hvdFVsUmtiaTFFMmN4cld6NHRP?=
 =?utf-8?B?YlFPdHhma2xSUVIxbFVuaDdSTUU3dzRNZnE4YjJiWkE1WGNPbk41LzNWbjEv?=
 =?utf-8?B?L1Z1Q0VMbzhETmJock5vMGU0T2dBMzVCY25SYWVnQWVJb293Mm4vMGxWSmFu?=
 =?utf-8?B?MTc1MDBZeTVhd1pSS010bTFueGxwek80RjQ1OGFPWmRDbmlab1hyVEpzMEgz?=
 =?utf-8?B?d3dtRzFFUzNXa1JLbzM5d0dTSVVqRWlvNCtUVUgwQlJOcGlRaW5oOFEycy90?=
 =?utf-8?B?d3pGOEFSTVM3SGhCand0em02cVg0bzFJSmlhb1R2U2xvUFNsMXlDd2pDMDNP?=
 =?utf-8?Q?/R5eYFw8jXJO4MOj7bmVlZGFsDQzc+2/pIbJA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUlIVGx4b3g5VGoyMms1dzZ3WGlXM204TDVMSk14QThiTTdKTVovNS9tWmYw?=
 =?utf-8?B?eDMybDdyajEwQk1GTFFuL1lwbFVRUVBDeTh1ODZhMEY0b1d3S1hEYkNRSEZL?=
 =?utf-8?B?OVpIN3ZjZjFETVVFSGtaZ3pnTU1HdEZqbExNWTJma005dk1EMjFYbklHNURD?=
 =?utf-8?B?WGVXTVVuYmlxNUhCSWdDd1NBSUFNbmdValMwVmh6WGdLOE5ZajA0VDBNcmZr?=
 =?utf-8?B?TUxEUk1XLzFxdjNoTnBrZVhKa2tEQkJZK2o3QktqQnVLNnY0NmpXcGVEcld3?=
 =?utf-8?B?TytTTlBsTmFEYmcvN2lYUVBoOXB4VTB6VU9jZXAzYlNvS1pSUlhaVlFyTkRN?=
 =?utf-8?B?TXJSUFRzQ0RMbzVUaUxyaVhheGRHK2UrZXAvdG41V2RpOWlHV252bzE4OGpu?=
 =?utf-8?B?K2FVUE8xUW42enBLNVpmYzZwNVIycnMvSXBZYnVGZjZ5M01JTThtbElXRC9v?=
 =?utf-8?B?Q21JN3pVRTN4TWxCSHdPNEVRbW5OVUZ2NmI0OS9OTiswakVMSWx2R1IzNSt4?=
 =?utf-8?B?d0c5R1QycWdxSlkwK01OeE5ESVBnc0hnc1ozQnhZRmNtUWRLZ3lDUWxTZ2VO?=
 =?utf-8?B?dTA4akNTcjRZVzlsc1FyNU55My9RU0ZOSHN2QU5VSnNWK1pEZVFEbmVGdUk3?=
 =?utf-8?B?Um9ENXAyUzRRKzBmdW1NRmhoWUZWVW4rZ05rNUJ6V0srM2NSM2UycEJUL0dL?=
 =?utf-8?B?ZW9aVjljZThsMW1WSi9DdDg1cTYrMXdTV1dpN25YbWZKUnRTYlV1QlZvczdt?=
 =?utf-8?B?V0d0STVFQzYyWEkzTjRDNGJzVHJFdms3UHBSRnd6ZFhwVFp4dGx4eTlXNEpi?=
 =?utf-8?B?T2JQYTBJaVlZOGtiTGt6UlE3N2Y3b3VJWndCS05JMjA1bDRwQWRrdzRlbFkv?=
 =?utf-8?B?NjRnZkJDU3F0RWUvS2dieDFHcGxudUNLUUFnOXFIdVhxUC9pdEtoQ3VtWWhj?=
 =?utf-8?B?aTJQWVA4UGl4YTlvQTRURVRuellxNnBBTkZUWXVzQTZudEhvYWJqR1F4WGJi?=
 =?utf-8?B?VzBiVldhQzJEOGdpMGE1WnpQaW9za2hNeC9wMElZQldmbFVCMTNzbnhLd05Y?=
 =?utf-8?B?SGVoUUJxWVhjMWV4dDU0WHp6Z0ZBdTU3UjNDb0RudzllMkJOWVJDOEFMNUhv?=
 =?utf-8?B?SjZpS0F1cHJ2WlJUN1ZSRUE1MGJRSE9kSkxsdHdKYTkvK1UzZkR1ZEpndmRV?=
 =?utf-8?B?QkdUL1FEREorZWpMdHR5N2E0aUlaTjlEZG1Ed1NRZ2FXOUxST3NjYmMxL0Nq?=
 =?utf-8?B?UVI1WmRkR2xoOFhTTHNVQjgyZ1ZsdWlieXRGY0pQdUpDMDBIeVhPMkQwUHpY?=
 =?utf-8?B?b0NNZXhsNTh1cDRlc0Z0QjBTaC9HU0ZWRUVVQTllUXQ4M2lObnlHdHVLY2pr?=
 =?utf-8?B?T09sajhzRTFxd0cxYUZIcTQ0SU1GOTlEL250REh4ZkJRY0pHRk4zTjF4K2xI?=
 =?utf-8?B?azVFWlc4TGRLcmNvUENnQlZFV1BxV2wyU0F1OG4xOHFXSmxEQTVoV091Z0pV?=
 =?utf-8?B?MXYzcXI1WGdZSmpUUjR0NTZCQStYVUNXWDg2T3p0SE14cjlpKzFRY2x2M2Y2?=
 =?utf-8?B?aVhIQ29IWDlqV0VEV1ROYU1XWTY3MUJra2JaN2JmRHYrVTVQeEFENkVhcHpG?=
 =?utf-8?B?RHhlVnEzUVMyK2RDMlgzS1F6b3RXcmM5TmUxb3h5WXY0SVIvQUZ3S01Dd0Nt?=
 =?utf-8?B?OEZCVERxQzhJWm51cFVLM0k1ZWsvTzhVZVd4ZjlZV3U4KytPeGtDNjgxYjA2?=
 =?utf-8?B?dW01c213a0tUOW5XY1oxY094WnRQcVZQOUVGZzU4Nkd6T1M1UCtKenpaeE8z?=
 =?utf-8?B?c0cxVXJ0aWhhazhaNGtRUnRXVUhDTGNXc1lpT3V1NUQ2cGM3Y2l1TWtmV1k5?=
 =?utf-8?B?WVY0Uzc4THFTSXJOTURVbjVhY2R0eUVrR0dWK0dZR0ZQOEZITWdRdE1zWFRX?=
 =?utf-8?B?VXVyVnR0S2hSZUdKSzR4dUhNTG5SODliaUNsMHVoK2FhbXlpVkp3Vm0xSVBw?=
 =?utf-8?B?akhKMHFiZ1RscEx3QnVzM1lXWU5acDY1cEExWkxaMlZheWRWSUg3RnpIZDdX?=
 =?utf-8?B?dVhjSkdWNzRIVGtSemJwSGdQcGEwZVJ3WllOT0FSNTA2S2lMaHN0THExYkhZ?=
 =?utf-8?B?TThVVS91Y2hoNWJCb0kybnNGQUp3eHZaMjZ6NmVhck5NYTlmWG9LVFp2RWFO?=
 =?utf-8?B?VHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <55F2743AAB6CCC4BA5F7730156853B88@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 153c2c16-3b40-45a6-5177-08dcf974a0c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2024 06:24:08.7666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UxEHbsp1cFxLZg5sHiFrbXQbfYZRGvE7fTtg4xgfiv4WtuyjTqCseGR/u1hXTfPwJ0XyeSbH5i3YdlZzX7XHqfB/0CmnIjNMROHEO8XtdeI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6194
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

T24gVHVlLCAyMDI0LTEwLTI5IGF0IDEzOjMyICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
U29tZSBjbGVhbnVwcyBpbiBQU1IgY29kZS4gSWYgdGhpcyBjb25mbGljdHMgd2l0aCBtb3JlIGlt
cG9ydGFudA0KPiBzdHVmZiwNCj4gdGhpcyBjYW4gd2FpdC4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IENjOiBTdXJhaiBLYW5kcGFs
IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gDQo+IEphbmkgTmlrdWxhICgzKToNCj4gwqAg
ZHJtL2k5MTUvcHNyOiBhZGQgTEFURU5DWV9SRVBPUlRJTkdfUkVNT1ZFRCgpIHJlZ2lzdGVyIGJp
dCBoZWxwZXINCj4gwqAgZHJtL2k5MTUvcHNyOiBzdG9wIHVzaW5nIGJpdHdpc2UgT1Igd2l0aCBi
b29sZWFucyBpbg0KPiDCoMKgwqAgd21fb3B0aW1pemF0aW9uX3dhKCkNCj4gwqAgZHJtL2k5MTUv
cHNyOiBjbGFyaWZ5IGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKCkgY29uZGl0aW9ucw0KPiAN
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgODQgKysrKysr
KysrKy0tLS0tLS0tLS0tLQ0KPiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmjCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMyArKy0tDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCA0MyBp
bnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkNCj4gDQoNCg==
