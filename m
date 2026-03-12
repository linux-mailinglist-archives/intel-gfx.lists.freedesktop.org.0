Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMy2L/opsmleJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:50:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF1426C73B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5297310E93E;
	Thu, 12 Mar 2026 02:50:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVXHJC1e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE83B10E93E;
 Thu, 12 Mar 2026 02:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773283832; x=1804819832;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JvD94Q/f2NoGBjP0VfXwP1EVojfo/AZHZhfxaS+OSK8=;
 b=iVXHJC1eCicFIPTaaVY+daLCeixuZCFVKfdYXy8YHzHMxAy9xx67O2zn
 SRzREAEV5Qe9hr5GozucRWFeQVnZ2iX66rqr4h36Riwz51gCrEct5Wgkf
 h1BrPxyOWgNrOepOokDllsNx1oLglVSPPB0QHPfQ8QtZSu1hTBKpdP+z5
 EKAl1ixmvBIVJHTCdJd4qfWenJudc1UVGJ/9jDRNxYg0os8t3d0gL5eTQ
 M9h6WEbxlrEwKB29Jhexnx/L/UgvqsiRzSN6IXYtTr4A3HGYDfl0a+wkR
 bL/NZ50lcM7Dlixmt3J0X0QPDEeoi5ojePXj7BzCYREvzbRqIQUNjJaTc w==;
X-CSE-ConnectionGUID: QjZYkPXASn2cv5tNbu7ISA==
X-CSE-MsgGUID: R2epZ+EGQp2OeXxDufiZyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74557257"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74557257"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:50:31 -0700
X-CSE-ConnectionGUID: P307bX1nSzuFW2vqqLdDow==
X-CSE-MsgGUID: kJyWc0rORpu5JLWDTfsYFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="224813189"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:50:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:50:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 19:50:30 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gJ4wtLWfJdaa706Gik8j/y08Nz/vJyrds8fQ9JJP4qXUP+pDfvjEIoLpxrZ3g0hOk0fnnMVky8O1/5/Muoj927brsM7kCrSrtbjCTaNxpVWnO5vGkgIEe2BkHUUCRRe5q4peTpXoup4fk2Aw8aygozSyX5rOjPUnefNX6tvmoDzXtVtFGJWKVVxEcexMaKISiGqYZaIhQ9hi4S/k5EFVgM31SkB+IChocn5uDEDM/K4cN34J0o4i2bVhnVsvZZFTZS3PBzsGC4CkcYQytl3tSZ6vFwcUDevL+662ctDInARbh1or8YEiy/NsfyvvWf5tqtQcnq+FtpCLsrjvikHHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JvD94Q/f2NoGBjP0VfXwP1EVojfo/AZHZhfxaS+OSK8=;
 b=dkpEIMkDqw7q1BR0ZT44aRU1X9G043pKlGeRUW9PSYm+S1e0zL1ebRT/7b8SxrdYVG/2aG11igvsq5okmBEXxH5d7C/oKvAh3r/5dWyKyaC7nH6chAygXjlvqpu0kDPg++h623usdV24pJpcx9Pa8SRbkBQ2SG4an5auYSWQyHNdwCA4gm9e6b16YIEPH9650mb1ZVU/9HcZ38b2/UDlP0sWWyz8BjANIGQyh6Eljd+rz07pC8IFe59SzP4qEGfHN6i69QQKPUbVO9Zzk4ervzdPprTN0PdUELh/bVeyE3Gq17Saq387pQ+0tvgf7R4sCNtmj/yjarHVPN4G5gXCKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB7208.namprd11.prod.outlook.com
 (2603:10b6:8:110::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 02:50:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 02:50:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 04/24] drm/i915/lt_phy: Refactor LT PHY PLL handling to
 use explicit PLL state
Thread-Topic: [PATCH v3 04/24] drm/i915/lt_phy: Refactor LT PHY PLL handling
 to use explicit PLL state
