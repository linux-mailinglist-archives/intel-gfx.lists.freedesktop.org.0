Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7687F15ABF6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 16:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE3B6E08C;
	Wed, 12 Feb 2020 15:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 12 Feb 2020 15:27:54 UTC
Received: from UCOL19PA37.eemsg.mail.mil (UCOL19PA37.eemsg.mail.mil
 [214.24.24.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CF189FAD
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 15:27:54 +0000 (UTC)
X-EEMSG-check-017: 75842985|UCOL19PA37_ESA_OUT04.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,433,1574121600"; d="scan'208";a="75842985"
Received: from emsm-gh1-uea10.ncsc.mil ([214.29.60.2])
 by UCOL19PA37.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 12 Feb 2020 15:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho.nsa.gov; i=@tycho.nsa.gov; q=dns/txt;
 s=tycho.nsa.gov; t=1581520843; x=1613056843;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=M+2ZwZzCGkluLLIFXEvzEIZch7Gzgw+4hXn4mhq1rLA=;
 b=bApQPE+50ETzL01bcLTzkRULKhgIoYYRy3qwYR2vFwvPUNDkQml4VC/U
 1OmPRMReiZNKpHvWMY+jPnmzY0FOF1Tg6MVlPmcWCGhOMp5y6Cm/mgsEt
 bEUXk7Xw6vP/NCaPwnKGDahohEl+IE7dILRdD/UKhkBaUc8fofhfydBO0
 FyEjyEzG0rWI1PmXySaALBFAu5XrdAg3ViddL3AmfENSXI8O+uFqpGd8F
 GyM84kAXwbR+i8dBuWhENfvx36bPWH7ZS5rQQWFCu7o6xu+NWMWqVzgZm
 d/5EYXTaCpN3t0G2ObpQo1mmv97Z6kK8uxSN8lLG1nFu5ftfiVDUtYYTQ Q==;
X-IronPort-AV: E=Sophos;i="5.70,433,1574121600"; d="scan'208";a="32974141"
IronPort-PHdr: =?us-ascii?q?9a23=3ADrzsiRN+OeIPapsRSfUl6mtUPXoX/o7sNwtQ0K?=
 =?us-ascii?q?IMzox0Kf37r8bcNUDSrc9gkEXOFd2Cra4d16yI7uu/BCQp2tWojjMrSNR0TR?=
 =?us-ascii?q?gLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ?=
 =?us-ascii?q?/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vIxi6twTcu8kZjYZgKqs61w?=
 =?us-ascii?q?fErGZPd+lKymxkIk6ekQzh7cmq5p5j9CpQu/Ml98FeVKjxYro1Q79FAjk4Km?=
 =?us-ascii?q?45/MLkuwXNQguJ/XscT34ZkgFUDAjf7RH1RYn+vy3nvedgwiaaPMn2TbcpWT?=
 =?us-ascii?q?S+6qpgVRHlhDsbOzM/7WrakdJ7gr5Frx29phx/24/Ub5+TNPpiZaPWYNcWSX?=
 =?us-ascii?q?NcUspNSyBNB4WxYIUVD+oFIO1WsY/zqVUTphe6HAWhCufixjpOi3Tr36M1zv?=
 =?us-ascii?q?4hHBnb0gI+EdIAsHfaotv7O6gdU++60KbGwC7fb/5Vwzrx9JTEfx4jrPyKQL?=
 =?us-ascii?q?l+cdDRyU4qFw7dk1uQtZLqPyuV1usTtWiQ8vduVee1hG4jrwF+vDiuzdorh4?=
 =?us-ascii?q?nSm40V0UvJ9Tl5wYkpJd24T1R3Ydi/EJRKrS2aOIx2Qt07TmxupS00yaUGtI?=
 =?us-ascii?q?amcCUFx5kr3R7SZ+Gdf4SW7R/vSvydLSp+iXl4YrywnQyy/lKlyuDkU8m010?=
 =?us-ascii?q?tFoTRdn9nXs3ANywTT6s+aSvth5kuh2SiA1wTU6uxcPUA7j7DbK588wr4rjJ?=
 =?us-ascii?q?YTsELDHiHxmEXtkqCZal8o+vSo6uv7YrXmoYWQN4lohQHlLqsigMm/AeU8Mg?=
 =?us-ascii?q?QWXmib//qz1KH78EHkT7hHgec6n6nEvJzAO8gWqbC1DxVI3oo77hawFTam0N?=
 =?us-ascii?q?AWnXkdK1JFfQqKj5P0NFHVO/34Efe+jEiskDds3fzGOKbhDY/XInjMl7fhY6?=
 =?us-ascii?q?5x61RAxwor0dBf+5VUB6kbL/L3REDwu8LXDx8jPwOv3uboFc9y1oUdWWKIHK?=
 =?us-ascii?q?+UK6fSsV6O5uIyLOiAfo4VuDDhK/c74/7il2M2mVgYfaOxx5sYdGi4Huh6I0?=
 =?us-ascii?q?WeeXfjmNMBHnkFvwUgTezmkkaCUSJJaHaoWKI8+DY7CIO6DYfEWICgm7OB3C?=
 =?us-ascii?q?KhEZ1XYmBKEEyDEXDtd4+cQfcDdDqSItN9kjwDTbWhU5Eu1Q2wuw/gyrtqNe?=
 =?us-ascii?q?vU+isWtZL5ztd6+vPcmgsv+jBuCMSdyW6NRXlunmwUXz82wLx/oUtlx1iZza?=
 =?us-ascii?q?d4huJXGMdQ5/xXSAc6M4DTz+hgB9D1QALBcc+DSEy6TdW+HTExUtUxzscLY0?=
 =?us-ascii?q?Z8HdWigRfD0jGwA7ALirOLBIY78r7G03ftIMZ9zm7M1LM9gFk+XstPKWqmi7?=
 =?us-ascii?q?Z99wfJAY7Jkl+Vl6CrdaQfwS7N8H2MwHGKvEFZVg5wTKrEUWoeZkvQsdT2+E?=
 =?us-ascii?q?fCQ6WyBrQgNwtL0dSCJbdSat31kVVGQ+/uONbZY2K2nWe/Hw2IyqmIbIXwe2?=
 =?us-ascii?q?UdwCTdCE4anAAV5nuGMQk+BiG8o2PRFjBuFFTvY1/y/ul6sn+0Ukg0zwSSZU?=
 =?us-ascii?q?17y7W14gIVheCbS/4LxLIEvzouqy91HFay2NLaEcSApwt/fKVdet494VFH1X?=
 =?us-ascii?q?7HuAx5JJCvM6dihlsGeQRto0zuzwl3CplHkcUyt3wl0gxyKaKD3VNCaTyYx5?=
 =?us-ascii?q?bwNaPTKmXo4B+vcbTZ2kre0NaX/KcP5+40q1L5vAGmDkAi6Wlo08FJ03uA4Z?=
 =?us-ascii?q?XHFBISXojsUkYz6hh6vKrXYjIn6IPRznJjK7O4sjjY29ImHOEl0Aqvf89DMK?=
 =?us-ascii?q?OYEw//C8gaB9CwJ+ExhVepahYEM/5I9K4xJcymceGK2K+2M+p6hj2mkHxN4J?=
 =?us-ascii?q?ph3UKU6yp8VunI0o4Hw/6C2wuISSz8gE26vcDwhYBEeTYSHm+7ySf6BI9cfa?=
 =?us-ascii?q?1ycpwNCWe1PcK3wM1+iIT3W35E8l6sGUkG2NSpeRqTd1zxxxFf1UMSoXa/gy?=
 =?us-ascii?q?u30yR0ky01rqqYxCHO2PrtdAAIOmFVX2RijU3jIYywj9EaWkikdRQmlByg5U?=
 =?us-ascii?q?zi3ahUuLx/L3XPQUdPZyX2LWRiUqyqtrqYYs5P84glsSNNX+S5f1+aS6Txox?=
 =?us-ascii?q?wA0yPsB2Fe3iw0dym2upXlmBx3kGycLHd3rHrdY81/2AnQ68bASv5W2DoLXz?=
 =?us-ascii?q?N3iSPSBlSmI9ap+tCUnY/Zsu+iT2KhSoFTcS7zwIOFriS7/25qDQeln/Cuht?=
 =?us-ascii?q?3nFRI10Snm2NRxTyrIthP8bpP32KS9NOJtZlNoC0Pk68pmBoF+lZM9hIsK2X?=
 =?us-ascii?q?gbmpqY5nkHnnnpMdVdx63+aGABRTkRw97a+ALlwlFsLmqVx4LlUXWQ2tFuZ8?=
 =?us-ascii?q?KmYm4N2SIy8dpKCKGK47xAhyd1pUC4rQ3Ja/hngjgd0ecu6GIdg+wRugotyS?=
 =?us-ascii?q?GdAqsIEkRDJyzjiQmH79Cko6VLfmqgbb+w1E9ml9C7EL6Cuh1cWGr+epo6By?=
 =?us-ascii?q?Bw7d5yMFbN0H3194Hld8PcbdMVth2IjRjAi/JZJ442lvoPnSBnI37yvWU5y+?=
 =?us-ascii?q?4nihxjxY+1vJKdJGVr/aK2GBhYOyb6Z8MU/THtgqJekdiM04+zGZVhHy0BXI?=
 =?us-ascii?q?H0QvKwDDISqfPnOh6PED04t3eUAqDQHRSf6Eh4tH/ACZOrOGuSJHYDzNVuXg?=
 =?us-ascii?q?WSJEtagAoMRjU1goY5Fhy2xMzmaEp2/DQR6UD3qxRWzOJnKgfwUn3FqAezaj?=
 =?us-ascii?q?c0SYOfLBpV7gFD4UfYKsie7uN1HyFF8Zyttg2NKmqHZwtWCWEFQFCLB1fmPr?=
 =?us-ascii?q?O2/9nP7/CYBvaiL/vJebiOr/ZRV/KIxZOvz4tm+TmMO96MPnZ8Ff073FRMXX?=
 =?us-ascii?q?RjF8TegTUPRDQdlzjRYM6DuBe85ip3o9ik8PTsXgLv6o+PC7pPMdp04RC5m7?=
 =?us-ascii?q?mDN++WhCZ2MjtY2IgDyWXUx7gY2V4YkztueCW1EbQcqS7NS7rdmqtWDx4cbS?=
 =?us-ascii?q?N8Ks9I47gz3gVXPc7UkNX12aN2j/ErEVdFUV3hmseyaMwLJWG9KE3IBEKROL?=
 =?us-ascii?q?uaIj3Lxtn9YbmgRr1IkOVUqxqwtC6HE0/sOjSCmCLkVxSuMeFKkSGbIAZeuI?=
 =?us-ascii?q?a7chZsBmnvVs/pZQOjOt9tkTI22aE0hm/NNWMENTh8ckVNrqCf7C9BgfVwBX?=
 =?us-ascii?q?ZB7nx7IumAgCuZ8ebYJYgMsfdxASR7ifha4HIkxLtR9i1EQ+Z1mCTKpN50v1?=
 =?us-ascii?q?6mivWPyiZgUBdWrjZLhYSLvVhtOKnA7ZlPR2rL/A8X7WWRFxQLp8JpCtjou6?=
 =?us-ascii?q?9N19jPkLz8JSxc89Lb48QcHdLYKMGZP3o7NxrmBjrUABECTT6xOmHVn1Zdn+?=
 =?us-ascii?q?2K9n2Jspg6rYDhmIEQRb9fVVw1EO4aC0t+EdwcL5d4QCkknaSYjMEW/3q+qg?=
 =?us-ascii?q?feRMFAspDATPKSDu3lKCyFgrlcexsI3bT4IJwSNo39x0xtdF16kJ3FG0reUt?=
 =?us-ascii?q?FAuSlhbg4voEVR63hyVGMz21j7ZQyz/XAcC+W0nh0qigt5eeQh7jDs4004Jl?=
 =?us-ascii?q?DSvis/jFExmcn5gTCWaDPxKKawXYdLCyv7rkQxKon0Qxx0bQ2pgUNpLynER7?=
 =?us-ascii?q?1PgLt6b2xrixHTuYFJGfFCSa1IehgQxeuYZ/8wy1RTtj2nxVNb5evCEZZikA?=
 =?us-ascii?q?oqcZixr3NPwwJjdMI6KbXNK6VX0FhdnaaOvi6z1uAt2w8SPUEN8WKWeCESo0?=
 =?us-ascii?q?MILaMqJy2y/uxj8QaCgSdMeHAQV/o2pfJn7kc9O+WGzyL93L9PM1q+N/aaL6?=
 =?us-ascii?q?+AuGjPi9SIQlUu2UMMjERF+bl20dw/c0qPTUwvzb2RFxoTNcXYNA5acdBd+2?=
 =?us-ascii?q?XJcSaJq+XNzop/P5+hGeDwUe+OqKEUj1qgHAYoGYQM88sAEoC00E7GN8fnIq?=
 =?us-ascii?q?cJyQg25Av1PlWFF+9EeAyEkDgZucGz1px30pdHJjEbH2p9NT+75rHNpg8lmP?=
 =?us-ascii?q?CDRss5Ym8GXosYMXI7QMq6mzZDv3RHAjm30+YZxxab4z/4pyTQFyX8YsFnZP?=
 =?us-ascii?q?eVfhNsFMq29S8k86i4k1LX9IvRJ33iP9R4ptDP8f8ap4qAC/5MSbl9rlvcm4?=
 =?us-ascii?q?5DSnOwVm7AC8K6KILoa4ktcdz7EHK6Xka5iz0rU8eidOqqe4GMjBHlVM5+rY?=
 =?us-ascii?q?WS2jMkK4fpHzUTCxph4ese6Kt6ZgodS546ZwP48QU4K6G7Zgyf14P9bXyqLG?=
 =?us-ascii?q?5tU/RHzei8L4dSxi4oY/7ynGAsVbkm3uK39ggLX5hMgRbAk6XwL7JCWDT+Ty?=
 =?us-ascii?q?QOMz7EojA0wi04bbc/?=
X-IPAS-Result: =?us-ascii?q?A2DJAwCLFkRe/wHyM5BlHQEBAQkBEQUFAYF7gX2BbAEgE?=
 =?us-ascii?q?iqEFIkDhmQBAQEBAQEGgRIliXCRSQkBAQEBAQEBAQE3AQGEQAKCbTgTAhABA?=
 =?us-ascii?q?QEEAQEBAQEFAwEBbIVDgjspAYMCAQUdBgQLAQVBEAkCGAICJgICVwYNBgIBA?=
 =?us-ascii?q?YJjP4JXJY99m3l/M4VKg0iBPoEOKow+eYEHgREnDAOCXT6HW4JeBI1Ngk+Hb?=
 =?us-ascii?q?3yWb4JEgk6KRok1BhyCSIgSkDstq3QigVgrCAIYCCEPgydQGA2OKRcVjiwjA?=
 =?us-ascii?q?zACkV8BAQ?=
Received: from tarius.tycho.ncsc.mil (HELO tarius.infosec.tycho.ncsc.mil)
 ([144.51.242.1])
 by EMSM-GH1-UEA10.NCSC.MIL with ESMTP; 12 Feb 2020 15:20:42 +0000
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
 by tarius.infosec.tycho.ncsc.mil (8.14.7/8.14.4) with ESMTP id
 01CFJLvn070940; Wed, 12 Feb 2020 10:19:23 -0500
To: Alexey Budankov <alexey.budankov@linux.intel.com>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
 <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
 <dd6a1382-7b2f-a6e6-a1ac-009566d7f556@tycho.nsa.gov>
 <8141da2e-49cf-c02d-69e9-8a7cbdc91431@linux.intel.com>
From: Stephen Smalley <sds@tycho.nsa.gov>
Message-ID: <7c367905-e8c9-7665-d923-c850e05c757a@tycho.nsa.gov>
Date: Wed, 12 Feb 2020 10:21:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <8141da2e-49cf-c02d-69e9-8a7cbdc91431@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 01/10] capabilities: introduce
 CAP_PERFMON to kernel and user space
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMi8xMi8yMCA4OjUzIEFNLCBBbGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4gT24gMTIuMDIuMjAy
MCAxNjozMiwgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+PiBPbiAyLzEyLzIwIDM6NTMgQU0sIEFs
ZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+IEhpIFN0ZXBoZW4sCj4+Pgo+Pj4gT24gMjIuMDEuMjAy
MCAxNzowNywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+IE9uIDEvMjIvMjAgNTo0NSBBTSwg
QWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBPbiAyMS4wMS4yMDIwIDIxOjI3LCBB
bGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4gT24gMjEuMDEuMjAyMCAyMDo1NSwg
QWxleGVpIFN0YXJvdm9pdG92IHdyb3RlOgo+Pj4+Pj4+IE9uIFR1ZSwgSmFuIDIxLCAyMDIwIGF0
IDk6MzEgQU0gQWxleGV5IEJ1ZGFua292Cj4+Pj4+Pj4gPGFsZXhleS5idWRhbmtvdkBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiAyMS4wMS4yMDIw
IDE3OjQzLCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+Pj4+Pj4+PiBPbiAxLzIwLzIwIDY6MjMg
QU0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+Pj4+Pj4+Pgo+Pj4gPFNOSVA+Cj4+Pj4+Pj4+
Pj4gSW50cm9kdWNlIENBUF9QRVJGTU9OIGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5
c3RlbSBwZXJmb3JtYW5jZQo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFdoeSBfbm9hdWRpdCgpP8KgIE5v
cm1hbGx5IG9ubHkgdXNlZCB3aGVuIGEgcGVybWlzc2lvbiBmYWlsdXJlIGlzIG5vbi1mYXRhbCB0
byB0aGUgb3BlcmF0aW9uLsKgIE90aGVyd2lzZSwgd2Ugd2FudCB0aGUgYXVkaXQgbWVzc2FnZS4K
Pj4+Pj4KPj4+Pj4gU28gZmFyIHNvIGdvb2QsIEkgc3VnZ2VzdCB1c2luZyB0aGUgc2ltcGxlc3Qg
dmVyc2lvbiBmb3IgdjY6Cj4+Pj4+Cj4+Pj4+IHN0YXRpYyBpbmxpbmUgYm9vbCBwZXJmbW9uX2Nh
cGFibGUodm9pZCkKPj4+Pj4gewo+Pj4+PiAgwqDCoMKgwqDCoHJldHVybiBjYXBhYmxlKENBUF9Q
RVJGTU9OKSB8fCBjYXBhYmxlKENBUF9TWVNfQURNSU4pOwo+Pj4+PiB9Cj4+Pj4+Cj4+Pj4+IEl0
IGtlZXBzIHRoZSBpbXBsZW1lbnRhdGlvbiBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1wbGVt
ZW50YXRpb24gaXMgbW9yZQo+Pj4+PiBwZXJmb3JtYW50IGluIHRoZSBzZW5zZSBvZiBjYWxsaW5n
IHRoZSBBUEkgLSBvbmUgY2FwYWJsZSgpIGNhbGwgZm9yIENBUF9QRVJGTU9OCj4+Pj4+IHByaXZp
bGVnZWQgcHJvY2Vzcy4KPj4+Pj4KPj4+Pj4gWWVzLCBpdCBibG9hdHMgYXVkaXQgbG9nIGZvciBD
QVBfU1lTX0FETUlOIHByaXZpbGVnZWQgYW5kIHVucHJpdmlsZWdlZCBwcm9jZXNzZXMsCj4+Pj4+
IGJ1dCB0aGlzIGJsb2F0aW5nIGFsc28gYWR2ZXJ0aXNlcyBhbmQgbGV2ZXJhZ2VzIHVzaW5nIG1v
cmUgc2VjdXJlIENBUF9QRVJGTU9OCj4+Pj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2
ZW50X29wZW4gc3lzdGVtIGNhbGwuCj4+Pj4KPj4+PiBJIGNhbiBsaXZlIHdpdGggdGhhdC7CoCBX
ZSBqdXN0IG5lZWQgdG8gZG9jdW1lbnQgdGhhdCB3aGVuIHlvdSBzZWUgYm90aCBhIENBUF9QRVJG
TU9OIGFuZCBhIENBUF9TWVNfQURNSU4gYXVkaXQgbWVzc2FnZSBmb3IgYSBwcm9jZXNzLCB0cnkg
b25seSBhbGxvd2luZyBDQVBfUEVSRk1PTiBmaXJzdCBhbmQgc2VlIGlmIHRoYXQgcmVzb2x2ZXMg
dGhlIGlzc3VlLsKgIFdlIGhhdmUgYSBzaW1pbGFyIGlzc3VlIHdpdGggQ0FQX0RBQ19SRUFEX1NF
QVJDSCB2ZXJzdXMgQ0FQX0RBQ19PVkVSUklERS4KPj4+Cj4+PiBJIGFtIHRyeWluZyB0byByZXBy
b2R1Y2UgdGhpcyBkb3VibGUgbG9nZ2luZyB3aXRoIENBUF9QRVJGTU9OLgo+Pj4gSSBhbSB1c2lu
ZyB0aGUgcmVmcG9saWN5IHZlcnNpb24gd2l0aCBlbmFibGVkIHBlcmZfZXZlbnQgdGNsYXNzIFsx
XSwgaW4gcGVybWlzc2l2ZSBtb2RlLgo+Pj4gV2hlbiBydW5uaW5nIHBlcmYgc3RhdCAtYSBJIGFt
IG9ic2VydmluZyB0aGlzIEFWQyBhdWRpdCBtZXNzYWdlczoKPj4+Cj4+PiB0eXBlPUFWQyBtc2c9
YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzrCoCBkZW5pZWTCoCB7IG9wZW4gfSBmb3LC
oCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVt
ZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNsYXNzPXBlcmZfZXZl
bnQgcGVybWlzc2l2ZT0xCj4+PiB0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5
MSk6IGF2YzrCoCBkZW5pZWTCoCB7IGtlcm5lbCB9IGZvcsKgIHBpZD0yNzc5IGNvbW09InBlcmYi
IHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNvbnRleHQ9dXNlcl91OnVz
ZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJtaXNzaXZlPTEKPj4+IHR5
cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsg
Y3B1IH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1
c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjbGFz
cz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2
OTUuNjY2Ojg2OTIpOiBhdmM6wqAgZGVuaWVkwqAgeyB3cml0ZSB9IGZvcsKgIHBpZD0yNzc5IGNv
bW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNvbnRleHQ9
dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJtaXNzaXZl
PTEKPj4+Cj4+PiBIb3dldmVyIHRoZXJlIGlzIG5vIGNhcGFiaWxpdHkgcmVsYXRlZCBtZXNzYWdl
cyBhcm91bmQuIEkgc3VwcG9zZSBteSByZWZwb2xpY3kgc2hvdWxkCj4+PiBiZSBtb2RpZmllZCBz
b21laG93IHRvIG9ic2VydmUgY2FwYWJpbGl0eSByZWxhdGVkIEFWQ3MuCj4+Pgo+Pj4gQ291bGQg
eW91IHBsZWFzZSBjb21tZW50IG9yIGNsYXJpZnkgb24gaG93IHRvIGVuYWJsZSBjYXBzIHJlbGF0
ZWQgQVZDcyBpbiBvcmRlcgo+Pj4gdG8gdGVzdCB0aGUgY29uY2VybmVkIGxvZ2dpbmcuCj4+Cj4+
IFRoZSBuZXcgcGVyZm1vbiBwZXJtaXNzaW9uIGhhcyB0byBiZSBkZWZpbmVkIGluIHlvdXIgcG9s
aWN5OyB5b3UnbGwgaGF2ZSBhIG1lc3NhZ2UgaW4gZG1lc2cgYWJvdXQgIlBlcm1pc3Npb24gcGVy
Zm1vbiBpbiBjbGFzcyBjYXBhYmlsaXR5MiBub3QgZGVmaW5lZCBpbiBwb2xpY3kuIi7CoCBZb3Ug
Y2FuIGVpdGhlciBhZGQgaXQgdG8gdGhlIGNvbW1vbiBjYXAyIGRlZmluaXRpb24gaW4gcmVmcG9s
aWN5L3BvbGljeS9mbGFzay9hY2Nlc3NfdmVjdG9ycyBhbmQgcmVidWlsZCB5b3VyIHBvbGljeSBv
ciBleHRyYWN0IHlvdXIgYmFzZSBtb2R1bGUgYXMgQ0lMLCBhZGQgaXQgdGhlcmUsIGFuZCBpbnNl
cnQgdGhlIHVwZGF0ZWQgbW9kdWxlLgo+IAo+IFllcywgSSBhbHJlYWR5IGhhdmUgaXQgbGlrZSB0
aGlzOgo+IGNvbW1vbiBjYXAyCj4gewo+IDwtLS0tLS0+bWFjX292ZXJyaWRlPC0tPiMgdW51c2Vk
IGJ5IFNFTGludXgKPiA8LS0tLS0tPm1hY19hZG1pbgo+IDwtLS0tLS0+c3lzbG9nCj4gPC0tLS0t
LT53YWtlX2FsYXJtCj4gPC0tLS0tLT5ibG9ja19zdXNwZW5kCj4gPC0tLS0tLT5hdWRpdF9yZWFk
Cj4gPC0tLS0tLT5wZXJmbW9uCj4gfQo+IAo+IGRtZXNnIHN0b3BwZWQgcmVwb3J0aW5nIHBlcmZt
b24gYXMgbm90IGRlZmluZWQgYnV0IGF1ZGl0LmxvZyBzdGlsbCBkb2Vzbid0IHJlcG9ydCBDQVBf
UEVSRk1PTiBkZW5pYWxzLgo+IEJUVywgYXVkaXQgZXZlbiBkb2Vzbid0IHJlcG9ydCBDQVBfU1lT
X0FETUlOIGRlbmlhbHMsIGhvd2V2ZXIgcGVyZm1vbl9jYXBhYmxlKCkgZG9lcyBjaGVjayBmb3Ig
aXQuCgpTb21lIGRlbmlhbHMgbWF5IGJlIHNpbGVuY2VkIGJ5IGRvbnRhdWRpdCBydWxlczsgc2Vt
b2R1bGUgLURCIHdpbGwgc3RyaXAgCnRob3NlIGFuZCBzZW1vZHVsZSAtQiB3aWxsIHJlc3RvcmUg
dGhlbS4gIE90aGVyIHBvc3NpYmlsaXR5IGlzIHRoYXQgdGhlIApwcm9jZXNzIGRvZXNuJ3QgaGF2
ZSBDQVBfUEVSRk1PTiBpbiBpdHMgZWZmZWN0aXZlIHNldCBhbmQgdGhlcmVmb3JlIApuZXZlciBy
ZWFjaGVzIFNFTGludXggYXQgYWxsOyBkZW5pZWQgZmlyc3QgYnkgdGhlIGNhcGFiaWxpdHkgbW9k
dWxlLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
