Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18947C6454D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 14:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7784110E374;
	Mon, 17 Nov 2025 13:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=synaptics.com header.i=@synaptics.com header.b="xIeeXwnp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11022115.outbound.protection.outlook.com [52.101.53.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B38F10E828;
 Thu, 13 Nov 2025 12:31:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IQOoUL2FNGQYH4PEbv3+c9PAuxES2LmK8HL3/Rd8GCVf8rdcGB1F/yhG6IJuaflqsl/YtakuXyMYu9+V+GVgkdM1N6sY4KnLpGJi/8kNa9DAAqKkAY5uyNq2GSGZRnuLczupyln+0edTJ4RErDYmcRyybAYv8OEcQY4xzg/3YwfzKIsRi9PGkgLzm+1L/6SbVcjwPP27/lw8k+7yFJ+79aXSmsY31bo7eY9fsfOm4moFuQ0JrhT/FjUZHjD5HjlWtb7tWUSbcjJyiq3cNZaWE262RmKMx+btjStF4hzc4xC/u0zHZ/tZ4/D8AmrpD5OGnKRXf2YZvNTEbMHkwuRzAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DIe704laqWbZxDCvqMgpB9uy49q87SfttMeyLV0EV5I=;
 b=XDZmrmG6F+FcoN11H4JjBNTJg93xtzxH4QZIKgbJAmnGp2ZpdYan0DPYncpH1HwP3TKdn27gW/fXr0RXZDDjZqKw2VuonYo6OquVuKSt6KdfQ2TUvU9YbjQGicJRl0+ThkYw4RoClTQJ1+QDVVA4SpYPTFTauZzMs2HED/vS0mRPGTgmrY5QtyXG3rrkdOSZ/Sr4L3AfTWuG05tI91tmq7qWvoS2HiuBSJ0myd906NYt5xy247E/8ms4do5PVgU+3fg99lWRHpWmTeLRgp2z/Sndi1664Z0QmM4Q718vRkKc5F/IVQKhBL7hsQZLWDt7jW+Ts45g18Esc3sw5fGp7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synaptics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIe704laqWbZxDCvqMgpB9uy49q87SfttMeyLV0EV5I=;
 b=xIeeXwnpgZneGK1ckNLus3MOYeqtlVjkmcK8zI+0TtRCYk9161tLNe1XS71nUWHhHziN34uR5PyOluqFd75IVZ0AjuO0SVF3H2gvueVcFDp9FI2RAP0ToBPap7/3zuWJKP69zilTXYc8OJrnfLpg2S0bhZp8zhqOtx09tuKa/Gg=
