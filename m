Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 764DBA5B854
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 06:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E4510E0EC;
	Tue, 11 Mar 2025 05:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from psionic.psi5.com (psionic.psi5.com [185.187.169.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E9710E0EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 05:22:42 +0000 (UTC)
Received: from [192.168.10.87] (unknown [39.110.247.193])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by psionic.psi5.com (Postfix) with ESMTPSA id C116C3F0DE;
 Tue, 11 Mar 2025 06:22:36 +0100 (CET)
Message-ID: <ba6b8476-728c-4f5e-9604-3d1ce9d439a1@hogyros.de>
Date: Tue, 11 Mar 2025 14:22:31 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: B580 on POWER9: Unable to handle kernel data access on read at
 0xc00a0000000003cc
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <aa90481c-8cb4-4d5b-a440-7e1930543c9d@hogyros.de>
 <Z88cz-6mNHjH8RHH@intel.com>
Content-Language: en-US
From: Simon Richter <Simon.Richter@hogyros.de>
In-Reply-To: <Z88cz-6mNHjH8RHH@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hi,

> Hi Simon, thanks for reporting this. Could you please report this to our gitlab
> issues so we ensure this doesn't get lost on this busy mailing list?

I've added it to

     https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1824

which is the same problem on aarch64.

I don't think this is a porting issue, just that the ports are more 
likely to have either something else or nothing at all at the ISA VGA 
addresses, and are thus more likely to trip up, but this would also 
affect PCs that have a different primary VGA device (BMC, onboard, 
multiple GPUs).

This seems to be some bug workaround for VGA emulation mode, so I don't 
know whether it's safe to just remove it when the card is not mapped to 
VGA ports (that would be somewhat easy to do), when the expansion ROM is 
disabled (even easier to do), or if another mechanism is needed.

> Since you are building your own kernel. Would you mind trying to reproduce
> with latest drm-tip branch from https://gitlab.freedesktop.org/drm/tip

Same behaviour, added the log to the bug as well.

    Simon
