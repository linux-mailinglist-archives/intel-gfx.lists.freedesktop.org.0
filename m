Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F048671C6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 11:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D5E10F03F;
	Mon, 26 Feb 2024 10:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar-org.20230601.gappssmtp.com header.i=@fooishbar-org.20230601.gappssmtp.com header.b="FbiRuXCB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601A710F03F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 10:46:56 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id
 d75a77b69052e-42a0ba5098bso17789321cf.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 02:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1708944415; x=1709549215;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=u7I7d5osDP5GRj6EQPpg79dCaRhTSCM5MDa3lXjopQg=;
 b=FbiRuXCBzcC8KUVUifgNmqx0DQEZmxWXrnMzBU4s8xPRFHH48LGHn/KkjFDLPOU05e
 6fh/YQpewhpqPoanEsxSivnq7ShpoIF4V0nFdG90XebRHvMGffrHqVvxqZLROCMC6WbS
 El1HxoRBgBNoFMnRmQStmlw8oUGUB9z4x3jYqC7NIJNX59iL1rbYpSA6R2+3PVC9lqEL
 zfRi8nPCUK9WdWljsUDx4G47Ci9LggTXmuGjS+aUvmNdfzzXK2o919a6ebbVZc5yOKxu
 yENVMqgb1RlethnWKUXuOpLRpH8HexVkye3pyw5LOvexDb/20nl3PCcUweqYeN53ET7n
 vt/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708944415; x=1709549215;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=u7I7d5osDP5GRj6EQPpg79dCaRhTSCM5MDa3lXjopQg=;
 b=hYH25dplGYfXDUJEDxWYpts7f9hrQM100I+c95MTS+hDW2Yv2iV8W5/YfryEIMjNw6
 nNL78m0/A1iDXYDto2d+O18x0HGhDzrFbI9LGHFnptGkfq6kgb4Icb2k1MqM1g4ma7XS
 CpXD4JdVNrtfgeh57QkJaA5GavWDTN3TTvYAXk7RFhKtfqXnhtSFKhLGHbZTIudd+ERq
 D/egc7i1gNghpqWBR76GknwtZp7m+3zIKjzMEy3HJoR5iqjtQPqUNAIaXDp4iSaT9PPD
 tvF6PyjyEy+0T9RfvSJ9t67BTS/UY4eOTZokXfHCP9hIc4ZLw2c9UZqJqIRz8Vfo1eAZ
 JkbA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYR5wSmWVZeZpPdPKfkddGB42YZtTEx1bue2BGS5r1TNCgxWId6A1VJeeiJsMtmilCieePB30k0xVCKurbXavDEPmu/GGIBCWwmlFWKty/
X-Gm-Message-State: AOJu0Yxu0L0vw1QkEZps7DrK8EbfdrDYZG3PlwqqUVOOKJofVNCnmcoe
 VVrhFqE1vO6L4DO8ba4QDdOfMcgZwjVOTFhzOnE5On5h9Ak2h2DBrwLxmhAi/He2ZUZv9rYh8EY
 bizsh74EiH35vp5eMWupnqRE2ApKJDkHBzBkj9A==
X-Google-Smtp-Source: AGHT+IHHrY0NvHwjigWczKb4D3QxZ41Uh3arNiqZU7ZGXj68Sf2YZkd0XuRm4u5WrHl59ZQUl9GHZR37KrV+2fw7UqU=
X-Received: by 2002:ac8:7593:0:b0:42e:7094:90c0 with SMTP id
 s19-20020ac87593000000b0042e709490c0mr5387408qtq.48.1708944415043; Mon, 26
 Feb 2024 02:46:55 -0800 (PST)
MIME-Version: 1.0
References: <dbdkrwmcoqqlwftuc3olbauazc3pbamj26wa34puztowsnauoh@i3zms7ut4yuw>
In-Reply-To: <dbdkrwmcoqqlwftuc3olbauazc3pbamj26wa34puztowsnauoh@i3zms7ut4yuw>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 26 Feb 2024 10:46:43 +0000
Message-ID: <CAPj87rO4K6QS8hVn-d6N8CEi+Uibmgo6mZ5bNGz2rZDUMshvxA@mail.gmail.com>
Subject: Re: [PULL] drm-xe-next
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 26 Feb 2024 at 03:21, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> All of this should be fixed by now: dim is used for applying and pushing
> patches, which has additional checks so that doesn't happen again. Still
> pending confirmation from Daniel Stone if the git server hooks are ready
> in gitlab so we properly forbid pushes without dim, like we do with the
> git.fd.o infra.

Yeah, I did that last week.

Cheers,
Daniel