Received: from PH0PR03MB6299.namprd03.prod.outlook.com (2603:10b6:510:d7::6)
 by DS0PR03MB7701.namprd03.prod.outlook.com (2603:10b6:8:1fb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 12:31:44 +0000
Received: from PH0PR03MB6299.namprd03.prod.outlook.com
 ([fe80::69b6:856e:6a8:efda]) by PH0PR03MB6299.namprd03.prod.outlook.com
 ([fe80::69b6:856e:6a8:efda%6]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 12:31:44 +0000
From: Jakub Prussak <Jakub.Prussak@synaptics.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: PPD-Penguins <ppdpenguins@synaptics.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, =?iso-8859-1?Q?Thomas_Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: Cache coherency issues when reading from intel Xe buffer.
Thread-Topic: Cache coherency issues when reading from intel Xe buffer.
Thread-Index: AQHcTvSGSwgVcKwRqk6g8QYSwCbQ1rTsJdQAgAQW1pg=
Date: Thu, 13 Nov 2025 12:31:44 +0000
Message-ID: <PH0PR03MB6299690EA881490196BF9A4FE9CDA@PH0PR03MB6299.namprd03.prod.outlook.com>
References: <PH0PR03MB6299572C46068849DBDD3A88E9C2A@PH0PR03MB6299.namprd03.prod.outlook.com>
 <ac533b9a7b0f8aa2bb3a0f037db1a65ac7fc5807@intel.com>
In-Reply-To: <ac533b9a7b0f8aa2bb3a0f037db1a65ac7fc5807@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=synaptics.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR03MB6299:EE_|DS0PR03MB7701:EE_
x-ms-office365-filtering-correlation-id: 9c3bc834-d1b1-4982-4827-08de22b09b11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007|4053099003|4013099003|13003099007|8096899003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?bk2W+R9TSoCq318rY9j9N1YVr4t4pB5d0IdK3b9zYamA5GV5zhUJ5GicaR?=
 =?iso-8859-1?Q?CFQG+XIiOaNgv1ardvMAP/60Q6YCPlaHM6eq41X9u1oJQsvbINoO2uUfO1?=
 =?iso-8859-1?Q?r/PBBlKfjUlU7MT5toIT8PCoLn6yjSXsLbpzC69pMSXH7bxGb8oGOeufd2?=
 =?iso-8859-1?Q?Wx30gVf6MdoZu2BxLp9fWvgaDEyFBPoIjexag70VS5Y40E/w1GOcSko9FU?=
 =?iso-8859-1?Q?7XRzExtFlCYxIn5/ZrRkzp6MpdDGnsbfl58W6blQ0qp98OGFTgYGDb0XK4?=
 =?iso-8859-1?Q?0G/BsxAiJtJ163OJvrz0bNLmahon5gD9+UkrZFfrwrV6LHZWei9BKdoju2?=
 =?iso-8859-1?Q?DEFyj7pzHEfMTIzZ8H6YCXdNMCNYkAsvmbeIU5B26ekFDcmN3IyVWWQaCL?=
 =?iso-8859-1?Q?ZQVVGRekK9et9snjvFhU2eJwrDJagEcJtIKZn46a18fPIVyaTFs7ilJMd8?=
 =?iso-8859-1?Q?wbFH5cUHREXGf2OT0nxzszbta1aiXBIiwhPZhPlFP4ZrLU+pX8BggPlmLA?=
 =?iso-8859-1?Q?s55KMFSchiKyOt7OPiWmjiCm+T4Vd7H99zG68LxO352en9ThupmQz2noQK?=
 =?iso-8859-1?Q?GeHQMKJYsMNRwNN7zr4x6jvB5M3/5h+RqNVCxAQBwgpffQMQ3sOJVyyzNI?=
 =?iso-8859-1?Q?X4hjoYbVY/xpLwnBSE24DsXfQAaS0oADFkixJqemabXr+bFca24+Ym71Gq?=
 =?iso-8859-1?Q?SXpTyfhvuYgYKPNAO1+G2/C7p9Q79HJCMRvog+cmgrn++O7gggkFW7zA5W?=
 =?iso-8859-1?Q?zMa955jfLT3tcu73PCn9fO+Vi5NkESXRSiDL6dBF7uaBqtNU4blv28U6Lu?=
 =?iso-8859-1?Q?PoMAzhDOb2xe36Y7J00XveZ6x6Vnewwofr6TTd5ZXplsQE6Z5kBFZ6wTcc?=
 =?iso-8859-1?Q?k7yHyN1+8Bp3qZX3yA3wiWW9vj7Kn+ruNY3zs288+s8Pe8Tx07xl2jOuh0?=
 =?iso-8859-1?Q?vZ+1KnrFzxYVlYUzB+Z+NCisB8sY5X+14VBLOJZfnip2qNveS1nLSmeWLW?=
 =?iso-8859-1?Q?7cdSds2PSDvT3pgETkJPGYBhGg+prywKV6p+yi6vWDygHAWPFyJ+HXi4/3?=
 =?iso-8859-1?Q?myfVfaT0ZGVBR8as3LR9JhFF9ycxzGqQgmEryzAQmhZOCM2kVcJPywxovq?=
 =?iso-8859-1?Q?XTmMH8tEtOd2r+NQvdPUxsr83e/6Q4KdElKRoicU5lnrdWIeb5v+oEUICl?=
 =?iso-8859-1?Q?8PjuJfDAHis7CJBA7inS+cQNJZ8arcSbegmnhZ6Vq7okuHTrQzx0Dkfb1G?=
 =?iso-8859-1?Q?3k+uvhmHTlO6UUXwmo/la8QbzqOq7Lg4QV/WHkThcEibbnY1L4rrrFuctS?=
 =?iso-8859-1?Q?EkFBB3pe+ibhh8D4uAwCb+hu18rZe8ZmYjOc2JVCENyxjXt11nTEmv4f35?=
 =?iso-8859-1?Q?0mHFzUM1LDrPQW4WwB8Ny6tT9iZKAE/UG62eMyvmhcx3x2Scv4hTrYpA3A?=
 =?iso-8859-1?Q?eUzYmEszqvhehZ4Rib2OGzpYmkJWEhsKyAfS6uPI1J8r3gDhN5JHhHWl3e?=
 =?iso-8859-1?Q?6Z6OhPljcI+KOm7oEfI+pOeUtBD7RTNtbmVh79nO9lJPK/4LrcceibMcAu?=
 =?iso-8859-1?Q?LhEjJ6s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR03MB6299.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007)(4053099003)(4013099003)(13003099007)(8096899003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ajQMDHlZ4YHTkHAJoOufUaGJhChDFoNQjjhleF7kx3cEmOj+bkvdHxayyB?=
 =?iso-8859-1?Q?0Xt5uaa4vYZOYys6u9i82GJrWVgXkXVr61fVojyAX87CjQs1AV2Z84wYRv?=
 =?iso-8859-1?Q?hH32nKLlVTCKtia88IJaj+EvkZmcaq8ayzopZ8IP6JxoUHiHVA55Ja+L+i?=
 =?iso-8859-1?Q?aM0JGZGIFlAjLjRIHxgFl4I+YCoUxJiePwZuSMVRWMlEXFHfRiz2q40r8C?=
 =?iso-8859-1?Q?7Ya1KMG1dbXX/xTIjAdt7ie0/2SNl2qkVVU0CYZSfz53dVfAvJWuvtkiS1?=
 =?iso-8859-1?Q?r/F1cbnRJWzDkZSiAbpqXEf5KYvQ2u3RkSe2M4rrRsfj7C/fgNNy1d52vd?=
 =?iso-8859-1?Q?bzRXEIqzQIl++WqfT0z8zHuIdzGECjgwIgqbrKjSxDqJZk+OcvcjEYhXj1?=
 =?iso-8859-1?Q?f9Fyl0+HtjXOrAVn4c1MSyA2GQL8zQjA8emG5SO7ZPl4g1N6onCwdWzkyH?=
 =?iso-8859-1?Q?6QGBXPRrC2JediGuTnr2SAkijCyIvEM5nOxIglW9A1R3aUvUwiX7MwD3Ae?=
 =?iso-8859-1?Q?m3AFyNrWJXfeVfHmIUjPN8C8lnO3dPTNy1MXCih7uwWkJRrtuI6uixbK4I?=
 =?iso-8859-1?Q?7xLxnl8+xTQLKDZom9aUDAL4ad9N1l5jC5U9mKd5NpOhjc+kINEyTLOYuq?=
 =?iso-8859-1?Q?C6BrEyWT2QQXEf8534lUrxFqu9hzyFvzQE59W5zDkTYaiLeussi4Z4dmny?=
 =?iso-8859-1?Q?bzNeJr/lJ7tP17uTre73EgsvONTs665znLiPkVmkO6D1X8lLD762xxhIX4?=
 =?iso-8859-1?Q?/yD1DZsBxeBpsD1I8rWj0A77LHr/FAHumvToV/EUja6CN8gFz0ytosjn0Q?=
 =?iso-8859-1?Q?ssC8cdqgEcfno/54bJicJ3/QP8OEZeaA2DRhk2ItAhL3+zFlqjxmEk7ai9?=
 =?iso-8859-1?Q?dh3W0SIlQNNOyvYe5seV/xAQPtVBftwiml3iGLEoYUX8aNhpms2KkKbN1U?=
 =?iso-8859-1?Q?t9BxHzSfF1LCnPI+H4kJlSr+Sd5e5jbkRdRMPx4P3F7vGHjniU9BF4phwJ?=
 =?iso-8859-1?Q?bROs60fQViNu850QHTBGFiO/VbjfTecnndjBPu5Z+y4+4SWP+13kkfGwNT?=
 =?iso-8859-1?Q?kb4GH1/ZdZoCyaa2UfbO3I2orz5nLpqbT7BTypMgr5Sjy1Aa1mgQ30vmWy?=
 =?iso-8859-1?Q?9RfYn2CmPN9JTzcUGIUZjsYnc8YRfyZibvIln8cCmsP67K80tswUeUqDIE?=
 =?iso-8859-1?Q?RlcfISaG93X4sK3CbBhT0kJXitQlnipbf8pBa3+4wqqp6zCkE4ssVuHjrR?=
 =?iso-8859-1?Q?7E2ib4mV4PoOViGAyNXhR3IRxUY8PDftFPknHR0yInGukUAHm5ERRJrpoQ?=
 =?iso-8859-1?Q?/Y2JSbZJfoiyLIFOgt9kLs4KnvKY1bMtl+FKIsXCA2Mr+GraCjzXOI3DS0?=
 =?iso-8859-1?Q?8WUCwRcIa4gpVPswB+j3Bm2QPFjjpkY25QAh0sP9ff+6kngUi0cEduVVUQ?=
 =?iso-8859-1?Q?B/TGviOYgFnD8FIjEv/7WalOcQoQH3Ton9Vjv2hHLgXPtB/AnrxTSCO5oT?=
 =?iso-8859-1?Q?R3E08uGuKGHLEMGZ+yYAyi2FUyMFo/EU1E0MPDRvvLSXnkmImgR/KMcrbV?=
 =?iso-8859-1?Q?Nkx8Bj+HnRGL3qPx041SZt0V1IoyGNbJ4kFJbnsx6qbc4z8kifVdQc0GW0?=
 =?iso-8859-1?Q?1tNxdDPG3enq4h9yFvb0RBKt66A7jO6Whh?=
Content-Type: multipart/mixed;
 boundary="_005_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_"
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB6299.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c3bc834-d1b1-4982-4827-08de22b09b11
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 12:31:44.4131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V1310MVAGryvgv03QKzoAGAEbhlH0pe55vyxoE9C55JS0Yne/IoOgqhdREOkCMTvldI3WO2JalvAJisK6cHSPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR03MB7701
X-Mailman-Approved-At: Mon, 17 Nov 2025 13:23:35 +0000
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

--_005_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_
Content-Type: multipart/alternative;
	boundary="_000_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_"

--_000_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

Thank you for looking at it.

Regarding reproduction without an out-of-tree modules: the UDL module is pr=
oducing the same artifacts.

I had a glance at the github issue. First, "new Intel devices" is quite
vague. Which devices exactly?
Devices from Metor Lake and Arrow Lake family so far. From what we gathered=
 from users this includes, but is not limited to:

  *
Intel(R) Core(TM) Ultra 9 275HX
  *
Intel(R) Core(TM) Ultra 7 265HX
  *
Intel(R) Core(TM) Ultra 5 235H
  *
Intel(R) Core(TM) Ultra 7 155H
  *
Intel(R) Core(TM) Ultra 7 265K

The problem occurs only on new hardwre, regardless of the kernel or our sof=
tware version. When using any older processor with the same combination of =
kernel version with our product/UDL, everything behaves fine.

In the attached output of lspci one can see that the driver being used by k=
ernel is actually i915, but the xe module is also loaded. That's why we ini=
tially connected that to the xe module.
Second, seems to me there are a lot of people having issues with
non-Intel GPUs as well. What makes you say this is related to i915 or xe
drivers?
While the similar kind of artifacts show under non-Intel GPUs, they only ap=
pear with the EVDI and are not reproducible under the UDL module. Also the =
time it takes to heal and the way the artifacts heal on AMD devices makes u=
s think that this is a different type of issue. We will be looking at that,=
 but maybe you have any suggestions what to look for?

Regards
Jakub Prussak
________________________________
From: Jani Nikula <jani.nikula@linux.intel.com>
Sent: Monday, November 10, 2025 5:48 PM
To: Jakub Prussak <Jakub.Prussak@synaptics.com>; intel-xe@lists.freedesktop=
.org <intel-xe@lists.freedesktop.org>
Cc: PPD-Penguins <ppdpenguins@synaptics.com>; Lucas De Marchi <lucas.demarc=
hi@intel.com>; Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>; Rodri=
go Vivi <rodrigo.vivi@intel.com>; Dave Airlie <airlied@redhat.com>; intel-g=
fx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>
Subject: Re: Cache coherency issues when reading from intel Xe buffer.

CAUTION: Email originated externally, do not click links or open attachment=
s unless you recognize the sender and know the content is safe.


On Thu, 06 Nov 2025, Jakub Prussak <Jakub.Prussak@synaptics.com> wrote:
> Hello,
>
> For some time, users of DisplayLink USB-3 docking stations face
> corruptions Ubuntu 24.04 on machines with Intel i915+Xe driver (LENOVO
> IdeaPad Pro 5 16IMH9 in our case)
> Machines using only i915 driver are fine.

AFAICT all IdeaPad Pro 5 16IMH9 models have Meteorlake GPU, and you
should be using i915 driver with that. The attached dmesg only appears
to have the i915 driver anyway. So how's the xe driver related here?

> DisplayLink driver is using evdi kernel
> module(https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_=
DisplayLink_evdi_blob_main_module&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoUF=
mBzj1s88r8EGyM0UY&r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pL=
pFmiVNTCKbUp1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&s=3DQ2kIS6_ZrX1=
8OfHOYKDy3U8IxEF4rEnwgyDofnw08uA&e=3D ) that
> works as drm output slave. It is using drm_prime exported buffers from
> i915 driver.

Mmh, can you reproduce any of this running upstream kernels without
out-of-tree modules? It's highly unlikely anyone from our side would
start debugging scenarios with out-of-tree modules.

> We had checked a way evdi access dma-buf exported buffer, e.g. if it
> is reading it within dma_buf_begin_cpu_access/dma_buf_end_cpu_access.
>
> Also, we ruled out access to the buffer before all dma_fence's on
> drm_plane are signaled.
> Another approach was to wait on dma_resv resv object from
> drm_gem_object's dma_buf_attachment, again with no luck.
> The issue is reproducible with evdi's evdi_gem_object and generic
> drm_gem_shmem_object implementations of drm_gem_object. Corruptions
> are visible with all compositors - XServer, Gnome/mutter, weston.
> Other kernel module facing this issue is udl.
> Nothing was helpful and we suspect some cache coherency issues.
>
> The problem can be reproduced on the latest kernel on computers with
> new Intel devices, and a lot of our users face this problem
> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Displa=
yLink_evdi_issues_524&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s88r8EG=
yM0UY&r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pLpFmiVNTCKbUp=
1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&s=3DLX8y3cnAkcCfx8N45KMlHkw=
I031dlPc-cy472qvNfwg&e=3D ). The way to reproduce
> it requires installing EVDI module
> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Displa=
yLink_evdi&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s88r8EGyM0UY&r=3DW=
1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3f=
QPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&s=3DZ3Egg6eKXYMKqHu0gc5dsxdjsQCiVGcgbB=
XYY2h4vUo&e=3D ), loading it and creating a
> virtual screen (this can be achieved with this sample app:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_jakub-2=
Dprussak-2Dsynaptics_evdipp&d=3DDwIBAg&c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s=
88r8EGyM0UY&r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&m=3DJT0pLpFmiVN=
TCKbUp1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&s=3D19SbXfvkmN-YvqQgJ=
GrJbBi7L07V81Eaq7cIhLRkQaY&e=3D ). Once a virtual
> screen is created, the artifacts should be visible while moving the
> window around on that screen (see the attached picture or user reports
> mentioned earlier). Similar issue appears with devices using UDL
> driver on Intel platform. Attached are device information files and a
> dmesg output when reproducing this issue.

