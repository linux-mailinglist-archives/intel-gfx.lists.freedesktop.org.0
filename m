Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPs2Gq6UzGmbUAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 05:44:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5DA37482E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 05:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44D610E315;
	Wed,  1 Apr 2026 03:44:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c72RC4Qv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A22110E0A9;
 Wed,  1 Apr 2026 03:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775015083; x=1806551083;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fWS+78ef5RGDYxpPRIo/+KfqFT5SzGUbjkfpr4+VT3M=;
 b=c72RC4Qv2y6cxqVQAOm+u8A9U5WCw3muJy9XLmV5By7Eiy6Oiqufb1MI
 oIUkdNzxYSUIhrp0Hv/K1CEBQss+OSQd25IPmgpMa5tcqscl7At6CF8b9
 SIVFDyM2KZvzfjphGTaiNue9PZQNb8PvrwuE9H9s/i5+dECM4NctKdoda
 OglGwn+eQE0uzGFtA1/pj7oHsvX6xjx0q4dQDhecba/k5qlm2wdKrsI/W
 pB5YRhNus6smMX4glynpXZlT+KwqNgKjd7TJ/70kdxZ9PxylE5PkMRlwJ
 7ISjp4TDy6MHraXrDQP09wk6dVmtCtCUCPH7WF59HWrAicL0mnhrfWBj7 w==;