Thread-Index: AQHcsWIVSj671Lh4wUOPPAgIg5ASn7WqMqKw
Date: Thu, 12 Mar 2026 02:50:25 +0000
Message-ID: <DM3PPF208195D8D4493A4265E85F59C3AB7E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <20260311141905.2526418-5-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-5-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB7208:EE_
x-ms-office365-filtering-correlation-id: e3a16bab-323e-4146-d8d0-08de7fe21d17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: IQRKoHuux41dZ+q1F5J0qHK+WPWUDL90w3IMvAyFBNPx6ceqBGoB7UZtCpRLkXX2fSo3x2RPWqgxdcPf6VhqfXLiK+Ym6guY4raDe1Yn3LYWsObdVRJigF46zE3pFwmV1q4Uqjv/eV4Ymv0w2rS9IXKJh2jsDYsptzHEBbvhi67s+qpCUD08nWRxkdvcTBXu1BXqYZ1SKMQouRVVYYARPs8+V1hBk8QzskPhbcXckJgpfIDuLN3kyVqVD62E5yPtmCu9heS3ymh8cF6oPNlSh8LoZP4kvR+SeUFzf9TVV8wyUL5Rla5W2UR8ivXZIcIeF+jxdknWrZMVPf63w2NPkd9ADRsHmEbl7sQdMZDATy6FFpRkoehaYGjJ5cEZMVb401f3MY6ou5RMjwWtace9XN8bhhIpe8wEmoP75KxwfotEfAzbZ1BWzhaKIM+3beCHnMfngyITWIc+h/KJK7FHdgnyQZ0TsZwvKNueJgDjvN1vE28+xSVE2bDGmSPGmiU+ca5QDde4aOueaMY+tjKECPZtFMKNoE+lTHroF9lsgz2vKMktW6+iJ/vQOxUbr9wPqTgTMlvZjOsSR8zBSpv2YRD1o2ICsFTEEJ6rI79zAHEFJblFspp4Zwpp6Z57R0cFqkxr2lw9+lzNXlMDS7xsBXE39DMrRT67y8Gr2udA+XDGWggOGLoeI0P5qz4cCYrhXGcPiCdVJdvYR90o9EEP+gdVHg0gSIjSXRzAlmfP+Z8lQAGE7cIzza1Zxj07PGk4KkOxWoMmPzn2x6I8o5XbDcK9aAx9xIwOajd9kA+I0WM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmF5eHZMWndNL3NrVTdXbkRxRzFHRFcrSUhGaVo3SWxWZGNHWjExaXZuY1Ra?=
 =?utf-8?B?NTVSVG1MVGcrRnoyckFQeFYvQ3JTZzFncjJCUU92QVZyYlJOejY3VHlIa1Er?=
 =?utf-8?B?c2k3eEJ0NDg5UW95WVFldFNNUUY1RmpHVkw2MnRZUThuZWpmSUZpZVVxQVBu?=
 =?utf-8?B?M21xdHlSTlFIdnlFVEczWU8wR0o1MTFjRG1sY2hVMENJR0REcE16R2ZIdE91?=
 =?utf-8?B?MXlpS0drSGdOcjhUUDVDczJ4M29iRUhFMnRWQlc5NE9EZ2pCN0p4dG1mZjgz?=
 =?utf-8?B?ZlVXZDIwcE1ZS3hXQkk0WU81NzNWODdROXBqQlUzd1BsRlFHUDFTcGo1c1hI?=
 =?utf-8?B?Tm15SEtqdi9Vclg1RWtqOWRnTFQ4YmFxVlhVSWttRW1SdU5ReFE1MklUZXJI?=
 =?utf-8?B?Z0p4Vy90YTcxbnU4T2pxdC9EejlWUGdkOE04WVZhUGJjclljSU53NXIydEh5?=
 =?utf-8?B?Y1loT0Q0ZGt5ZW9HRWxLVWJ1U3NhcnZ6Y2JQdFA2Z1NHajB1bTZhRjZPVDJw?=
 =?utf-8?B?MFIyVXpDK2l0VmFPell2TStPSEs1N0hnYTF5dStDQnRTaFVZZFVVWjd3RnBZ?=
 =?utf-8?B?RWMvS05CVHZxeTZ2cXRqRlZPVVZyM2VPaEdaMnN6NmMwVzVTTGdhWUhndi9Y?=
 =?utf-8?B?YW9hcVFqbk8yZ3lxdlp6dWMvWEFNYSthdUVnbG0ra2VuNnZwZG8zdUVWRG1j?=
 =?utf-8?B?eHFqc1BQN01EVmNKeVZYMUsyUVBpRmVxa3luQjRyeDlTcFViTUgrOFNob1Jo?=
 =?utf-8?B?N0NVVHJSNFB1YXlLMlhmUWFPTkpjakVsWmxrZldrRFNka1ZXcGpNNFQvSG5Q?=
 =?utf-8?B?SmpadlFRRVNPMVMxY2NpRXRkeU84QjMzZlEzakhpbFVESzZPczM3cFFyNGQw?=
 =?utf-8?B?STBFVHBDL29OR2ZrNi9BUGFtSnJDKzJXNmt5U3JteFBNbE40dVJmOHM4WjJn?=
 =?utf-8?B?TzRCRHRjdFhpSzRUdXI3TVR5WjJwa0pJSCswWXA0ZWZlTXR5NUlpRDM3dFFp?=
 =?utf-8?B?c1YwWVY3V0RPd3FPdWt5a0F2TjBLenJvR3FRZHh6a1RCVXk0RkRaejZGSWtI?=
 =?utf-8?B?YVFHcU12aFJPYlZiN2VCdis4bzlZbkNxSEFmcDlRUFNCMW5CazlUZHE1dlhi?=
 =?utf-8?B?NGNBMDZ0Tm1FTVR1YkJZanZPQkhxMnlINXoraHU2Y1BPekM1b25YU1dzZHJq?=
 =?utf-8?B?b21NdWxUTzlTY3pzSEdjbUt4c081N05LcUR4MzFNblFCMkcrTW9uOFZ6dEha?=
 =?utf-8?B?N2ptNDN2QlJHbld4ZklJRWlqTFRpUzg1WnBVL25PNityVksxU2xCYWQrczFv?=
 =?utf-8?B?Z2lXV3FiOWZOVi94QmpoYys3VzM3RnV4Z1M2WGJkMVo5SmMwcVdZeVVweW41?=
 =?utf-8?B?QkJQWUdmVE45aEtEemN4SThlVEYzK252di9QQW1ORzJHNmdRR3h0bW5rOCs5?=
 =?utf-8?B?dUh0UHVTbUdnVWE5N1J5UUtTSTFVbVZicHdQSjlQT2Y3eFdJU053czZxM2VP?=
 =?utf-8?B?UTZKR0FNcmlaT1NmWFdxL1hJdDg0RnpORGR6TU0rRjA0empsTkw5Y3hhYjZR?=
 =?utf-8?B?UERYVUU3VndaZlVBeEp0bzNiT0QvWDlnOTBYdFlYZjVGYWwxWVVTZVFEVmQ2?=
 =?utf-8?B?OXVTY1RwTkIyemtyVXFyTmgwL3BXV3RjT3VaQXB6K2dXdjh1UzN6SG50bXFZ?=
 =?utf-8?B?dDY0UURaUVpvMjhRVVR4VnRUWW9tUWxqaTAyWEppYmt5OGhOeWR6aG1QcFVz?=
 =?utf-8?B?MG80ck05eEZEVTRhYXoxaG90bUVlbXByQVJmMXlqY1hpbFVMM215aXlLRjVr?=
 =?utf-8?B?OVN2dkxLUUkvOU5FbGQxRDBvcUg4NWtZV1RvSVZPZjRKdzFHWWtZa1J4YU0x?=
 =?utf-8?B?bTA0c0ZpQ0NHd3dBUnluNzBHeXJoRWFtanRGblF0c2IyaWZla3lqNEZFTUpk?=
 =?utf-8?B?Ykl5N0JPZWdQTUp2NlY1Yk1NM0NaSUNIS0IzWmlwK1VkMEdXSGt4OFZPeDF3?=
 =?utf-8?B?OWQ4WHlwYmoxb0xxc2tMWnlQRTg4NWZMTkNlcGhiUU5kKzNZdU11c0lOL0VX?=
 =?utf-8?B?Tm54TG1JVkZISUdnTVRzRkFwU3cxblFSL3pybjJxcUJROVBybXNvMkxhYjFL?=
 =?utf-8?B?SElZVUZMbko0bzFIYS9MLzUvaEl4cjBEaVBVcTZ3TEZ0OTQ0YjNMY01JRlg0?=
 =?utf-8?B?N0o3SjB3WWtLTHkxZ1BUQjRTeWFWT0xQSFZPbzcwMVJKRHlycDJSV0h0enNT?=
 =?utf-8?B?SVkrY3JNd2VxUUxHZ1RUZkpJemROZFRGOTltT01yTGl0QlR0WEFEZ2VyVUhW?=
 =?utf-8?B?ampZWGtEZnBmczZkc2lxcGg3SjcrajFGT045cCtPSVp3dEZJU0NrUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iic02wMS382oz8KNdtMXVbYzpNeNM+Mz1i77pxV3SyG1nvIC2rI59PysgJoXFQ3MnN5FbA+EenkuWSot6Yc7gHSemWkAlYgWDsTZBTRo0T5ustumEGRIhcrhwP4OHJ349zOyjaI0G3GVlHhYAFHAerAqr3O6ya4ivWPWs15AhzbsXoEt88sSjtbjlTR9z8G6NKIaWcwHRkXi2KEcicjCfC3BRDUpq8TO6Ipgoy/o/HOh8/je3nTswkG1zUmB2us58bCUUZzxL0OHX+P6a8turQl6ecLpEbQ2B7AiHDnIxs6Jz/FC47O4PKyuN1vX3WK6iqqSXfSK+SHT6xZROFej/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a16bab-323e-4146-d8d0-08de7fe21d17
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 02:50:26.0076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlR9UDHN74dO3sqDsDSjYFOxLXn+qbSddfbXnMRpwTz+yYHETG5/p5UCnSE/GeT0/5tfhVALUBjw6LtqVD5X+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7208
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1BF1426C73B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDQvMjRdIGRybS9pOTE1L2x0X3BoeTogUmVmYWN0b3IgTFQg
UEhZIFBMTCBoYW5kbGluZyB0bw0KPiB1c2UgZXhwbGljaXQgUExMIHN0YXRlDQo+IA0KPiBUaGUg
TFQgUEhZIGltcGxlbWVudGF0aW9uIGN1cnJlbnRseSBwdWxscyBQTEwgYW5kIHBvcnRfY2xvY2sg
aW5mb3JtYXRpb24NCj4gZGlyZWN0bHkgZnJvbSB0aGUgQ1JUQyBzdGF0ZS4gVGhpcyB0aWVzIHRo
ZSBQSFkgcHJvZ3JhbW1pbmcgbG9naWMgdG9vIHRpZ2h0bHkNCj4gdG8gdGhlIENSVEMgc3RhdGUg
YW5kIG1ha2VzIGl0IGhhcmRlciB0byBjbGVhcmx5IGV4cHJlc3MgdGhlIFBIWeKAmXMgb3duIFBM
TA0KPiBjb25maWd1cmF0aW9uLg0KPiANCj4gSW50cm9kdWNlIGFuIGV4cGxpY2l0ICJzdHJ1Y3Qg
aW50ZWxfbHRfcGh5X3BsbF9zdGF0ZSIgYXJndW1lbnQgZm9yIHRoZSBQSFkNCj4gZnVuY3Rpb25z
IGFuZCB1cGRhdGUgY2FsbGVycyBhY2NvcmRpbmdseS4NCj4gDQo+IE5vIGZ1bmN0aW9uYWwgY2hh
bmdlIGlzIGludGVuZGVkIOKAlCB0aGlzIGlzIGEgcHJlcGFyYXRvcnkgY2xlYW51cCBmb3IgdG8g
YnJpbmcNCj4gTFQgUEhZIFBMTCBoYW5kbGluZyBhcyBwYXJ0IG9mIFBMTCBmcmFtZXdvcmsuDQo+
IA0KPiB2MjogIERQLCBIRE1JIDIuMCwgYW5kIEhETUkgRlJMIG1vZGVzIGFyZSBwb3J0IG9mIHRo
ZSBWRFIgY29uZmlndXJhdGlvbiAwDQo+ICAgICByZWdpc3Rlci4gVGhlc2UgbW9kZXMgYXJlIGRl
ZmluZWQgYnkgYml0cyAyOjAuIERlY29kZSB0aGVzZSB0bw0KPiAgICAgZGlmZmVyZW50aWF0ZSBE
UCBhbmQgSERNSSBtb2RlcyB3aGVuIHByb2dyYW1taW5nIFBMTCdzLiAoSW1yZSwgU3VyYWopDQo+
IHYzOiBQYXNzIHBvcnRfY2xvY2sgYXMgYXJndW1lbnQgaW5zdGVhZCBvZiByZWNhbGN1bGF0aW5n
IGl0IChTdXJhaikNCj4gDQo+IEJTcGVjOiA3NDQ5MjENCj4gU2lnbmVkLW9mZi1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jIHwgNjYgKysrKysrKysrKysrKystLS0tLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHku
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4gaW5k
ZXggZTFjOTVmNThiNmFlLi43YTY4NDY1YTk4MDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiBAQCAtMzIsNiArMzIsNyBAQA0KPiAgCQkJ
CQkgSU5URUxfTFRfUEhZX0xBTkUwKQ0KPiAgI2RlZmluZSBNT0RFX0RQCQkJCTMNCj4gICNkZWZp
bmUgTU9ERV9IRE1JXzIwCQkJNA0KPiArI2RlZmluZSBNT0RFX0hETUlfRlJMCQkJNQ0KPiAgI2Rl
ZmluZSBRMzJfVE9fSU5UKHgpCSgoeCkgPj4gMzIpDQo+ICAjZGVmaW5lIFEzMl9UT19GUkFDKHgp
CSgoeCkgJiAweEZGRkZGRkZGKQ0KPiAgI2RlZmluZSBEQ09fTUlOX0ZSRVFfTUhaCTExODUwDQo+
IEBAIC0xMTc2LDkgKzExNzcsMzAgQEAgaW50ZWxfbHRfcGh5X2xhbmVfcmVzZXQoc3RydWN0IGlu
dGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJaW50ZWxfZGVfcm13KGRpc3BsYXksIFhFTFBE
UF9QT1JUX0JVRl9DVEwyKGRpc3BsYXksIHBvcnQpLA0KPiBsYW5lX3BoeV9wdWxzZV9zdGF0dXMs
IDApOyAgfQ0KPiANCj4gK3N0YXRpYyBib29sIGludGVsX2x0X3BoeV9pc19oZG1pKGNvbnN0IHN0
cnVjdCBpbnRlbF9sdF9waHlfcGxsX3N0YXRlDQo+ICsqbHRwbGwpIHsNCj4gKwl1OCBtb2RlID0N
Cj4gUkVHX0ZJRUxEX0dFVDgoTFRfUEhZX1ZEUl9NT0RFX0VOQ09ESU5HX01BU0ssDQo+ICtsdHBs
bC0+Y29uZmlnWzBdKTsNCj4gKw0KPiArCWlmIChtb2RlID09IE1PREVfSERNSV8yMCB8fCBtb2Rl
ID09IE1PREVfSERNSV9GUkwpDQo+ICsJCXJldHVybiB0cnVlOw0KPiArDQo+ICsJcmV0dXJuIGZh
bHNlOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgYm9vbCBpbnRlbF9sdF9waHlfaXNfZHAoY29uc3Qg
c3RydWN0IGludGVsX2x0X3BoeV9wbGxfc3RhdGUNCj4gKypsdHBsbCkgew0KPiArCXU4IG1vZGUg
PQ0KPiBSRUdfRklFTERfR0VUOChMVF9QSFlfVkRSX01PREVfRU5DT0RJTkdfTUFTSywNCj4gK2x0
cGxsLT5jb25maWdbMF0pOw0KPiArDQo+ICsJaWYgKG1vZGUgPT0gTU9ERV9EUCkNCj4gKwkJcmV0
dXJuIHRydWU7DQo+ICsNCj4gKwlyZXR1cm4gZmFsc2U7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2
b2lkDQo+ICBpbnRlbF9sdF9waHlfcHJvZ3JhbV9wb3J0X2Nsb2NrX2N0bChzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gLQkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9sdF9waHlfcGxs
X3N0YXRlICpsdHBsbCwNCj4gKwkJCQkgICAgaW50IHBvcnRfY2xvY2ssDQo+ICAJCQkJICAgIGJv
b2wgbGFuZV9yZXZlcnNhbCkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7IEBAIC0NCj4gMTE5NSwxNyArMTIxNywxNiBA
QCBpbnRlbF9sdF9waHlfcHJvZ3JhbV9wb3J0X2Nsb2NrX2N0bChzdHJ1Y3QNCj4gaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gIAkgKiBidXQgc2luY2UgdGhlIHJlZ2lzdGVyIGJpdHMgc3RpbGwg
cmVtYWluIHRoZSBzYW1lIHdlIHVzZQ0KPiAgCSAqIHRoZSBzYW1lIGRlZmluaXRpb24NCj4gIAkg
Ki8NCj4gLQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRf
SERNSSkgJiYNCj4gLQkgICAgaW50ZWxfaGRtaV9pc19mcmwoY3J0Y19zdGF0ZS0+cG9ydF9jbG9j
aykpDQo+ICsJaWYgKGludGVsX2x0X3BoeV9pc19oZG1pKGx0cGxsKSAmJiBpbnRlbF9oZG1pX2lz
X2ZybChwb3J0X2Nsb2NrKSkNCj4gIAkJdmFsIHw9IFhFTFBEUF9ERElfQ0xPQ0tfU0VMRUNUX1BS
RVAoZGlzcGxheSwNCj4gWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfRElWMThDTEspOw0KPiAgCWVs
c2UNCj4gIAkJdmFsIHw9IFhFTFBEUF9ERElfQ0xPQ0tfU0VMRUNUX1BSRVAoZGlzcGxheSwNCj4g
WEVMUERQX0RESV9DTE9DS19TRUxFQ1RfTUFYUENMSyk7DQo+IA0KPiAgCSAvKiBEUDIuMCAxMEcg
YW5kIDIwRyByYXRlcyBlbmFibGUgTVBMTEEqLw0KPiAtCWlmIChjcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrID09IDEwMDAwMDAgfHwgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9PQ0KPiAyMDAwMDAwKQ0K
PiArCWlmIChwb3J0X2Nsb2NrID09IDEwMDAwMDAgfHwgcG9ydF9jbG9jayA9PSAyMDAwMDAwKQ0K
PiAgCQl2YWwgfD0gWEVMUERQX1NTQ19FTkFCTEVfUExMQTsNCj4gIAllbHNlDQo+IC0JCXZhbCB8
PSBjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLmx0cGxsLnNzY19lbmFibGVkID8NCj4gWEVMUERQ
X1NTQ19FTkFCTEVfUExMQiA6IDA7DQo+ICsJCXZhbCB8PSBsdHBsbC0+c3NjX2VuYWJsZWQgPyBY
RUxQRFBfU1NDX0VOQUJMRV9QTExCIDogMDsNCj4gDQo+ICAJaW50ZWxfZGVfcm13KGRpc3BsYXks
IFhFTFBEUF9QT1JUX0NMT0NLX0NUTChkaXNwbGF5LCBlbmNvZGVyLQ0KPiA+cG9ydCksDQo+ICAJ
CSAgICAgWEVMUERQX0xBTkUxX1BIWV9DTE9DS19TRUxFQ1QgfA0KPiBYRUxQRFBfRk9SV0FSRF9D
TE9DS19VTkdBVEUgfCBAQCAtMTI0OCw3ICsxMjY5LDggQEAgc3RhdGljIHUzMg0KPiBpbnRlbF9s
dF9waHlfZ2V0X2RwX2Nsb2NrKHU4IHJhdGUpDQo+IA0KPiAgc3RhdGljIGJvb2wNCj4gIGludGVs
X2x0X3BoeV9jb25maWdfY2hhbmdlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4g
LQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gKwkJ
CSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfbHRfcGh5X3BsbF9zdGF0ZSAqbHRwbGwsDQo+ICsJCQkg
ICAgdTMyIHBvcnRfY2xvY2spDQo+ICB7DQo+ICAJdTggdmFsLCByYXRlOw0KPiAgCXUzMiBjbG9j
azsNCj4gQEAgLTEyNjIsOSArMTI4NCw5IEBAIGludGVsX2x0X3BoeV9jb25maWdfY2hhbmdlZChz
dHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkgKiB1c2luZyAxLjYyIEdicHMg
Y2xvY2sgc2luY2UgUEhZIFBMTCBkZWZhdWx0cyB0byB0aGF0DQo+ICAJICogb3RoZXJ3aXNlIHdl
IGFsd2F5cyBuZWVkIHRvIHJlY29uZmlndXJlIGl0Lg0KPiAgCSAqLw0KPiAtCWlmIChpbnRlbF9j
cnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpKSB7DQo+ICsJaWYgKGludGVsX2x0X3BoeV9p
c19kcChsdHBsbCkpIHsNCj4gIAkJY2xvY2sgPSBpbnRlbF9sdF9waHlfZ2V0X2RwX2Nsb2NrKHJh
dGUpOw0KPiAtCQlpZiAoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9PSAxNjIwMDAwICYmIGNydGNf
c3RhdGUtDQo+ID5wb3J0X2Nsb2NrID09IGNsb2NrKQ0KPiArCQlpZiAocG9ydF9jbG9jayA9PSAx
NjIwMDAwICYmIHBvcnRfY2xvY2sgPT0gY2xvY2spDQo+ICAJCQlyZXR1cm4gZmFsc2U7DQo+ICAJ
fQ0KPiANCj4gQEAgLTE3NTksNDEgKzE3ODEsNDEgQEAgaW50ZWxfbHRfcGh5X3BsbF9jYWxjX3N0
YXRlKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiANCj4gIHN0YXRp
YyB2b2lkDQo+ICBpbnRlbF9sdF9waHlfcHJvZ3JhbV9wbGwoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsDQo+IC0JCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+ICsJCQkgY29uc3Qgc3RydWN0IGludGVsX2x0X3BoeV9wbGxfc3RhdGUgKmx0cGxsKQ0K
PiAgew0KPiAgCXU4IG93bmVkX2xhbmVfbWFzayA9DQo+IGludGVsX2x0X3BoeV9nZXRfb3duZWRf
bGFuZV9tYXNrKGVuY29kZXIpOw0KPiAgCWludCBpLCBqLCBrOw0KPiANCj4gIAlpbnRlbF9sdF9w
aHlfd3JpdGUoZW5jb2Rlciwgb3duZWRfbGFuZV9tYXNrLA0KPiBMVF9QSFlfVkRSXzBfQ09ORklH
LA0KPiAtCQkJICAgY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5sdHBsbC5jb25maWdbMF0sDQo+
IE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+ICsJCQkgICBsdHBsbC0+Y29uZmlnWzBdLCBNQl9XUklU
RV9DT01NSVRURUQpOw0KPiAgCWludGVsX2x0X3BoeV93cml0ZShlbmNvZGVyLCBJTlRFTF9MVF9Q
SFlfTEFORTAsDQo+IExUX1BIWV9WRFJfMV9DT05GSUcsDQo+IC0JCQkgICBjcnRjX3N0YXRlLT5k
cGxsX2h3X3N0YXRlLmx0cGxsLmNvbmZpZ1sxXSwNCj4gTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4g
KwkJCSAgIGx0cGxsLT5jb25maWdbMV0sIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+ICAJaW50ZWxf
bHRfcGh5X3dyaXRlKGVuY29kZXIsIG93bmVkX2xhbmVfbWFzaywNCj4gTFRfUEhZX1ZEUl8yX0NP
TkZJRywNCj4gLQkJCSAgIGNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUubHRwbGwuY29uZmlnWzJd
LA0KPiBNQl9XUklURV9DT01NSVRURUQpOw0KPiArCQkJICAgbHRwbGwtPmNvbmZpZ1syXSwgTUJf
V1JJVEVfQ09NTUlUVEVEKTsNCj4gDQo+ICAJZm9yIChpID0gMDsgaSA8PSAxMjsgaSsrKSB7DQo+
ICAJCWludGVsX2x0X3BoeV93cml0ZShlbmNvZGVyLCBJTlRFTF9MVF9QSFlfTEFORTAsDQo+IExU
X1BIWV9WRFJfWF9BRERSX01TQihpKSwNCj4gLQkJCQkgICBjcnRjX3N0YXRlLT5kcGxsX2h3X3N0
YXRlLmx0cGxsLmFkZHJfbXNiW2ldLA0KPiArCQkJCSAgIGx0cGxsLT5hZGRyX21zYltpXSwNCj4g
IAkJCQkgICBNQl9XUklURV9DT01NSVRURUQpOw0KPiAgCQlpbnRlbF9sdF9waHlfd3JpdGUoZW5j
b2RlciwgSU5URUxfTFRfUEhZX0xBTkUwLA0KPiBMVF9QSFlfVkRSX1hfQUREUl9MU0IoaSksDQo+
IC0JCQkJICAgY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5sdHBsbC5hZGRyX2xzYltpXSwNCj4g
KwkJCQkgICBsdHBsbC0+YWRkcl9sc2JbaV0sDQo+ICAJCQkJICAgTUJfV1JJVEVfQ09NTUlUVEVE
KTsNCj4gDQo+ICAJCWZvciAoaiA9IDMsIGsgPSAwOyBqID49IDA7IGotLSwgaysrKQ0KPiAgCQkJ
aW50ZWxfbHRfcGh5X3dyaXRlKGVuY29kZXIsIElOVEVMX0xUX1BIWV9MQU5FMCwNCj4gIAkJCQkJ
ICAgTFRfUEhZX1ZEUl9YX0RBVEFZKGksIGopLA0KPiAtCQkJCQkgICBjcnRjX3N0YXRlLQ0KPiA+
ZHBsbF9od19zdGF0ZS5sdHBsbC5kYXRhW2ldW2tdLA0KPiArCQkJCQkgICBsdHBsbC0+ZGF0YVtp
XVtrXSwNCj4gIAkJCQkJICAgTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gIAl9DQo+ICB9DQo+IA0K
PiAgc3RhdGljIHZvaWQNCj4gIGludGVsX2x0X3BoeV9lbmFibGVfZGlzYWJsZV90eChzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gLQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
bHRfcGh5X3BsbF9zdGF0ZSAqbHRwbGwsDQo+ICsJCQkgICAgICAgdTggbGFuZV9jb3VudCkNCj4g
IHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdf
cG9ydChlbmNvZGVyKTsNCj4gIAlib29sIGxhbmVfcmV2ZXJzYWwgPSBkaWdfcG9ydC0+bGFuZV9y
ZXZlcnNhbDsNCj4gLQl1OCBsYW5lX2NvdW50ID0gY3J0Y19zdGF0ZS0+bGFuZV9jb3VudDsNCj4g
IAlib29sIGlzX2RwX2FsdCA9DQo+ICAJCWludGVsX3RjX3BvcnRfaW5fZHBfYWx0X21vZGUoZGln
X3BvcnQpOw0KPiAgCWVudW0gaW50ZWxfdGNfcGluX2Fzc2lnbm1lbnQgdGNfcGluID0NCj4gQEAg
LTE4OTUsNyArMTkxNyw4IEBAIHZvaWQgaW50ZWxfbHRfcGh5X3BsbF9lbmFibGUoc3RydWN0IGlu
dGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJaW50ZWxfbHRfcGh5X2xhbmVfcmVzZXQoZW5j
b2RlciwgY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7DQo+IA0KPiAgCS8qIDIuIFByb2dyYW0gUE9S
VF9DTE9DS19DVEwgcmVnaXN0ZXIgdG8gY29uZmlndXJlIGNsb2NrIG11eGVzLA0KPiBnYXRpbmcs
IGFuZCBTU0MuICovDQo+IC0JaW50ZWxfbHRfcGh5X3Byb2dyYW1fcG9ydF9jbG9ja19jdGwoZW5j
b2RlciwgY3J0Y19zdGF0ZSwNCj4gbGFuZV9yZXZlcnNhbCk7DQo+ICsJaW50ZWxfbHRfcGh5X3By
b2dyYW1fcG9ydF9jbG9ja19jdGwoZW5jb2RlciwgJmNydGNfc3RhdGUtDQo+ID5kcGxsX2h3X3N0
YXRlLmx0cGxsLA0KPiArCQkJCQkgICAgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywNCj4gbGFuZV9y
ZXZlcnNhbCk7DQo+IA0KPiAgCS8qIDMuIENoYW5nZSBvd25lZCBQSFkgbGFuZXMgcG93ZXIgdG8g
UmVhZHkgc3RhdGUuICovDQo+ICAJaW50ZWxfbHRfcGh5X3Bvd2VyZG93bl9jaGFuZ2Vfc2VxdWVu
Y2UoZW5jb2RlciwNCj4gb3duZWRfbGFuZV9tYXNrLCBAQCAtMTkwNSwxMiArMTkyOCwxMiBAQCB2
b2lkDQo+IGludGVsX2x0X3BoeV9wbGxfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLA0KPiAgCSAqIDQuIFJlYWQgdGhlIFBIWSBtZXNzYWdlIGJ1cyBWRFIgcmVnaXN0ZXIgUEhZ
X1ZEUl8wX0NvbmZpZw0KPiBjaGVjayBlbmFibGVkIFBMTCB0eXBlLA0KPiAgCSAqIGVuY29kZWQg
cmF0ZSBhbmQgZW5jb2RlZCBtb2RlLg0KPiAgCSAqLw0KPiAtCWlmIChpbnRlbF9sdF9waHlfY29u
ZmlnX2NoYW5nZWQoZW5jb2RlciwgY3J0Y19zdGF0ZSkpIHsNCj4gKwlpZiAoaW50ZWxfbHRfcGh5
X2NvbmZpZ19jaGFuZ2VkKGVuY29kZXIsDQo+ICsmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5s
dHBsbCwgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaykpIHsNCg0KQnJlYWsgdGhpcyBpbnRvIGRpZmZl
cmVudCBsaW5lcy4gSXRzIHRvbyBsb25nDQpDaGVja3BhdGNoIGFsc28gdGhyb3dzIGFuIGVycm9y
IGhlcmUuDQpXaXRoIHRoYXQgZml4ZWQgTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFs
IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAgCQkvKg0KPiAgCQkgKiA1LiBQcm9ncmFt
IHRoZSBQSFkgaW50ZXJuYWwgUExMIHJlZ2lzdGVycyBvdmVyIFBIWQ0KPiBtZXNzYWdlIGJ1cyBm
b3IgdGhlIGRlc2lyZWQNCj4gIAkJICogZnJlcXVlbmN5IGFuZCBwcm90b2NvbCB0eXBlDQo+ICAJ
CSAqLw0KPiAtCQlpbnRlbF9sdF9waHlfcHJvZ3JhbV9wbGwoZW5jb2RlciwgY3J0Y19zdGF0ZSk7
DQo+ICsJCWludGVsX2x0X3BoeV9wcm9ncmFtX3BsbChlbmNvZGVyLCAmY3J0Y19zdGF0ZS0NCj4g
PmRwbGxfaHdfc3RhdGUubHRwbGwpOw0KPiANCj4gIAkJLyogNi4gVXNlIHRoZSBQMlAgdHJhbnNh
Y3Rpb24gZmxvdyAqLw0KPiAgCQkvKg0KPiBAQCAtMjAwMSw3ICsyMDI0LDggQEAgdm9pZCBpbnRl
bF9sdF9waHlfcGxsX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4g
IAlpbnRlbF9sdF9waHlfcG93ZXJkb3duX2NoYW5nZV9zZXF1ZW5jZShlbmNvZGVyLA0KPiBvd25l
ZF9sYW5lX21hc2ssDQo+ICAJCQkJCSAgICAgICBYRUxQRFBfUDBfU1RBVEVfQUNUSVZFKTsNCj4g
DQo+IC0JaW50ZWxfbHRfcGh5X2VuYWJsZV9kaXNhYmxlX3R4KGVuY29kZXIsIGNydGNfc3RhdGUp
Ow0KPiArCWludGVsX2x0X3BoeV9lbmFibGVfZGlzYWJsZV90eChlbmNvZGVyLCAmY3J0Y19zdGF0
ZS0NCj4gPmRwbGxfaHdfc3RhdGUubHRwbGwsDQo+ICsJCQkJICAgICAgIGNydGNfc3RhdGUtPmxh
bmVfY291bnQpOw0KPiAgCWludGVsX2x0X3BoeV90cmFuc2FjdGlvbl9lbmQoZW5jb2Rlciwgd2Fr
ZXJlZik7ICB9DQo+IA0KPiAtLQ0KPiAyLjQzLjANCg0K