I had a glance at the github issue. First, "new Intel devices" is quite
vague. Which devices exactly? 'lspci -vnn -d :*:0300'. Also we can see
both i915 and xe drivers in some lsmod listings, but there's no info
which drivers are being used with which devices. That's not actionable.

Second, seems to me there are a lot of people having issues with
non-Intel GPUs as well. What makes you say this is related to i915 or xe
drivers?


BR,
Jani.


--
Jani Nikula, Intel

--_000_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hello</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you for looking at it.<br>
<br>
Regarding reproduction without an out-of-tree modules: the UDL module is pr=
oducing the same artifacts.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<blockquote style=3D"margin-left: 0.8ex; padding-left: 1ex; border-left: 3p=
x solid rgb(200, 200, 200);">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I had a glance at the github issue. First, &quot;new Intel devices&quot; is=
 quite<br>
vague. Which devices exactly?</div>
</blockquote>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Devices from Metor Lake and Arrow Lake family so far. From what we gathered=
 from users this includes, but is not limited to:</div>
<ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: disc;" d=
ata-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Intel(R) Core(TM) Ultra=
 9 275HX&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Intel(R) Core(TM) Ultra=
 7 265HX</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Intel(R) Core(TM) Ultra=
 5 235H</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Intel(R) Core(TM) Ultra=
 7 155H</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Intel(R) Core(TM) Ultra=
 7 265K</div>
</li></ul>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
The problem occurs only on new hardwre, regardless of the kernel or our sof=
tware version. When using any older processor with the same combination of =
kernel version with our product/UDL, everything behaves fine.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
In the attached output of lspci one can see that the driver being used by k=
ernel is actually i915, but the xe module is also loaded. That's why we ini=
tially connected that to the xe module.&nbsp;</div>
<blockquote style=3D"margin-left: 0.8ex; padding-left: 1ex; border-left: 3p=
x solid rgb(200, 200, 200);">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Second, seems to me there are a lot of people having issues with<br>
non-Intel GPUs as well. What makes you say this is related to i915 or xe<br=
>
drivers?&nbsp;</div>
</blockquote>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
While the similar kind of artifacts show under non-Intel GPUs, they only ap=
pear with the EVDI and are not reproducible under the UDL module. Also the =
time it takes to heal and the way the artifacts heal on AMD devices makes u=
s think that this is a different
 type of issue. We will be looking at that, but maybe you have any suggesti=
ons what to look for?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Regards</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Jakub Prussak</div>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"divRplyFwdMsg">
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<b>From:</b>&nbsp;Jani Nikula &lt;jani.nikula@linux.intel.com&gt;<br>
<b>Sent:</b>&nbsp;Monday, November 10, 2025 5:48 PM<br>
<b>To:</b>&nbsp;Jakub Prussak &lt;Jakub.Prussak@synaptics.com&gt;; intel-xe=
@lists.freedesktop.org &lt;intel-xe@lists.freedesktop.org&gt;<br>
<b>Cc:</b>&nbsp;PPD-Penguins &lt;ppdpenguins@synaptics.com&gt;; Lucas De Ma=
rchi &lt;lucas.demarchi@intel.com&gt;; Thomas Hellstr=F6m &lt;thomas.hellst=
rom@linux.intel.com&gt;; Rodrigo Vivi &lt;rodrigo.vivi@intel.com&gt;; Dave =
Airlie &lt;airlied@redhat.com&gt;; intel-gfx@lists.freedesktop.org &lt;inte=
l-gfx@lists.freedesktop.org&gt;<br>
<b>Subject:</b>&nbsp;Re: Cache coherency issues when reading from intel Xe =
buffer.</div>
<div style=3D"direction: ltr;">&nbsp;</div>
</div>
<div style=3D"font-size: 11pt;" class=3D"elementToProof">CAUTION: Email ori=
ginated externally, do not click links or open attachments unless you recog=
nize the sender and know the content is safe.<br>
<br>
<br>
On Thu, 06 Nov 2025, Jakub Prussak &lt;Jakub.Prussak@synaptics.com&gt; wrot=
e:<br>
&gt; Hello,<br>
&gt;<br>
&gt; For some time, users of DisplayLink USB-3 docking stations face<br>
&gt; corruptions Ubuntu 24.04 on machines with Intel i915+Xe driver (LENOVO=
<br>
&gt; IdeaPad Pro 5 16IMH9 in our case)<br>
&gt; Machines using only i915 driver are fine.<br>
<br>
AFAICT all IdeaPad Pro 5 16IMH9 models have Meteorlake GPU, and you<br>
should be using i915 driver with that. The attached dmesg only appears<br>
to have the i915 driver anyway. So how's the xe driver related here?<br>
<br>
&gt; DisplayLink driver is using evdi kernel<br>
&gt; module(https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.c=
om_DisplayLink_evdi_blob_main_module&amp;d=3DDwIBAg&amp;c=3D7dfBJ8cXbWjhc0B=
hImu8wVIoUFmBzj1s88r8EGyM0UY&amp;r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6=
O5xwk&amp;m=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsv=
Jk3&amp;s=3DQ2kIS6_ZrX18OfHOYKDy3U8IxEF4rEnwgyDofnw08uA&amp;e=3D
 ) that<br>
