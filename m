Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AhvAV21oGnClwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 22:04:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BA31AF613
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 22:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B22F10E99C;
	Thu, 26 Feb 2026 21:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ASEzHj3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE79010E99C;
 Thu, 26 Feb 2026 21:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772139865; x=1803675865;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8BBb8ffGC+9omccmN0V9CysCbA0a1QdWkcKCocevQxs=;
 b=ASEzHj3Dz/zh/q3l+/w8dxd5N4lCSl42qoQsMjiiFqTCWDiZRjN0N5Qy
 NnWevQ80gKWV9+WsNNmeRYY2mRC0JXapIh+Mk/iIHufpGPAud8ezUydWI
 7o2sWHHoRWbQ6qPsHQ95OaQhOwlfHrleKCgTVqcmgOaW/9yXS3vakS17D
 9DoapFsah5t6rjPaWzi2vtBlouJz067dT4THhycPd4Hae4A46tBA0BIFT
 6W0Exh4r0h/5Z3dEsZhzA6uKeX+RZNuc24grDCVJnsayfWDdsqTv6hITn
 xmRz1GleiIyePyg7E5IfQ7d6CVWD2FB+kP1Jg2Ps3/7EsiNR7KAWkraVC w==;
X-CSE-ConnectionGUID: 4zq521+pSku77hDLdwRb9A==
X-CSE-MsgGUID: biQjVvz3Ss+xxe48VEAZxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="75820010"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="75820010"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 13:04:24 -0800
X-CSE-ConnectionGUID: VDBXDVGNRIyANKv1LXagoA==
X-CSE-MsgGUID: cMKcIir1QR2r/HLNDX7F2A==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 13:04:24 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 13:04:23 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 13:04:23 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 13:04:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S8u/J5h9t2yz8+tz8hMnhqfcE6OT9D+5doLhNA9l4+AQPfEHJv99GrLMIzLtomB7T0MV8e1c67J1F4AiX1dt/2/hQzjRe8ty6/0Fh9TS5TUe5/OqvDMbONXT+eHEqLtiWF04IbKBJxiYoPshCe//GaU93PunQ7LXq6dpKVgqVQXxd5JKP3ApBRBDoQWEivMxlRflfGBJFl+fjGVfS5rSdk1PXIYT769mhzFvyOF64dSm5O/UISC1CRKE9QBgQ43bs04C3O+S7Ed6pO4HOOAnLcfUVlv8bLJDFaSilzW5cbLaTRhdcyytYJvj7Ji/oiJtSq1hKCmMgROHvOrvapeIJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8BBb8ffGC+9omccmN0V9CysCbA0a1QdWkcKCocevQxs=;
 b=oWbYcZ6CaSpnsgLGz8kazlL7m1yG5Wn8sQkx2jpYFR5sfVye3mW85ExncJwKCNoNqhftMBL3EjhdVp94yhy+0xEyCCqu3w2izpfgvygMAzILHStVtTmS/dL3+ZXPE8gjenzZpejYiL9Ikex3nbjZNMy4MOfumWHQpAzYGdNrtoESmPm/d/OVWwZpQklB+QrRgLuprxHITH+UPv+i6TY8feF6HIXHV5xUbIz9ulofgmRB27qo9LwQuK8AUoYBxBnALZ0vgm3qiwXk0U67isle/x3Ne42a+++yNhekDekrJkMFxw/RN9JwawaZ298+Q4saCWFEQVswQ1M70h5vObfiTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7629.namprd11.prod.outlook.com (2603:10b6:8:146::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.14; Thu, 26 Feb 2026 21:04:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 21:04:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, Mark Pearson
 <mpearson-lenovo@squebb.ca>
Subject: RE: [PATCH 2/2] drm/i915/psr: Fix for Panel Replay X granularity DPCD
 register handling
Thread-Topic: [PATCH 2/2] drm/i915/psr: Fix for Panel Replay X granularity
 DPCD register handling
Thread-Index: AQHcpipYizAKeBQzGUGR4ZxLoQUwjbWVel8Q
Date: Thu, 26 Feb 2026 21:04:17 +0000
Message-ID: <DM4PR11MB636061D550891CC8A28B51DCF472A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260225074221.1744330-1-jouni.hogander@intel.com>
 <20260225074221.1744330-2-jouni.hogander@intel.com>
In-Reply-To: <20260225074221.1744330-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7629:EE_
x-ms-office365-filtering-correlation-id: f12bb85c-e4bc-46f8-c925-08de757a9ac6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: EQhPqpbHnzitSMrmc2ln1ONrtW+GkGl9QrkfvAKcMZCDA3eg6Fc9vw46l1ogInC7FyXxvg8gM4Z0HyN/JT+hqthowTOHLVGuZWSIAKQnzHUDIk/9LcmuL2oAlSfWo4zyrJsSt72RNIsk2qZUtTbocCyyh8M6qPLCRI78mH5mWfMwi7rQPtxTQ3FRIW3gkh9lt7RN3kOal2tWyGC/IyZSOOBQaBMw07oUj59nd1AWvKQO186MX1tXLEbGoMFOIXZXjaT5t8ulVZVAcEmt6jygMP6N982sM8b97/myCklZkbCT4haFkffW/3bDQqOEgdHm3BNWEz2K8Bd8RikZ2E7ekOWitFTdO/hb8Wrtsd9fzAQ5RA4hD16CHPryWfUFlkKVbtX2zU0TFvjBn8fbTK0C7MDG4gkm4cAumGPNv+qMZu9ykIRc8YjqgFBqLwkTdmORYdMLn/DfGYy9o1U2eUw++OXhMD/ohymQedaitm8GD53IH1OEAL6m5h0GRY9kCtQxIgtDbtm372zwcAikDBxJmBmwcnDF8oBpgyyLlfviyCr965ncCxC3PEUhDkZnauIG7+ccUL0o4UHeMV0Rx81j4JM2RnyPnYuLEB61xKxYMbQfakutLgmPp4wh9BuIddFg2IAZqVoV4FEHYdQE7va5WsEHhWk7pNBXUTPuoZQObQUEuCuZBKvJIrfMtL1cN944qPwAea0HOcNxSVKH3X6fU9PeDBdEZYxNrHml/BCBFQYBqWNEisZclNQoixzHgppJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHFDcEtUN3hLVVgrdy9Vd2NVd0FWWjN6emcrSmpBMzJScyswR3crT3c5QVI3?=
 =?utf-8?B?SGFzbG1CRTVKNkRUL2dOQW1rRGRkelphQm02d09mL2tDZFdyTU1ySnR0eDhE?=
 =?utf-8?B?UTFudERpZ0FSUHc5elgxbFlVdlJVS1NQbEJZcXB4ZTFkUmo2SjlIa0RnOTNE?=
 =?utf-8?B?UzdhOWFpWEZXSC84cmdLM2kvbHE1YkZqbVNZTTliTGtBbk0yK2ZLaDFwUHhX?=
 =?utf-8?B?UHlBRFo4Sjk4ZGJ4dUlza3o1ZG1XR3lyUEJSNnFvRnhCVTlLUHR3cFNRVXVG?=
 =?utf-8?B?cWdCZjIyL0xzb3g1RFU0L0ZZcVpUMk1DcmRvcXpDb3hBaGg2M2d6M1NwcHN1?=
 =?utf-8?B?REJkNXFqbk1yaHNncWwwc2lxVnNHZDhwakZ3M3BMWk1zNU85WGNoZmJRZDM4?=
 =?utf-8?B?Y1BzTTNIcUFXS044ZHY5Um9yR0lGdThEUHZXQk5ucmR2S0hHT1dRSnNmdC9H?=
 =?utf-8?B?b0gyWC9sRXU4OEFtalJEZzgzU1V2MEtQaXpQSWpBYVkwTnptOFY3TWl2ZUMw?=
 =?utf-8?B?Um1MQ3ZVYW5xTEY3YWVRN2RXUGQxTUFtQnpPamwwRThrdC94dzkzMk9nQzRy?=
 =?utf-8?B?d2lGVHhZNEVKVVJzem5zNUdPQmNKTVR3ZVhtN2dhek5LTUttR3VSK3F6cXdP?=
 =?utf-8?B?Zmc0V1c1by8zVmxvNFIzelRnemp0YTFFUnppcFg4d3ovc01tNy9EVC9EeG8y?=
 =?utf-8?B?cEhIa0NpWUZuMWFqWU5ERjBvQk55bGdSOGpoRU5IYWFCb1BpTGZKNnU2VXI2?=
 =?utf-8?B?WENreFZVcWlYaGQ2ZkovM3N2Tm9PTmI4UjdDOGc5TE9Nc0VmcHpGVkl0RDJn?=
 =?utf-8?B?ckMxLzY0ZnpldzRCdnF6QXN2TzdmYmg0eE0yZEFZTXl6RXBQY0lLM3YzRC8v?=
 =?utf-8?B?OTZwQUJva0ZuSzdGc3kyVWVWS2wwbExmQjErdFk0RlptSG9XcnZHZkhWT1lF?=
 =?utf-8?B?SnlIbng1MEtzUjJBV1YwZ0ZZZ21aMEJkNGN0UFJVVmt5SUhVUTdvbzVJcTgr?=
 =?utf-8?B?SDF6Y0V2U3dwY01sVElNMUVkSDZXb01ldVFDY2I3NmNEOU85RjhHcjcxRlZG?=
 =?utf-8?B?MlY2QUdmdklVWTYyUExGcjBkQ1EzVkJOcTh2WTByd3F4VUl4aVdkTnJzTHlk?=
 =?utf-8?B?Y3RqUWQyNmZiTG5ZUFU2eDBnTVhvR004MGVFNmtFRXBnSm1teHdOcWlWQ1BF?=
 =?utf-8?B?ajJlSW14Yi8rczNxL1JYbFlMQUI4SU9sd0pzRlM4d1RSREYwQnpvZUZ4b09n?=
 =?utf-8?B?bTk3ZFY5TDlKQXJZeVd4N3VIaHhFb1dQcmpONmhZT0JmMjMxaW10MTFybEQv?=
 =?utf-8?B?OCsxS1hpQ0ozcTZPOG9RY0hMZ0xucmhOd2xyV0lCWEZjYTBsSmpvUmFFckgr?=
 =?utf-8?B?UFMzTFFhK0w2bFNoUDdNN1pML2VRbU1CZ1BodkRZWDl0YWwraG0wMERUOTBy?=
 =?utf-8?B?SEdRNVFqOVZOSTFpMjF5WTIrR1VmRzFwdHJZODlTakltV3d5dFAzVllSbi9a?=
 =?utf-8?B?S3lvL1cwdXBSRi9KbUNRQ0N0SXBLd3lVdE9WamtCQUsxUzljZWdYZHRSZjI5?=
 =?utf-8?B?cDFvMmREYktLaUN0ZVh3SDJMZTY4OWVVTHhCY01NNXJtdVFrZi9aQUJFMnc5?=
 =?utf-8?B?bjZaYVdPcVNJSjdlTzU0T2xlaDJocUMvVm01RmppaStob1ZIbFlMbXBGakJl?=
 =?utf-8?B?QnhVTnpnbTcrUHRhY05SWXFoZlovblF0OW42T1BqWk53UkJzR0EzNVpabllQ?=
 =?utf-8?B?eHlONlViR01OYVFOOTllWlhtL2pya3Q0NWcwUExxY0VqeHQ5eEdqNGEvcWky?=
 =?utf-8?B?MjlLWkdtZXJTdGFXSjZ3V2RkMG4wUWhlK1NLZCtHenBSVng0L2JBeDRuZDNZ?=
 =?utf-8?B?R25yM0s1NGlCajMrTWZvcnNrMWhFMWI4LzE1dXR4eUlmVW5LK2pJR1FkNDBq?=
 =?utf-8?B?ejE1RmtjTzhrWFMrQVNaZ29sOThERzRHdmtaamRUZTVtMTBsRHJYbjloZUlk?=
 =?utf-8?B?NnJWOVBOU012eXVuQVVFODRWd2J0N1ppclE3VmlNZVBVUDNVY3ZoTWNweFQ2?=
 =?utf-8?B?SGN1VlMweXZUeTVZR1VaTDVtaUVUa24rMXRIb2U3U0s4ZFNVQkFLNnB6UjhW?=
 =?utf-8?B?VmoxRGZINnZGNzBFbnNLd05FcVVJYjhlMkpwZW9USG5zeFNBZ3krZmRHZ1RS?=
 =?utf-8?B?S2F6WTFNOHl5S0k3d1I2Z1NGa1ZHWUE1NXlzbXlWbWRRUk1CdmNFcDVHYzRi?=
 =?utf-8?B?aFB0QTRSSS9mT3BtcW9aRzdVU1ZkV3djdFdyTUs5b0VkS0pvUXMzKytXSHJC?=
 =?utf-8?B?blByVEhoOUcrY2dWRk00eEd4WUxOamMyaGFtQ1g3SXV5MmVTVkw0UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f12bb85c-e4bc-46f8-c925-08de757a9ac6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 21:04:17.6071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgfWD8OApGDmD42PR9o5awmyk41g/szouf4WQ7bTuzHbemu+TbHQ/dAaq9B9DR1H5fxsh45Cv/hyrgeJgkbPtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 61BA31AF613
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMjUsIDIwMjYgMToxMiBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT47IE1hcmsgUGVhcnNvbiA8bXBlYXJzb24tDQo+IGxlbm92b0BzcXVlYmIuY2E+DQo+IFN1
YmplY3Q6IFtQQVRDSCAyLzJdIGRybS9pOTE1L3BzcjogRml4IGZvciBQYW5lbCBSZXBsYXkgWCBn
cmFudWxhcml0eSBEUENEDQo+IHJlZ2lzdGVyIGhhbmRsaW5nDQo+IA0KPiBEUCBzcGVjaWZpY2F0
aW9uIGlzIHNheWluZyB2YWx1ZSAweGZmIDB4ZmYgaW4gUEFORUwgUkVQTEFZIFNFTEVDVElWRQ0K
PiBVUERBVEUgWCBHUkFOVUxBUklUWSBDQVBBQklMSVRZIHJlZ2lzdGVycyAoMHhiMiBhbmQgMHhi
MykgbWVhbnMgZnVsbC0NCj4gbGluZSBncmFudWxhcml0eS4gVGFrZSB0aGlzIGludG8gYWNjb3Vu
dCB3aGVuIGhhbmRsaW5nIFBhbmVsIFJlcGxheSBYIGdyYW51bGFyaXR5DQo+IGluZm9ybWVkIGJ5
IHRoZSBwYW5lbC4NCg0KQ2hhbmdlIGxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBGaXhlczogMWNjODU0NjQ3NDUw
ICgiZHJtL2k5MTUvcHNyOiBVc2UgU1UgZ3JhbnVsYXJpdHkgaW5mb3JtYXRpb24gYXZhaWxhYmxl
IGluDQo+IGludGVsX2Nvbm5lY3RvciIpDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvNzI4NA0KPiBUZXN0ZWQtYnk6IE1hcmsg
UGVhcnNvbiA8bXBlYXJzb24tbGVub3ZvQHNxdWViYi5jYT4NCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrKysrLS0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDViZWEyZWRh
NzQ0Yi4uOTI5NmNhM2E0ZmY0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gQEAgLTEzMDYsOSArMTMwNiwxNCBAQCBzdGF0aWMgYm9vbCBwc3IyX2dy
YW51bGFyaXR5X2NoZWNrKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0K
PiAgCXUxNiBzaW5rX3lfZ3JhbnVsYXJpdHkgPSBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5
ID8NCj4gIAkJY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5zdV95X2dyYW51bGFyaXR5
IDoNCj4gIAkJY29ubmVjdG9yLT5kcC5wc3JfY2Fwcy5zdV95X2dyYW51bGFyaXR5Ow0KPiAtCXUx
NiBzaW5rX3dfZ3JhbnVsYXJpdHkgPSAgY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSA/DQo+
IC0JCWNvbm5lY3Rvci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMuc3Vfd19ncmFudWxhcml0eSA6DQo+
IC0JCWNvbm5lY3Rvci0+ZHAucHNyX2NhcHMuc3Vfd19ncmFudWxhcml0eTsNCj4gKwl1MTYgc2lu
a193X2dyYW51bGFyaXR5Ow0KPiArDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBs
YXkpDQo+ICsJCXNpbmtfd19ncmFudWxhcml0eSA9IGNvbm5lY3Rvci0NCj4gPmRwLnBhbmVsX3Jl
cGxheV9jYXBzLnN1X3dfZ3JhbnVsYXJpdHkgPT0NCj4gKwkJCURQX1BBTkVMX1JFUExBWV9GVUxM
X0xJTkVfR1JBTlVMQVJJVFkgPw0KPiArCQkJY3J0Y19oZGlzcGxheSA6IGNvbm5lY3Rvci0NCj4g
PmRwLnBhbmVsX3JlcGxheV9jYXBzLnN1X3dfZ3JhbnVsYXJpdHk7DQo+ICsJZWxzZQ0KPiArCQlz
aW5rX3dfZ3JhbnVsYXJpdHkgPSBjb25uZWN0b3ItPmRwLnBzcl9jYXBzLnN1X3dfZ3JhbnVsYXJp
dHk7DQo+IA0KPiAgCS8qIFBTUjIgSFcgb25seSBzZW5kIGZ1bGwgbGluZXMgc28gd2Ugb25seSBu
ZWVkIHRvIHZhbGlkYXRlIHRoZSB3aWR0aCAqLw0KPiAgCWlmIChjcnRjX2hkaXNwbGF5ICUgc2lu
a193X2dyYW51bGFyaXR5KQ0KPiAtLQ0KPiAyLjQzLjANCg0K