X-CSE-ConnectionGUID: TLG8pBGQQwmAGuziYryC1Q==
X-CSE-MsgGUID: NA9ww/uaRoWDCXF/j/5RJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75758124"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75758124"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 20:44:42 -0700
X-CSE-ConnectionGUID: 6Jbb8oKDQju4SeWq0TGZtg==
X-CSE-MsgGUID: dfQBy/AJTG++WSuRuT0nnA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 20:44:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 20:44:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 20:44:40 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 20:44:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NbKUaKgqqyoeS3pWsjnjcc6YJnWUuZhhii923KgrUBPjoq9RK9iXCvi2fPbNhAwVFK518tUkd6Yf19OMw+kXza62JMMkRKz2xfE5btf7PsG6B5bXH0wxujAMIlYJrjgXtfEmQDzUwn62nLfpPsfxc2RZnwsMr9LKLvvLieZ70r5QrFCYF+w5XeHm/GPgD/PXrmP21LKQZ51O5PzfB70cKPzFyX1rJAJXPaSX+etDyrElUWRvTZY7tEDZO/nhVv0LmlKfjuuBDqs2+hYWTXMtKgqi3e6XWLYM3E2g8ZecEuGiDZ2YzrmlwknZwk6RPhHSR+/Nfvks7SDZlJTa6VYZYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERv3U/hqZq/ScRL2mA2peGtNVI+A2Gca/Nx+C7lWk/o=;
 b=jfgyRscynbx40eucx8HACuEyCBqSyZ2BuvWdVsQZdNhTBOSZfKkQBuKmbtInjWaiDQgJ/RJQPpv4lXvNT4N1A6q/D0nKfU3iH+i4ZDrmOR6+BXkpQRAfP5ZAo7erLerLxulNxt9gUaGaoEur6TmEqUbA/lS6atkG5HdrIYmN7U4WZN+WXf6RC330RQ78AseM6JX3bM+QZo8MeiQLGSr3J12rG57VLg1fZzczOERpZeRp/Yo/+egmBHLdEp8feQj13Ljj/O/BwY7JTNqRJIcAZl62ZgQlW3q81xhhkIMydiXeSuIAhwH+XZtltHQgsCIm21+bBim6p9KargHXwZf+Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB5127.namprd11.prod.outlook.com
 (2603:10b6:510:3c::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 03:44:37 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.015; Wed, 1 Apr 2026
 03:44:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Topic: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Index: AQHcpTuT0NOVFGlMC0KzEq9i+0VeAbXJg5qAgAAvJkCAAA9K8IAABxvQ
Date: Wed, 1 Apr 2026 03:44:37 +0000
Message-ID: <DM3PPF208195D8DB89A58A78D8EDD51473FE350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224031322.2568874-1-suraj.kandpal@intel.com>
 <acxaN8mUWjRue2lR@intel.com>
 <DM3PPF208195D8DF5D98183D96341A33C71E350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <DM3PPF208195D8DBA8DB686A2AFA3F0F4D9E350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DBA8DB686A2AFA3F0F4D9E350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB5127:EE_
x-ms-office365-filtering-correlation-id: 51c13425-6229-4416-e996-08de8fa0ff8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 3W3SidB3mJinoZOu+VQpYpFL0iPt/J+Y/byWeY8XnsWJr/f8fW3OrJGeTBH/mWfWUg0lhtc/yDNy/c7mrlAocnk2IC0J3wrufzF0fr/iBt1WaBfy7nJWop0GP/hdyOK7B0LxrjMrECTaK7MVxthrPZlbjlWi6rOY/I50qDehp4AVvfPCG/HvkhgswoiPvnaEMSEE+26gmLWeMScOXu4tCv586/VB4re74AA3LKDP+Eza87e+Tdl9ampa+wLxFxivRpJSLvpPXth8gAM9bgXy00lZjoRvI29fcTjjV+0GJYRYfU4BA/CQeZEOaZ8ofn0i6DnttTfD0L1EkSaC8Hkce3ttA9lPUiTvVlZf3YiZFSIqqkzgRtn9Aq3YA9YDsXS9c4pllqI6GJM6sz19trQeZyuyV3I7ROGMqMwl+Uctk1W+ukKPNWRV/TZpw1gcF+WEThCx+8dIWYixsPDr1wZ/nccK2cht498I63RtFPGfmce+JpDN8kv4dTMMjULFkrURVM7jG+ZPziakLeY85Ebb83w9A/ZvqdOFLiZl+wgJ57zEm/HQ7o+RL9EzfhfSgw0KI1QzpbSqZfBRXjgmdoEOS2Oj4wHHLnYd9wcmcppnAAK6yK7lrfzncI5zzLGex0T0cTajP2S1s0TEKqMEtfKUoXYA1OEkPk/5MQsZIjIccVyGTq4t9RRXw6mej8SDJpunScGIf1IPDcsbKfPeZNeV3Iexf0+0WEbUSB55Puom55HUVtC5rD1QM8coNC3kprIf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?7Zs3wlBULuO0wTsqLFhkCGTxJagDmjoGEfecBlHY/ZGoTBfzGD3tmeEvuK?=
 =?iso-8859-1?Q?xA/02r8jk3K1+iTz/v9FVCyp1GvEHi7K7RwLvaFwa3oyZSi8l4Qw3QYFP9?=
 =?iso-8859-1?Q?rJLL5EIAMmmUKNVCzTUTIRFPhmBK8CVi6Y+UjKGUHCdG1xy9woIG16MFIA?=
 =?iso-8859-1?Q?nfYScJ/M0IloYB5qxhOtUzt8ej2tJc6faeGD8Vv08bKR5g3YpoT1rE7bEG?=
 =?iso-8859-1?Q?ZGo05qgshrMwhwE7m8N5MnryZLgPnXbtgcitdlbs03C1YfNK4Eg9WpCoGR?=
 =?iso-8859-1?Q?UAocJ1vJcR/oX+r7/TKJN3gLa6OAVXVfeds0+2224fNL+OEAfhQZ36qBW/?=
 =?iso-8859-1?Q?+Su7b8UJ3dBskDbQmoMyWwpirgTQ5kcgsvG1Vl1qPBleuuw3PAdNiF2uuD?=
 =?iso-8859-1?Q?6Pl/QCwC0UpOkTSg+lgm+4QPD1dLPiXeDhPssXZRyUAkKNDs04MM4WxRwu?=
 =?iso-8859-1?Q?ev1rDmKwv6h2Vvj7kU/Yb6BN2FwWOcfUJ7kFJQ3XHQKstpSKoA/CsQ9Vk4?=
 =?iso-8859-1?Q?XUs48jylHZIr0+eNndiNPmBWNBxRJ+VceAO6jMlLY14GX4hOICLmkZ63rq?=
 =?iso-8859-1?Q?OTO5G8kGk1VhMrQeLTKwNI7LYtgoIs58TJI/gGTtOfHm0sU9fFCjsaGiNi?=
 =?iso-8859-1?Q?hUV+G1axuaV57Vm5qIUWNAnYknQi+/83Mqu69IIxdYxwvSAHrAk5MPinAb?=
 =?iso-8859-1?Q?b0FJ7dm7+MtNhvc5kDnK5cTMRWoC7FgvootMLCcE7uVVPjaQMD9HsQOeMa?=
 =?iso-8859-1?Q?gLKBQCA9P50ujNJ/nw+uLaUDteTyjciiEXK563pEAVsH2G/cZsDMF+0kDr?=
 =?iso-8859-1?Q?hTTZa3Yfc9LL6ofsWswonr3iM1MehZzynQRhzgqH1fe7fCMkZtibGgHFgo?=
 =?iso-8859-1?Q?WYy6Ibz+Nlog8Z0hpTi7A6L9lUXzoe2aOW8c31eQIafFDK6TngZLr6TQOs?=
 =?iso-8859-1?Q?TiXR+o6/6SgJdgq7LKDk9XCI8vi2Uar4WyPgJDl6jAlooi4MQtbYRERqun?=
 =?iso-8859-1?Q?IRYQitCEUKKs0Jk7Jq9VDTUKH0lm7e5ng1VXVfPYf/X6uzFRgrWIhn190N?=
 =?iso-8859-1?Q?IqM3kt2dxCYrt+Oqb+IgBPyhtnYVeUR26kqRv2x/AMSdFelIEC1btK73zt?=
 =?iso-8859-1?Q?iyXEgu1Nb+bOjsf+3X6IkJBk0ccXUnq2uP3YyDYXovttFEy9B9sHmou8QE?=
 =?iso-8859-1?Q?RAU1QSce4KxqlG9LJ6kZSCFmmYG/Nqbl9iaKGU49Ere2pk7fDUswKvKx4r?=
 =?iso-8859-1?Q?+KCI24Nyhehty8MNHbpMw1wRk19C/HHY3L0XGob+Rx8WK2VNOuzOrTruo0?=
 =?iso-8859-1?Q?QErsD9iU+W340K6ieGmaMAMAS081hAhyvOExnlArPtQx16U/pBmAay/WRW?=
 =?iso-8859-1?Q?KZNPfKRpRrOzz/ZRGFvHgEfJk3erMWPnoqQXIc/H0hmE2fv4izXAnIzSZV?=
 =?iso-8859-1?Q?iqrCvS9mjmC/Y4pUoeVQI+akiDsZzv+6wcM/vgBpF48AUsAJdzp/8zgEKR?=
 =?iso-8859-1?Q?55LEg16PK1Yjs8js86A7ltA42E2rCpCHs2W/Dyz6UpyI6EXsaRlOm2vlKt?=
 =?iso-8859-1?Q?Uex9dHT60RhwJpz9qBaV8gbNmKl6ANeljSCh+U9BUn9GaT4Pr+lESr+xqJ?=
 =?iso-8859-1?Q?keooi7Vi4zvMQNWPpCuBgBBQsKVpFq+TgAID2lqi0TmP6VgEW+vNs0gHmG?=
 =?iso-8859-1?Q?H/Mm/WcIXe5/JS8Z4chC5YImOVUBt3QMNHjsG+OwP44iW/KRwYuWXUZvvX?=
 =?iso-8859-1?Q?SL/th5isEycqaknRR2xahxpNR8ohfjM40CNXw/E9HcXJMTl7TukvqD6z/H?=
 =?iso-8859-1?Q?IBsHwxULvA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YKUwfIJjSL/BMiNFlHAI0cbnI0Op2Zz/7GXFsITTKCIkM7EIWJX2AFCdVaVadCaH+TmeGCvUciNfhezvhWrXq88wq1xj9OAl2WHEP/vazNUKfPtf0N0C/qKn4zIzJTN2VhNlgUmv4SDmqDNNYh7bUe3QzxeTOs76fvp+qo1pxG238GassOc9O1H6ZEyNhFDh23m0o9gfM8Fd4PcZnHxLzD7scq/K0cBxpSFa385ezXe6zxxUMiEiT+eL0K/8S4en11A5OlEAf5SitbKDsuyjfQHzFWs3fxz9qsNpMxz2T2Pjvi2zMxzRmXMO7sfoodTJSQCnIPt6F9xNAdzEZnB0Nw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51c13425-6229-4416-e996-08de8fa0ff8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 03:44:37.7986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QMBgoWE6ED3VKQhK2r6txounfTwW3hGTd6cL/5MJJd5TpF8lcq44nIZc9C09B/RzPI5dW6uEmaUiWFClVXrViw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5127
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AD5DA37482E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: RE: [PATCH] drm/i915/backlight: Remove try_vesa_interface
>=20
> > Subject: RE: [PATCH] drm/i915/backlight: Remove try_vesa_interface
> >
> > > Subject: Re: [PATCH] drm/i915/backlight: Remove try_vesa_interface
> > >
> > > On Tue, Feb 24, 2026 at 08:43:22AM +0530, Suraj Kandpal wrote:
> > > > Remove try_vesa_interface. This is because we now make VESA
> > > > Interface as a fallback mechanism for Panels which needs VESA DPCD
> > > > AUX backlight mechanism to work but have a broken VBT indicating
> > otherwise.
> > > > While at in sneak in a small comment cleanup too.
> > >
> > > This broke the backlight on my VLV chromebook.
> > >
> > >  i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> > > [CONNECTOR:98:eDP-1] Detected unsupported HDR backlight interface
> > > version
> > > 0
> > > +i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> > > [CONNECTOR:98:eDP-1] AUX Backlight Control Supported!
> > > +i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> > > +[CONNECTOR:98:eDP-1] Using VESA eDP backlight controls
> > >  i915 0000:00:02.0: [drm:intel_panel_init [i915]]
> > > [CONNECTOR:98:eDP-1] DRRS
> > > type: none
> > > +i915 0000:00:02.0: [drm:drm_edp_backlight_init
> > > +[drm_display_helper]] AUX C/DP C: Found backlight: aux_set=3D1
> > > +aux_enable=3D0 mode=3D1
> > > +i915 0000:00:02.0: [drm:drm_edp_backlight_init
> > > +[drm_display_helper]] AUX C/DP C: Backlight caps: level=3D1023/1023
> > > +pwm_freq_pre_divider=3D0
> > > +lsb_reg_used=3D1
> > > +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> > > +[CONNECTOR:98:eDP-1] AUX VESA backlight enable is controlled
> > > +through PWM
> > > +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> > > +[CONNECTOR:98:eDP-1] AUX VESA backlight level is controlled through
> > > +DPCD
> > >  i915 0000:00:02.0: [drm:vlv_setup_backlight [i915]]
> > > [CONNECTOR:98:eDP-1] Using native PWM for backlight control (on pipe
> > > A)
> > > -i915 0000:00:02.0: [drm:intel_backlight_setup [i915]]
> > > [CONNECTOR:98:eDP-1] backlight initialized, enabled, brightness
> > > 7812/7812
> > > +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> > > +[CONNECTOR:98:eDP-1] Using AUX VESA interface for backlight control
> > > +i915 0000:00:02.0: [drm:intel_backlight_setup [i915]]
> > > +[CONNECTOR:98:eDP-1] backlight initialized, disabled, brightness
> > > +1023/1023
> >
> > Hi Ville can you provide the full logs from boot with debug set to
> > 0x10e and also when you manipulate your backlight
> >
> > I did have a commit that checks if vesa is actually possible because
> > some panels report vesa support even though they really cannot
> > 0fb03890d182 drm/i915/backlight: Check if VESA backlight is possible
> >
> > Also what would be the edp Panel model I can try replicate this issue
> > locally after I find a vlv machine
>=20
> Hi Ville,
> Never mind I found the actual issue, slight oversight by me thanks for br=
inging
> this to my attention Went through the eDP spec again
>=20
> So apparently if we are only relying only on
> BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE
> BACKLIGHT_AUX_ENABLE_CAPABLE should also be set. The only case where
> one is independent of the other Is when we are using BL_ENABLE bit in whi=
ch
> case the brightness is a production function of the level and pwm level.
>=20
> Let me float a patch.
>=20
> Regards,
> Suraj Kandpal
>=20

I have sent the fix can you perhaps test it

Regards,
Suraj Kandpal

> >
> > Regards,
> > Suraj Kandpal
> >
> > >
> > > >
> > > > Closes:
> > > > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_dp_aux_backlight.c | 19
> > > > +++++++------------
> > > >  1 file changed, 7 insertions(+), 12 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > index eb05ef4bd9f6..a8e9872566cd 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > @@ -644,9 +644,10 @@ int intel_dp_aux_init_backlight_funcs(struct
> > > intel_connector *connector)
> > > >  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> > > >  	struct drm_device *dev =3D connector->base.dev;
> > > >  	struct intel_panel *panel =3D &connector->panel;
> > > > -	bool try_intel_interface =3D false, try_vesa_interface =3D false;
> > > > +	bool try_intel_interface =3D false;
> > > >
> > > > -	/* Check the VBT and user's module parameters to figure out which
> > > > +	/*
> > > > +	 * Check the VBT and user's module parameters to figure out
> > > > +which
> > > >  	 * interfaces to probe
> > > >  	 */
> > > >  	switch (display->params.enable_dpcd_backlight) { @@ -655,7
> > > > +656,6
> > > @@
> > > > int intel_dp_aux_init_backlight_funcs(struct intel_connector *conne=
ctor)
> > > >  	case INTEL_DP_AUX_BACKLIGHT_AUTO:
> > > >  		switch (panel->vbt.backlight.type) {
> > > >  		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
> > > > -			try_vesa_interface =3D true;
> > > >  			break;
> > > >  		case INTEL_BACKLIGHT_DISPLAY_DDI:
> > > >  			try_intel_interface =3D true;
> > > > @@ -668,20 +668,12 @@ int intel_dp_aux_init_backlight_funcs(struct
> > > intel_connector *connector)
> > > >  		if (panel->vbt.backlight.type !=3D
> > > INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
> > > >  			try_intel_interface =3D true;
> > > >
> > > > -		try_vesa_interface =3D true;
> > > > -		break;
> > > > -	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
> > > > -		try_vesa_interface =3D true;
> > > >  		break;
> > > >  	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
> > > >  		try_intel_interface =3D true;
> > > >  		break;
> > > >  	}
> > > >
> > > > -	/* For eDP 1.5 and above we are supposed to use VESA interface fo=
r
> > > brightness control */
> > > > -	if (intel_dp->edp_dpcd[0] >=3D DP_EDP_15)
> > > > -		try_vesa_interface =3D true;
> > > > -
> > > >  	/*
> > > >  	 * Since Intel has their own backlight control interface, the
> > > > majority of
> > > machines out there
> > > >  	 * using DPCD backlight controls with Intel GPUs will be using
> > > > this interface as opposed to @@ -694,6 +686,9 @@ int
> > > intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
> > > >  	 * panel with Intel's OUI - which is also required for us to be
> > > > able to
> > > detect Intel's
> > > >  	 * backlight interface at all. This means that the only sensible
> > > > way for us
> > > to detect both
> > > >  	 * interfaces is to probe for Intel's first, and VESA's second.
> > > > +	 *
> > > > +	 * Also there is a chance some VBT's may advertise false Intel
> > > > +backlight
> > > support even if the
> > > > +	 * tcon's DPCD says otherwise. This mean we keep VESA interface
> > > > +as
> > > fallback in that case.
> > > >  	 */
> > > >  	if (try_intel_interface &&
> > > intel_dp_aux_supports_hdr_backlight(connector) &&
> > > >  	    intel_dp->edp_dpcd[0] <=3D DP_EDP_14b) { @@ -703,7 +698,7 @@
> > > > int intel_dp_aux_init_backlight_funcs(struct intel_connector *conne=
ctor)
> > > >  		return 0;
> > > >  	}
> > > >
> > > > -	if (try_vesa_interface &&
> > > intel_dp_aux_supports_vesa_backlight(connector)) {
> > > > +	if (intel_dp_aux_supports_vesa_backlight(connector)) {
> > > >  		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP
> > > backlight controls\n",
> > > >  			    connector->base.base.id, connector->base.name);
> > > >  		panel->backlight.funcs =3D &intel_dp_vesa_bl_funcs;
> > > > --
> > > > 2.34.1
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