&gt; works as drm output slave. It is using drm_prime exported buffers from=
<br>
&gt; i915 driver.<br>
<br>
Mmh, can you reproduce any of this running upstream kernels without<br>
out-of-tree modules? It's highly unlikely anyone from our side would<br>
start debugging scenarios with out-of-tree modules.<br>
<br>
&gt; We had checked a way evdi access dma-buf exported buffer, e.g. if it<b=
r>
&gt; is reading it within dma_buf_begin_cpu_access/dma_buf_end_cpu_access.<=
br>
&gt;<br>
&gt; Also, we ruled out access to the buffer before all dma_fence's on<br>
&gt; drm_plane are signaled.<br>
&gt; Another approach was to wait on dma_resv resv object from<br>
&gt; drm_gem_object's dma_buf_attachment, again with no luck.<br>
&gt; The issue is reproducible with evdi's evdi_gem_object and generic<br>
&gt; drm_gem_shmem_object implementations of drm_gem_object. Corruptions<br=
>
&gt; are visible with all compositors - XServer, Gnome/mutter, weston.<br>
&gt; Other kernel module facing this issue is udl.<br>
&gt; Nothing was helpful and we suspect some cache coherency issues.<br>
&gt;<br>
&gt; The problem can be reproduced on the latest kernel on computers with<b=
r>
&gt; new Intel devices, and a lot of our users face this problem<br>
&gt; (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Dis=
playLink_evdi_issues_524&amp;d=3DDwIBAg&amp;c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFm=
Bzj1s88r8EGyM0UY&amp;r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&amp;m=
=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&amp;s=
=3DLX8y3cnAkcCfx8N45KMlHkwI031dlPc-cy472qvNfwg&amp;e=3D
 ). The way to reproduce<br>
&gt; it requires installing EVDI module<br>
&gt; (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Dis=
playLink_evdi&amp;d=3DDwIBAg&amp;c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s88r8EG=
yM0UY&amp;r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&amp;m=3DJT0pLpFmi=
VNTCKbUp1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&amp;s=3DZ3Egg6eKXYM=
KqHu0gc5dsxdjsQCiVGcgbBXYY2h4vUo&amp;e=3D
 ), loading it and creating a<br>
&gt; virtual screen (this can be achieved with this sample app:<br>
&gt; <a data-auth=3D"NotApplicable" class=3D"OWAAutoLink" id=3D"OWA17065e49=
-a4db-ef82-4bbd-e01543f4bea0" href=3D"https://urldefense.proofpoint.com/v2/=
url?u=3Dhttps-3A__github.com_jakub-2Dprussak-2Dsynaptics_evdipp&amp;d=3DDwI=
BAg&amp;c=3D7dfBJ8cXbWjhc0BhImu8wVIoUFmBzj1s88r8EGyM0UY&amp;r=3DW1EIKVsQFqx=
7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&amp;m=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3fQPGwh9=
cESk1coqXMJlS_-DbXDzPYP1hsvJk3&amp;s=3D19SbXfvkmN-YvqQgJGrJbBi7L07V81Eaq7cI=
hLRkQaY&amp;e=3D">
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_jakub-2Dp=
russak-2Dsynaptics_evdipp&amp;d=3DDwIBAg&amp;c=3D7dfBJ8cXbWjhc0BhImu8wVIoUF=
mBzj1s88r8EGyM0UY&amp;r=3DW1EIKVsQFqx7ACp4Hsw-KtUjZ5imGzUfM_7UN6O5xwk&amp;m=
=3DJT0pLpFmiVNTCKbUp1LFei6Pu_3fQPGwh9cESk1coqXMJlS_-DbXDzPYP1hsvJk3&amp;s=
=3D19SbXfvkmN-YvqQgJGrJbBi7L07V81Eaq7cIhLRkQaY&amp;e=3D</a>&nbsp;).
 Once a virtual<br>
&gt; screen is created, the artifacts should be visible while moving the<br=
>
&gt; window around on that screen (see the attached picture or user reports=
<br>
&gt; mentioned earlier). Similar issue appears with devices using UDL<br>
&gt; driver on Intel platform. Attached are device information files and a<=
br>
&gt; dmesg output when reproducing this issue.<br>
<br>
I had a glance at the github issue. First, &quot;new Intel devices&quot; is=
 quite<br>
vague. Which devices exactly? 'lspci -vnn -d :*:0300'. Also we can see<br>
both i915 and xe drivers in some lsmod listings, but there's no info<br>
which drivers are being used with which devices. That's not actionable.<br>
<br>
Second, seems to me there are a lot of people having issues with<br>
non-Intel GPUs as well. What makes you say this is related to i915 or xe<br=
>
drivers?<br>
<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
--<br>
Jani Nikula, Intel</div>
</body>
</html>

--_000_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_--

--_005_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_
Content-Type: text/plain; name="lsmod.txt"
Content-Description: lsmod.txt
Content-Disposition: attachment; filename="lsmod.txt"; size=10952;
	creation-date="Thu, 13 Nov 2025 12:26:50 GMT";
	modification-date="Thu, 13 Nov 2025 12:27:28 GMT"
Content-Transfer-Encoding: base64

TW9kdWxlICAgICAgICAgICAgICAgICAgU2l6ZSAgVXNlZCBieQpoaWRfZWxlY29tICAgICAgICAg
ICAgIDEyMjg4ICAwCnVzYmhpZCAgICAgICAgICAgICAgICAgNzc4MjQgIDAKcjgxNTNfZWNtICAg
ICAgICAgICAgICAxMjI4OCAgMApjZGNfZXRoZXIgICAgICAgICAgICAgIDI0NTc2ICAxIHI4MTUz
X2VjbQp1c2JuZXQgICAgICAgICAgICAgICAgIDYxNDQwICAyIHI4MTUzX2VjbSxjZGNfZXRoZXIK
c25kX3VzYl9hdWRpbyAgICAgICAgIDU2NTI0OCAgMQpzbmRfdXNibWlkaV9saWIgICAgICAgIDU3
MzQ0ICAxIHNuZF91c2JfYXVkaW8Kc25kX3VtcCAgICAgICAgICAgICAgICA0NTA1NiAgMSBzbmRf
dXNiX2F1ZGlvCnI4MTUyICAgICAgICAgICAgICAgICAxMzUxNjggIDEgcjgxNTNfZWNtCm1paSAg
ICAgICAgICAgICAgICAgICAgMjA0ODAgIDIgdXNibmV0LHI4MTUyCmNjbSAgICAgICAgICAgICAg
ICAgICAgMjA0ODAgIDYKcmZjb21tICAgICAgICAgICAgICAgICA5NDIwOCAgMApzbmRfc2VxX2R1
bW15ICAgICAgICAgIDEyMjg4ICAwCnNuZF9ocnRpbWVyICAgICAgICAgICAgMTIyODggIDEKcXJ0
ciAgICAgICAgICAgICAgICAgICA0OTE1MiAgMgpjbWFjICAgICAgICAgICAgICAgICAgIDEyMjg4
ICAyCmFsZ2lmX2hhc2ggICAgICAgICAgICAgMTYzODQgIDEKYWxnaWZfc2tjaXBoZXIgICAgICAg
ICAxMjI4OCAgMQphZl9hbGcgICAgICAgICAgICAgICAgIDMyNzY4ICA2IGFsZ2lmX2hhc2gsYWxn
aWZfc2tjaXBoZXIKYm5lcCAgICAgICAgICAgICAgICAgICAzMjc2OCAgMgpzY2hfZnFfY29kZWwg
ICAgICAgICAgIDI0NTc2ICAyCm1zciAgICAgICAgICAgICAgICAgICAgMTIyODggIDAKc25kX2N0
bF9sZWQgICAgICAgICAgICAyNDU3NiAgMApldmRpICAgICAgICAgICAgICAgICAgIDkwMTEyICAy
CnNuZF9zb2Nfc2tsX2hkYV9kc3AgICAgMTYzODQgIDQKc25kX3NvY19pbnRlbF9zb2ZfYm9hcmRf
aGVscGVycyAgICAyODY3MiAgMSBzbmRfc29jX3NrbF9oZGFfZHNwCnNuZF9zb2ZfcHJvYmVzICAg
ICAgICAgMjg2NzIgIDAKc25kX3NvY19pbnRlbF9oZGFfZHNwX2NvbW1vbiAgICAxNjM4NCAgMSBz
bmRfc29jX2ludGVsX3NvZl9ib2FyZF9oZWxwZXJzCnhlICAgICAgICAgICAgICAgICAgIDM4MTMz
NzYgIDAKZHJtX2dwdXZtICAgICAgICAgICAgICA0OTE1MiAgMSB4ZQpkcm1fZ3B1c3ZtX2hlbHBl
ciAgICAgIDQwOTYwICAxIHhlCmdwdV9zY2hlZCAgICAgICAgICAgICAgNjU1MzYgIDEgeGUKZHJt
X3R0bV9oZWxwZXIgICAgICAgICAxNjM4NCAgMSB4ZQpkcm1fZXhlYyAgICAgICAgICAgICAgIDEy
Mjg4ICAyIGRybV9ncHV2bSx4ZQpkcm1fc3ViYWxsb2NfaGVscGVyICAgIDI0NTc2ICAxIHhlCnNu
ZF9oZGFfY29kZWNfaW50ZWxoZG1pICAgIDI0NTc2ICAxCnNuZF9oZGFfY29kZWNfYWxjMjY5ICAg
MTM5MjY0ICAxCnNuZF9oZGFfc2NvZGVjX2NvbXBvbmVudCAgICAyMDQ4MCAgMSBzbmRfaGRhX2Nv
ZGVjX2FsYzI2OQpzbmRfaGRhX2NvZGVjX3JlYWx0ZWtfbGliICAgIDY1NTM2ICAxIHNuZF9oZGFf
Y29kZWNfYWxjMjY5CnNuZF9oZGFfY29kZWNfZ2VuZXJpYyAgIDExODc4NCAgMiBzbmRfaGRhX2Nv
ZGVjX3JlYWx0ZWtfbGliLHNuZF9oZGFfY29kZWNfYWxjMjY5CnNuZF9zb2NfZG1pYyAgICAgICAg
ICAgMTIyODggIDEKYmluZm10X21pc2MgICAgICAgICAgICAyNDU3NiAgMQpubHNfaXNvODg1OV8x
ICAgICAgICAgIDEyMjg4ICAxCnNuZF9oZGFfaW50ZWwgICAgICAgICAgNjE0NDAgIDAKc25kX3Nv
Zl9wY2lfaW50ZWxfbXRsICAgIDM2ODY0ICAwCnNuZF9zb2ZfaW50ZWxfaGRhX2dlbmVyaWMgICAg
MzY4NjQgIDEgc25kX3NvZl9wY2lfaW50ZWxfbXRsCnNvdW5kd2lyZV9pbnRlbCAgICAgICAgODE5
MjAgIDEgc25kX3NvZl9pbnRlbF9oZGFfZ2VuZXJpYwpzbmRfc29mX2ludGVsX2hkYV9zZHdfYnB0
ICAgIDIwNDgwICAxIHNvdW5kd2lyZV9pbnRlbApzbmRfc29mX2ludGVsX2hkYV9jb21tb24gICAx
ODg0MTYgIDMgc25kX3NvZl9wY2lfaW50ZWxfbXRsLHNuZF9zb2ZfaW50ZWxfaGRhX3Nkd19icHQs
c25kX3NvZl9pbnRlbF9oZGFfZ2VuZXJpYwpzbmRfc29jX2hkYWNfaGRhICAgICAgIDIwNDgwICAx
IHNuZF9zb2ZfaW50ZWxfaGRhX2NvbW1vbgpzbmRfc29mX2ludGVsX2hkYV9tbGluayAgICA0NTA1
NiAgNCBzbmRfc29mX2ludGVsX2hkYV9zZHdfYnB0LHNvdW5kd2lyZV9pbnRlbCxzbmRfc29mX2lu
dGVsX2hkYV9jb21tb24sc25kX3NvZl9pbnRlbF9oZGFfZ2VuZXJpYwpzbmRfc29mX2ludGVsX2hk
YSAgICAgIDI0NTc2ICAyIHNuZF9zb2ZfaW50ZWxfaGRhX2NvbW1vbixzbmRfc29mX2ludGVsX2hk
YV9nZW5lcmljCnNuZF9oZGFfY29kZWNfaGRtaSAgICAgNjU1MzYgIDEgc25kX2hkYV9jb2RlY19p
bnRlbGhkbWkKc291bmR3aXJlX2NhZGVuY2UgICAgICA0OTE1MiAgMSBzb3VuZHdpcmVfaW50ZWwK
c25kX3NvZl9wY2kgICAgICAgICAgICAyNDU3NiAgMiBzbmRfc29mX3BjaV9pbnRlbF9tdGwsc25k
X3NvZl9pbnRlbF9oZGFfZ2VuZXJpYwpzbmRfc29mX3h0ZW5zYV9kc3AgICAgIDEyMjg4ICAxIHNu
ZF9zb2ZfaW50ZWxfaGRhX2dlbmVyaWMKc25kX3NvZiAgICAgICAgICAgICAgIDM4OTEyMCAgNyBz
bmRfc29mX3BjaV9pbnRlbF9tdGwsc25kX3NvZl9pbnRlbF9oZGFfc2R3X2JwdCxzbmRfc29mX3Bj
aSxzbmRfc29mX2ludGVsX2hkYV9jb21tb24sc25kX3NvZl9pbnRlbF9oZGFfZ2VuZXJpYyxzbmRf
c29mX3Byb2JlcyxzbmRfc29mX2ludGVsX2hkYQpzbmRfc29mX3V0aWxzICAgICAgICAgIDE2Mzg0
ICAxIHNuZF9zb2YKc25kX2hkYV9leHRfY29yZSAgICAgICAzMjc2OCAgNSBzbmRfc29mX2ludGVs
X2hkYV9zZHdfYnB0LHNuZF9zb2ZfaW50ZWxfaGRhX2NvbW1vbixzbmRfc29jX2hkYWNfaGRhLHNu
ZF9zb2ZfaW50ZWxfaGRhX21saW5rLHNuZF9zb2ZfaW50ZWxfaGRhCnNuZF9oZGFfY29kZWMgICAg
ICAgICAyMDQ4MDAgIDEwIHNuZF9oZGFfY29kZWNfZ2VuZXJpYyxzbmRfaGRhX2NvZGVjX2hkbWks
c25kX2hkYV9pbnRlbCxzbmRfc29jX2ludGVsX2hkYV9kc3BfY29tbW9uLHNuZF9oZGFfY29kZWNf
cmVhbHRla19saWIsc25kX3NvY19oZGFjX2hkYSxzbmRfaGRhX2NvZGVjX2FsYzI2OSxzbmRfc29m
X2ludGVsX2hkYSxzbmRfc29jX3NrbF9oZGFfZHNwLHNuZF9oZGFfY29kZWNfaW50ZWxoZG1pCnNu
ZF9oZGFfY29yZSAgICAgICAgICAxMzkyNjQgIDEyIHNuZF9oZGFfY29kZWNfZ2VuZXJpYyxzbmRf
aGRhX2NvZGVjX2hkbWksc25kX2hkYV9pbnRlbCxzbmRfaGRhX2V4dF9jb3JlLHNuZF9oZGFfY29k
ZWMsc25kX3NvY19pbnRlbF9oZGFfZHNwX2NvbW1vbixzbmRfc29mX2ludGVsX2hkYV9jb21tb24s
c25kX2hkYV9jb2RlY19yZWFsdGVrX2xpYixzbmRfc29jX2hkYWNfaGRhLHNuZF9oZGFfY29kZWNf
YWxjMjY5LHNuZF9zb2ZfaW50ZWxfaGRhLHNuZF9oZGFfY29kZWNfaW50ZWxoZG1pCnNuZF9pbnRl
bF9kc3BjZmcgICAgICAgNDUwNTYgIDQgc25kX2hkYV9pbnRlbCxzbmRfc29mLHNuZF9zb2ZfaW50
ZWxfaGRhX2NvbW1vbixzbmRfc29mX2ludGVsX2hkYV9nZW5lcmljCnNuZF9pbnRlbF9zZHdfYWNw
aSAgICAgMTYzODQgIDIgc25kX2ludGVsX2RzcGNmZyxzbmRfc29mX2ludGVsX2hkYV9nZW5lcmlj
CnNuZF9zb2NfYWNwaV9pbnRlbF9tYXRjaCAgIDEzOTI2NCAgMyBzbmRfc29mX3BjaV9pbnRlbF9t
dGwsc25kX3NvY19pbnRlbF9zb2ZfYm9hcmRfaGVscGVycyxzbmRfc29mX2ludGVsX2hkYV9nZW5l
cmljCnNuZF9zb2NfYWNwaV9pbnRlbF9zZGNhX3F1aXJrcyAgICAxMjI4OCAgMSBzbmRfc29jX2Fj
cGlfaW50ZWxfbWF0Y2gKc291bmR3aXJlX2dlbmVyaWNfYWxsb2NhdGlvbiAgICAyMDQ4MCAgMSBz
b3VuZHdpcmVfaW50ZWwKc25kX3NvY19hY3BpICAgICAgICAgICAxNjM4NCAgMiBzbmRfc29jX2Fj
cGlfaW50ZWxfbWF0Y2gsc25kX3NvZl9pbnRlbF9oZGFfZ2VuZXJpYwpzbmRfaHdkZXAgICAgICAg
ICAgICAgIDI0NTc2ICAyIHNuZF91c2JfYXVkaW8sc25kX2hkYV9jb2RlYwpzb3VuZHdpcmVfYnVz
ICAgICAgICAxMTc1NTUyICAzIHNvdW5kd2lyZV9pbnRlbCxzb3VuZHdpcmVfZ2VuZXJpY19hbGxv
Y2F0aW9uLHNvdW5kd2lyZV9jYWRlbmNlCnNuZF9zb2Nfc2RjYSAgICAgICAgICAgODE5MjAgIDIg
c25kX3NvY19hY3BpX2ludGVsX3NkY2FfcXVpcmtzLHNvdW5kd2lyZV9idXMKc25kX3NvY19jb3Jl
ICAgICAgICAgIDQwOTYwMCAgOSBzb3VuZHdpcmVfaW50ZWwsc25kX3NvZixzbmRfc29jX2ludGVs
X3NvZl9ib2FyZF9oZWxwZXJzLHNuZF9zb2Nfc2RjYSxzbmRfc29mX2ludGVsX2hkYV9jb21tb24s
c25kX3NvY19oZGFjX2hkYSxzbmRfc29mX3Byb2JlcyxzbmRfc29jX2RtaWMsc25kX3NvY19za2xf
aGRhX2RzcApzbmRfY29tcHJlc3MgICAgICAgICAgIDM2ODY0ICAyIHNuZF9zb2NfY29yZSxzbmRf
c29mX3Byb2JlcwppbnRlbF91bmNvcmVfZnJlcXVlbmN5ICAgIDEyMjg4ICAwCmFjOTdfYnVzICAg
ICAgICAgICAgICAgMTIyODggIDEgc25kX3NvY19jb3JlCmludGVsX3VuY29yZV9mcmVxdWVuY3lf
Y29tbW9uICAgIDIwNDgwICAxIGludGVsX3VuY29yZV9mcmVxdWVuY3kKc25kX3BjbV9kbWFlbmdp
bmUgICAgICAyMDQ4MCAgMSBzbmRfc29jX2NvcmUKeDg2X3BrZ190ZW1wX3RoZXJtYWwgICAgMTYz
ODQgIDAKaW50ZWxfcG93ZXJjbGFtcCAgICAgICAyNDU3NiAgMApzbmRfcGNtICAgICAgICAgICAg
ICAgMjAwNzA0ICAxNCBzbmRfaGRhX2NvZGVjX2hkbWksc25kX2hkYV9pbnRlbCxzbmRfdXNiX2F1
ZGlvLHNuZF9oZGFfY29kZWMsc291bmR3aXJlX2ludGVsLHNuZF9zb2Ysc25kX3NvY19zZGNhLHNu
ZF9zb2ZfaW50ZWxfaGRhX2NvbW1vbixzbmRfY29tcHJlc3Msc25kX3NvZl9pbnRlbF9oZGFfZ2Vu
ZXJpYyxzbmRfc29jX2NvcmUsc25kX3NvZl91dGlscyxzbmRfaGRhX2NvcmUsc25kX3BjbV9kbWFl
bmdpbmUKY29yZXRlbXAgICAgICAgICAgICAgICAyNDU3NiAgMAppd2xtdm0gICAgICAgICAgICAg
ICAgODMxNDg4ICAwCnNuZF9zZXFfbWlkaSAgICAgICAgICAgMjQ1NzYgIDAKa3ZtX2ludGVsICAg
ICAgICAgICAgIDM1MjI1NiAgMAptYWM4MDIxMSAgICAgICAgICAgICAxNzczNTY4ICAxIGl3bG12
bQpzbmRfc2VxX21pZGlfZXZlbnQgICAgIDE2Mzg0ICAxIHNuZF9zZXFfbWlkaQpsaWJhcmM0ICAg
ICAgICAgICAgICAgIDEyMjg4ICAxIG1hYzgwMjExCmt2bSAgICAgICAgICAgICAgICAgIDE0MzM2
MDAgIDEga3ZtX2ludGVsCnNuZF9yYXdtaWRpICAgICAgICAgICAgNTczNDQgIDMgc25kX3NlcV9t
aWRpLHNuZF91c2JtaWRpX2xpYixzbmRfdW1wCnByb2Nlc3Nvcl90aGVybWFsX2RldmljZV9wY2kg
ICAgMTYzODQgIDAKcHJvY2Vzc29yX3RoZXJtYWxfZGV2aWNlICAgIDI0NTc2ICAxIHByb2Nlc3Nv
cl90aGVybWFsX2RldmljZV9wY2kKcHJvY2Vzc29yX3RoZXJtYWxfd3RfaGludCAgICAxNjM4NCAg
MiBwcm9jZXNzb3JfdGhlcm1hbF9kZXZpY2VfcGNpLHByb2Nlc3Nvcl90aGVybWFsX2RldmljZQpi
dHVzYiAgICAgICAgICAgICAgICAgIDc3ODI0ICAwCnBsYXRmb3JtX3RlbXBlcmF0dXJlX2NvbnRy
b2wgICAgMjA0ODAgIDEgcHJvY2Vzc29yX3RoZXJtYWxfZGV2aWNlCnNuZF9zZXEgICAgICAgICAg
ICAgICAxMTg3ODQgIDkgc25kX3NlcV9taWRpLHNuZF9zZXFfbWlkaV9ldmVudCxzbmRfc2VxX2R1
bW15CnByb2Nlc3Nvcl90aGVybWFsX3NvY19zbGlkZXIgICAgMTYzODQgIDEgcHJvY2Vzc29yX3Ro
ZXJtYWxfZGV2aWNlCnV2Y3ZpZGVvICAgICAgICAgICAgICAxMzUxNjggIDAKYnRtdGsgICAgICAg
ICAgICAgICAgICAyODY3MiAgMSBidHVzYgpwcm9jZXNzb3JfdGhlcm1hbF9yZmltICAgIDQwOTYw
ICAxIHByb2Nlc3Nvcl90aGVybWFsX2RldmljZQppbnRlbF9wbWNfY29yZSAgICAgICAgMTUxNTUy
ICAwCmJ0cnRsICAgICAgICAgICAgICAgICAgMzI3NjggIDEgYnR1c2IKdmlkZW9idWYyX3ZtYWxs
b2MgICAgICAyMDQ4MCAgMSB1dmN2aWRlbwpwcm9jZXNzb3JfdGhlcm1hbF9yYXBsICAgIDE2Mzg0
ICAxIHByb2Nlc3Nvcl90aGVybWFsX2RldmljZQpzbmRfc2VxX2RldmljZSAgICAgICAgIDE2Mzg0
ICA0IHNuZF9zZXEsc25kX3NlcV9taWRpLHNuZF91bXAsc25kX3Jhd21pZGkKaW50ZWxfcmFwbF9t
c3IgICAgICAgICAyMDQ4MCAgMApjbWRsaW5lcGFydCAgICAgICAgICAgIDE2Mzg0ICAwCm1laV9n
c2NfcHJveHkgICAgICAgICAgMTYzODQgIDAKdXZjICAgICAgICAgICAgICAgICAgICAxMjI4OCAg
MSB1dmN2aWRlbwppcnFieXBhc3MgICAgICAgICAgICAgIDE2Mzg0ICAxIGt2bQpidGJjbSAgICAg
ICAgICAgICAgICAgIDI0NTc2ICAxIGJ0dXNiCmludGVsX3JhcGxfY29tbW9uICAgICAgNTMyNDgg
IDIgaW50ZWxfcmFwbF9tc3IscHJvY2Vzc29yX3RoZXJtYWxfcmFwbAppd2x3aWZpICAgICAgICAg
ICAgICAgNjIyNTkyICAxIGl3bG12bQp2aWRlb2J1ZjJfbWVtb3BzICAgICAgIDE2Mzg0ICAxIHZp
ZGVvYnVmMl92bWFsbG9jCnNuZF90aW1lciAgICAgICAgICAgICAgNTMyNDggIDMgc25kX3NlcSxz
bmRfaHJ0aW1lcixzbmRfcGNtCnBvbHl2YWxfY2xtdWxuaSAgICAgICAgMTIyODggIDAKcHJvY2Vz
c29yX3RoZXJtYWxfd3RfcmVxICAgIDEyMjg4ICAxIHByb2Nlc3Nvcl90aGVybWFsX2RldmljZQpi
dGludGVsICAgICAgICAgICAgICAgIDY5NjMyICAxIGJ0dXNiCnNwaV9ub3IgICAgICAgICAgICAg
ICAxNjM4NDAgIDAKaWRlYXBhZF9sYXB0b3AgICAgICAgICA1MzI0OCAgMAp2aWRlb2J1ZjJfdjRs
MiAgICAgICAgIDM2ODY0ICAxIHV2Y3ZpZGVvCmdoYXNoX2NsbXVsbmlfaW50ZWwgICAgMTIyODgg
IDAKcG10X3RlbGVtZXRyeSAgICAgICAgICAxNjM4NCAgMSBpbnRlbF9wbWNfY29yZQpwcm9jZXNz
b3JfdGhlcm1hbF9wb3dlcl9mbG9vciAgICAxMjI4OCAgMiBwcm9jZXNzb3JfdGhlcm1hbF9kZXZp
Y2VfcGNpLHByb2Nlc3Nvcl90aGVybWFsX2RldmljZQptdGQgICAgICAgICAgICAgICAgICAgIDk4
MzA0ICAzIHNwaV9ub3IsY21kbGluZXBhcnQKcG10X2Rpc2NvdmVyeSAgICAgICAgICAxNjM4NCAg
MSBwbXRfdGVsZW1ldHJ5CnNuZCAgICAgICAgICAgICAgICAgICAxMzkyNjQgIDMyIHNuZF9jdGxf
bGVkLHNuZF9oZGFfY29kZWNfZ2VuZXJpYyxzbmRfc2VxLHNuZF9zZXFfZGV2aWNlLHNuZF9oZGFf
Y29kZWNfaGRtaSxzbmRfaHdkZXAsc25kX2hkYV9pbnRlbCxzbmRfdXNiX2F1ZGlvLHNuZF91c2Jt
aWRpX2xpYixzbmRfaGRhX2NvZGVjLHNuZF9zb2Ysc25kX3NvY19zZGNhLHNuZF90aW1lcixzbmRf
aGRhX2NvZGVjX3JlYWx0ZWtfbGliLHNuZF9jb21wcmVzcyxzbmRfaGRhX2NvZGVjX2FsYzI2OSxz
bmRfc29jX2NvcmUsc25kX3VtcCxzbmRfcGNtLHNuZF9yYXdtaWRpCnZpZGVvYnVmMl9jb21tb24g
ICAgICAgODYwMTYgIDQgdmlkZW9idWYyX3ZtYWxsb2MsdmlkZW9idWYyX3Y0bDIsdXZjdmlkZW8s
dmlkZW9idWYyX21lbW9wcwppMmNfaTgwMSAgICAgICAgICAgICAgIDM2ODY0ICAwCmFlc25pX2lu
dGVsICAgICAgICAgICAgOTgzMDQgIDYKcG10X2NsYXNzICAgICAgICAgICAgICAyMDQ4MCAgMiBw
bXRfdGVsZW1ldHJ5LHBtdF9kaXNjb3ZlcnkKbWVpX21lICAgICAgICAgICAgICAgICA1MzI0OCAg
MQpwbGF0Zm9ybV9wcm9maWxlICAgICAgIDIwNDgwICAyIGlkZWFwYWRfbGFwdG9wLHByb2Nlc3Nv
cl90aGVybWFsX3NvY19zbGlkZXIKc291bmRjb3JlICAgICAgICAgICAgICAxNjM4NCAgMiBzbmRf
Y3RsX2xlZCxzbmQKaTJjX211eCAgICAgICAgICAgICAgICAxMjI4OCAgMSBpMmNfaTgwMQppbnRl
bF9oaWQgICAgICAgICAgICAgIDMyNzY4ICAwCnNwaV9pbnRlbF9wY2kgICAgICAgICAgMTIyODgg
IDAKaW50MzQwM190aGVybWFsICAgICAgICAxNjM4NCAgMAppbnRlbF9wbWNfc3NyYW1fdGVsZW1l
dHJ5ICAgIDE2Mzg0ICAxIGludGVsX3BtY19jb3JlCmludDM0MDBfdGhlcm1hbCAgICAgICAgMjQ1
NzYgIDAKcHJvY2Vzc29yX3RoZXJtYWxfbWJveCAgICAxMjI4OCAgNCBwcm9jZXNzb3JfdGhlcm1h
bF9wb3dlcl9mbG9vcixwcm9jZXNzb3JfdGhlcm1hbF93dF9yZXEscHJvY2Vzc29yX3RoZXJtYWxf
cmZpbSxwcm9jZXNzb3JfdGhlcm1hbF93dF9oaW50CnZpZGVvZGV2ICAgICAgICAgICAgICAzNjA0
NDggIDIgdmlkZW9idWYyX3Y0bDIsdXZjdmlkZW8KcmFwbCAgICAgICAgICAgICAgICAgICAyMDQ4
MCAgMAppbnRlbF9jc3RhdGUgICAgICAgICAgIDIwNDgwICAwCm1jICAgICAgICAgICAgICAgICAg
ICAgODE5MjAgIDUgdmlkZW9kZXYsc25kX3VzYl9hdWRpbyx2aWRlb2J1ZjJfdjRsMix1dmN2aWRl
byx2aWRlb2J1ZjJfY29tbW9uCmJsdWV0b290aCAgICAgICAgICAgIDEwMDM1MjAgIDMyIGJ0cnRs
LGJ0bXRrLGJ0aW50ZWwsYnRiY20sYm5lcCxidHVzYixyZmNvbW0Kd21pX2Jtb2YgICAgICAgICAg
ICAgICAxMjI4OCAgMApjZmc4MDIxMSAgICAgICAgICAgICAxMzg0NDQ4ICAzIGl3bG12bSxpd2x3
aWZpLG1hYzgwMjExCmludGVsX3ZwdSAgICAgICAgICAgICAyODI2MjQgIDAKY3JjOCAgICAgICAg
ICAgICAgICAgICAxMjI4OCAgMSBzb3VuZHdpcmVfY2FkZW5jZQptZWkgICAgICAgICAgICAgICAg
ICAgMTcyMDMyICAzIG1laV9nc2NfcHJveHksbWVpX21lCnNwaV9pbnRlbCAgICAgICAgICAgICAg
MzI3NjggIDEgc3BpX2ludGVsX3BjaQppMmNfc21idXMgICAgICAgICAgICAgIDIwNDgwICAxIGky
Y19pODAxCmlnZW42X2VkYWMgICAgICAgICAgICAgMjg2NzIgIDAKaW50MzQweF90aGVybWFsX3pv
bmUgICAgMTYzODQgIDIgaW50MzQwM190aGVybWFsLHByb2Nlc3Nvcl90aGVybWFsX2RldmljZQph
Y3BpX3RhZCAgICAgICAgICAgICAgIDIwNDgwICAwCmludGVsX3ZzZWMgICAgICAgICAgICAgMjQ1
NzYgIDMgaW50ZWxfcG1jX3NzcmFtX3RlbGVtZXRyeSxwbXRfdGVsZW1ldHJ5LHhlCnNwYXJzZV9r
ZXltYXAgICAgICAgICAgMTIyODggIDIgaW50ZWxfaGlkLGlkZWFwYWRfbGFwdG9wCmFjcGlfcGFk
ICAgICAgICAgICAgICAxODQzMjAgIDAKYWNwaV90aGVybWFsX3JlbCAgICAgICAyMDQ4MCAgMSBp
bnQzNDAwX3RoZXJtYWwKam95ZGV2ICAgICAgICAgICAgICAgICAzMjc2OCAgMAppbnB1dF9sZWRz
ICAgICAgICAgICAgIDEyMjg4ICAwCmk5MTUgICAgICAgICAgICAgICAgIDQ2NTcxNTIgIDEzCm1h
Y19oaWQgICAgICAgICAgICAgICAgMTIyODggIDAKc2VyaW9fcmF3ICAgICAgICAgICAgICAyMDQ4
MCAgMApkcm1fYnVkZHkgICAgICAgICAgICAgIDI4NjcyICAyIHhlLGk5MTUKdHRtICAgICAgICAg
ICAgICAgICAgIDEyNjk3NiAgMyBkcm1fdHRtX2hlbHBlcix4ZSxpOTE1CmRybV9kaXNwbGF5X2hl
bHBlciAgICAyODI2MjQgIDIgeGUsaTkxNQpjZWMgICAgICAgICAgICAgICAgICAgIDk4MzA0ICAz
IGRybV9kaXNwbGF5X2hlbHBlcix4ZSxpOTE1CnJjX2NvcmUgICAgICAgICAgICAgICAgNzM3Mjgg
IDEgY2VjCmkyY19hbGdvX2JpdCAgICAgICAgICAgMTYzODQgIDIgeGUsaTkxNQpwYXJwb3J0X3Bj
ICAgICAgICAgICAgIDUzMjQ4ICAwCnBwZGV2ICAgICAgICAgICAgICAgICAgMjQ1NzYgIDAKbHAg
ICAgICAgICAgICAgICAgICAgICAzMjc2OCAgMApwYXJwb3J0ICAgICAgICAgICAgICAgIDczNzI4
ICAzIHBhcnBvcnRfcGMsbHAscHBkZXYKZWZpX3BzdG9yZSAgICAgICAgICAgICAxMjI4OCAgMApu
Zm5ldGxpbmsgICAgICAgICAgICAgIDIwNDgwICAxCmRtaV9zeXNmcyAgICAgICAgICAgICAgMjA0
ODAgIDAKYXV0b2ZzNCAgICAgICAgICAgICAgICA1NzM0NCAgMgpoaWRfc2Vuc29yX2N1c3RvbSAg
ICAgIDI4NjcyICAwCmhpZF9zZW5zb3JfaHViICAgICAgICAgMjg2NzIgIDEgaGlkX3NlbnNvcl9j
dXN0b20KaW50ZWxfaXNodHBfaGlkICAgICAgICAyODY3MiAgMAp1Y3NpX2FjcGkgICAgICAgICAg
ICAgIDEyMjg4ICAwCnR5cGVjX3Vjc2kgICAgICAgICAgICAgNjk2MzIgIDEgdWNzaV9hY3BpCnR5
cGVjICAgICAgICAgICAgICAgICAxMTQ2ODggIDEgdHlwZWNfdWNzaQpoaWRfbXVsdGl0b3VjaCAg
ICAgICAgIDM2ODY0ICAwCmhpZF9nZW5lcmljICAgICAgICAgICAgMTIyODggIDAKcnRzeF9wY2lf
c2RtbWMgICAgICAgICAzNjg2NCAgMApudm1lICAgICAgICAgICAgICAgICAgIDYxNDQwICAyCm52
bWVfY29yZSAgICAgICAgICAgICAyMjkzNzYgIDMgbnZtZQppMmNfaGlkX2FjcGkgICAgICAgICAg
IDEyMjg4ICAwCnZpZGVvICAgICAgICAgICAgICAgICAgNzc4MjQgIDMgaWRlYXBhZF9sYXB0b3As
eGUsaTkxNQppbnRlbF9pc2hfaXBjICAgICAgICAgIDMyNzY4ICAwCnRodW5kZXJib2x0ICAgICAg
ICAgICA1MjgzODQgIDEgdHlwZWMKaTJjX2hpZCAgICAgICAgICAgICAgICA0MDk2MCAgMSBpMmNf
aGlkX2FjcGkKcnRzeF9wY2kgICAgICAgICAgICAgIDE0MzM2MCAgMSBydHN4X3BjaV9zZG1tYwpp
bnRlbF9scHNzX3BjaSAgICAgICAgIDI4NjcyICAwCm52bWVfa2V5cmluZyAgICAgICAgICAgMjA0
ODAgIDEgbnZtZV9jb3JlCmludGVsX2xwc3MgICAgICAgICAgICAgMTIyODggIDEgaW50ZWxfbHBz
c19wY2kKaW50ZWxfaXNodHAgICAgICAgICAgICA2OTYzMiAgMiBpbnRlbF9pc2h0cF9oaWQsaW50
ZWxfaXNoX2lwYwpudm1lX2F1dGggICAgICAgICAgICAgIDI4NjcyICAxIG52bWVfY29yZQppZG1h
NjQgICAgICAgICAgICAgICAgIDIwNDgwICAwCmhrZGYgICAgICAgICAgICAgICAgICAgMTIyODgg
IDEgbnZtZV9hdXRoCmhpZCAgICAgICAgICAgICAgICAgICAyNzAzMzYgIDggaTJjX2hpZCxoaWRf
ZWxlY29tLHVzYmhpZCxoaWRfbXVsdGl0b3VjaCxoaWRfc2Vuc29yX2h1YixzbmRfc29jX3NkY2Es
aW50ZWxfaXNodHBfaGlkLGhpZF9nZW5lcmljCnBpbmN0cmxfbWV0ZW9ybGFrZSAgICAgMjg2NzIg
IDEKd21pICAgICAgICAgICAgICAgICAgICAyNDU3NiAgMyB2aWRlbyx3bWlfYm1vZixpZGVhcGFk
X2xhcHRvcAo=

--_005_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_
Content-Type: text/plain; name="lspci.txt"
Content-Description: lspci.txt
Content-Disposition: attachment; filename="lspci.txt"; size=1032;
	creation-date="Thu, 13 Nov 2025 12:26:51 GMT";
	modification-date="Thu, 13 Nov 2025 12:27:28 GMT"
Content-Transfer-Encoding: base64

MDA6MDIuMCBWR0EgY29tcGF0aWJsZSBjb250cm9sbGVyIFswMzAwXTogSW50ZWwgQ29ycG9yYXRp
b24gTWV0ZW9yIExha2UtUCBbSW50ZWwgQXJjIEdyYXBoaWNzXSBbODA4Njo3ZDU1XSAocmV2IDA4
KSAocHJvZy1pZiAwMCBbVkdBIGNvbnRyb2xsZXJdKQoJU3Vic3lzdGVtOiBMZW5vdm8gTWV0ZW9y
IExha2UtUCBbSW50ZWwgQXJjIEdyYXBoaWNzXSBbMTdhYTozY2M5XQoJRmxhZ3M6IGJ1cyBtYXN0
ZXIsIGZhc3QgZGV2c2VsLCBsYXRlbmN5IDAsIElSUSAyMDIsIElPTU1VIGdyb3VwIDAKCU1lbW9y
eSBhdCA0MDhjMDAwMDAwICg2NC1iaXQsIHByZWZldGNoYWJsZSkgW3NpemU9MTZNXQoJTWVtb3J5
IGF0IDQwMDAwMDAwMDAgKDY0LWJpdCwgcHJlZmV0Y2hhYmxlKSBbc2l6ZT0yNTZNXQoJRXhwYW5z
aW9uIFJPTSBhdCAwMDBjMDAwMCBbdmlydHVhbF0gW2Rpc2FibGVkXSBbc2l6ZT0xMjhLXQoJQ2Fw
YWJpbGl0aWVzOiBbNDBdIFZlbmRvciBTcGVjaWZpYyBJbmZvcm1hdGlvbjogTGVuPTBjIDw/PgoJ
Q2FwYWJpbGl0aWVzOiBbNzBdIEV4cHJlc3MgUm9vdCBDb21wbGV4IEludGVncmF0ZWQgRW5kcG9p
bnQsIE1TSSAwMAoJQ2FwYWJpbGl0aWVzOiBbYWNdIE1TSTogRW5hYmxlKyBDb3VudD0xLzEgTWFz
a2FibGUrIDY0Yml0KwoJQ2FwYWJpbGl0aWVzOiBbZDBdIFBvd2VyIE1hbmFnZW1lbnQgdmVyc2lv
biAzCglDYXBhYmlsaXRpZXM6IFsxMDBdIE51bGwKCUNhcGFiaWxpdGllczogWzExMF0gUHJvY2Vz
cyBBZGRyZXNzIFNwYWNlIElEIChQQVNJRCkKCUNhcGFiaWxpdGllczogWzIwMF0gQWRkcmVzcyBU
cmFuc2xhdGlvbiBTZXJ2aWNlIChBVFMpCglDYXBhYmlsaXRpZXM6IFs0MjBdIFBoeXNpY2FsIFJl
c2l6YWJsZSBCQVIKCUNhcGFiaWxpdGllczogWzMyMF0gU2luZ2xlIFJvb3QgSS9PIFZpcnR1YWxp
emF0aW9uIChTUi1JT1YpCglDYXBhYmlsaXRpZXM6IFs0MDBdIExhdGVuY3kgVG9sZXJhbmNlIFJl
cG9ydGluZwoJS2VybmVsIGRyaXZlciBpbiB1c2U6IGk5MTUKCUtlcm5lbCBtb2R1bGVzOiBpOTE1
LCB4ZQoK

--_005_PH0PR03MB6299690EA881490196BF9A4FE9CDAPH0PR03MB6299namp_--
